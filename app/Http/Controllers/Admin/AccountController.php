<?php

namespace App\Http\Controllers\Admin;

use Exception;
use Throwable;
use App\Models\Team;
use App\Models\Debit;
use App\Models\Credit;
use App\Models\Loaner;
use App\Models\Balance;
use App\Models\Investor;
use App\Models\LoanPaid;
use App\Models\Merchant;
use App\Models\Reseller;
use App\Models\Supplier;
use App\Models\PrintHouse;
use Illuminate\Support\Str;
use App\Services\SmsService;
use Illuminate\Http\Request;
use App\Exports\DebitExport;
use App\Models\BillStatement;
use App\Exports\CreditExport;
use App\Models\EmployeeSalary;
use App\Models\AccountPurpose;
use App\Models\SupplierPayment;
use App\Services\HelperService;
use App\Models\InvestmentReturn;
use App\Models\MerchantCashbook;
use App\Models\ResellerCashbook;
use App\Models\BillPaidStatement;
use App\Models\PrintHousePayment;
use App\Models\InvestorProfitPaid;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\MerchantPaymentTransaction;
use App\Models\ResellerPaymentTransaction;

class AccountController extends Controller
{

    public function __construct()
    {
        $this->middleware('admin');
    }




    public function get_credit(Request $request)
    {


        $paginate = $request->item ?? 20;
        if ($request->status == 'all') {
            $credits = Credit::orderBy('id', 'desc')->with(['admin:id,name', 'balance'])->paginate($paginate);
            return response()->json($credits);
        }

        if ($request->status == 'search') {
            $credits = Credit::where('purpose', 'like', '%' . $request->search . '%')
                ->orWhere('comment', 'like', '%' . $request->search . '%')
                ->orWhere('amount', 'like', '%' . $request->search . '%')
                ->orWhere('date', 'like', '%' . $request->search . '%')
                ->orderBy('id', 'desc')->with(['admin:id,name', 'balance'])
                ->paginate($paginate);
            return response()->json($credits);
        }
        if ($request->status == 'filter') {

            if (!empty($request->start_date) && !empty($request->end_date) && !empty($request->credit_in)) {

                $credits = Credit::whereDate('date', '>=', $request->start_date)
                    ->whereDate('date', '<=', $request->end_date)->where('credit_in', $request->credit_in)
                    ->orderBy('id', 'desc')->with(['admin:id,name', 'balance'])->paginate($paginate);
            } else if (!empty($request->start_date) && !empty($request->end_date) && empty($request->credit_in)) {

                $credits = Credit::whereDate('date', '>=', $request->start_date)
                    ->whereDate('date', '<=', $request->end_date)
                    ->orderBy('id', 'desc')->with(['admin:id,name', 'balance'])->paginate($paginate);
            } else if (!empty($request->credit_in)) {

                $credits = Credit::where('credit_in', $request->credit_in)
                    ->orderBy('id', 'desc')->with(['admin:id,name', 'balance'])->paginate($paginate);
            }

            return response()->json($credits);
        }
    }





    public function store_credit(Request $request)
    {
        $data = $request->validate([
            'date' => 'required|before:tomorrow',
            'purpose' => 'required',
            'amount' => 'required|numeric',
            'bill_statement_id' => 'nullable',
            'credit_in' => 'required'
        ]);
        DB::beginTransaction();
        try {
            $credit = new Credit();
            $credit->purpose = $request->purpose;
            $credit->amount = $request->amount;
            $credit->comment = $request->comment ?? null;
            $credit->date = $request->date;
            $credit->credit_in = $request->credit_in;
            $credit->insert_admin_id = session()->get('admin')['id'];
            $credit->save();
            if (!empty($request->bill_statement_id)) {
                $bill = BillStatement::where('id', $request->bill_statement_id)->first();
                $bill_paid = new BillPaidStatement();
                $bill_paid->bill_statement_id = $bill->id;
                $bill_paid->amount =  $credit->amount;
                $bill_paid->date = $credit->date;
                $bill_paid->comment = $credit->comment;
                $bill_paid->paid_by = $credit->credit_in;
                $bill_paid->save();
                //credit update
                $credit->comment = $credit->comment . '(' . $bill->name . ')';
                $credit->save();
            }
            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => "credit successfully created",
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
        }
    }


    public function edit_credit($id)
    {

        $credit = Credit::findOrFail($id);
        return response()->json([
            'status' => 'SUCCESS',
            'credit' => $credit,
        ]);
    }


    public function update_credit(Request $request, $id)
    {

        $data = $request->validate([
            'date' => 'required|before:tomorrow',
            'purpose' => 'required',
            'amount' => 'required',
        ]);

        $credit = Credit::findOrFail($id);
        $credit->purpose = $request->purpose;
        $credit->amount = $request->amount;
        $credit->comment = $request->comment ?? null;
        $credit->date = $request->date;
        $credit->save();
        return response()->json([
            'status' => 'SUCCESS',
            'message' => "credit was successfully updated",
        ]);
    }


    public function destroy_credit(Request $request, $id)
    {

        $credit = Credit::findOrFail($id);
        if ($credit->delete()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => "credit was successfully deleted",
            ]);
        }
    }





    public function get_debit(Request $request)
    {
        $paginate = $request->item ?? 20;

        if (!empty($request->purpose)) {
            $debits = Debit::where('purpose', $request->purpose)
                ->orderBy('id', 'desc')->with(['purpose', 'admin:id,name', 'balance'])
                ->paginate($paginate);
            return response()->json($debits);
        }


        if ($request->status == 'all') {
            $debits = Debit::orderBy('id', 'desc')
                ->with(['purpose', 'admin:id,name', 'balance'])->paginate($paginate);
            return response()->json($debits);
        }
        if ($request->status == 'search') {
            $debits = Debit::where('purpose', 'like', '%' . $request->search . '%')
                ->orWhere('comment', 'like', '%' . $request->search . '%')
                ->orWhere('amount', 'like', '%' . $request->search . '%')
                ->orWhere('date', 'like', '%' . $request->search . '%')
                ->orderBy('id', 'desc')->with(['purpose', 'admin:id,name', 'balance'])
                ->paginate($paginate);
            return response()->json($debits);
        }
        if ($request->status == 'filter') {
            if (!empty($request->start_date) && !empty($request->end_date) && empty($request->debit_from)) {
                $debits = Debit::whereDate('date', '>=', $request->start_date)
                    ->whereDate('date', '<=', $request->end_date)
                    ->orderBy('id', 'desc')->with(['purpose', 'admin:id,name', 'balance'])
                    ->paginate($paginate);
            } else if (!empty($request->start_date) && !empty($request->end_date) && !empty($request->debit_from)) {
                $debits = Debit::whereDate('date', '>=', $request->start_date)
                    ->whereDate('date', '<=', $request->end_date)->where('debit_from', $request->debit_from)
                    ->orderBy('id', 'desc')->with(['purpose', 'admin:id,name', 'balance'])
                    ->paginate($paginate);
            } else if (empty($request->start_date) && empty($request->end_date) && !empty($request->debit_from)) {

                $debits = Debit::where('debit_from', $request->debit_from)->orderBy('id', 'desc')->with(['purpose', 'admin:id,name', 'balance'])->paginate($paginate);
            }
            return response()->json($debits);
        }
    }




    public function store_debit(Request $request)
    {
        $data = $request->validate([
            'date' => 'required|before:tomorrow',
            'purpose' => 'required',
            'amount' => 'required',
            'debit_from' => 'required',

        ]);
        DB::beginTransaction();
        try {

            $purpose = AccountPurpose::findOrFail($request->purpose);
            $debit = new Debit();
            $debit->purpose = $request->purpose;
            $debit->debit_from = $request->debit_from;
            $debit->amount = $request->amount;
            $debit->is_expense = $purpose->is_expense;
            $debit->comment = $request->comment ?? null;
            $debit->date = $request->date;
            $debit->insert_admin_id = session()->get('admin')['id'];
            $debit->save();
            //debit salary
            if (!empty($request->employee_id)) {
                $employee = Team::where('id', $request->employee_id)->first();
                $employee_salary = new EmployeeSalary();
                $employee_salary->employee_id = $request->employee_id;
                $employee_salary->amount = $request->amount;
                $employee_salary->comment = $debit->comment;
                $employee_salary->date = $request->date;
                $employee_salary->save();
                //update debit comment
                $debit->comment = $debit->comment . '(' . $employee->name . ')';
                $debit->save();
                (new SmsService())->sendMessageToEmployee($employee, $employee_salary->amount);
            }

            if (!empty($request->loaner_id)) {
                $loaner = Loaner::where('id', $request->loaner_id)->first();
                $loan_paid = new LoanPaid();
                $loan_paid->loaner_id = $loaner->id;
                $loan_paid->amount =  $debit->amount;
                $loan_paid->date = $debit->date;
                $loan_paid->comment = $debit->comment;
                $loan_paid->paid_by = $debit->debit_from;
                $loan_paid->save();
                $debit->comment = $debit->comment . '(' . $loaner->name . ')';
                $debit->save();
                (new SmsService())->SendMessageToLoaner($loaner, $loan_paid->amount);
            }
            //save a supplier paid amount
            if (!empty($request->supplier_id)) {
                $supplier = Supplier::where('id', $request->supplier_id)->first();
                $supplier_payment = new SupplierPayment();
                $supplier_payment->supplier_id = $request->supplier_id;
                $supplier_payment->amount = $request->amount;
                $supplier_payment->date = $request->date;
                $supplier_payment->paid_by = $debit->debit_from . '(' . $debit->comment . ')';
                $supplier_payment->save();
                //update debit comment
                $debit->comment = $debit->comment . '(' . $supplier->name . ')';
                $debit->save();
                (new SmsService())->sendMessageToSupplier($supplier, $supplier_payment->amount);
            }

            if (!empty($request->investor_id)) {
                $investor = Investor::where('id', $request->investor_id)->first();
                $investor_profit_paid = new InvestorProfitPaid();
                $investor_profit_paid->investor_id = $investor->id;
                $investor_profit_paid->amount =  $debit->amount;
                $investor_profit_paid->profit_month = $request->profit_month;
                $investor_profit_paid->date = $debit->date;
                $investor_profit_paid->comment = $debit->comment;
                $investor_profit_paid->paid_by = $debit->debit_from;
                $investor_profit_paid->save();
                //debit comment update
                $debit->comment = $debit->comment . '(' . $investor->name . ')';
                $debit->save();
                (new SmsService())->SendMessageToInvestor($investor, $investor_profit_paid->amount, $investor_profit_paid->profit_month);
            }

            //investor payment return
            if (!empty($request->investor_return_id)) {
                $investor = Investor::where('id', $request->investor_return_id)->first();
                $invest_return = new InvestmentReturn();
                $invest_return->investor_id = $investor->id;
                $invest_return->amount =  $debit->amount;
                $invest_return->date = $debit->date;
                $invest_return->comment = $debit->comment;
                $invest_return->paid_by = $debit->debit_from;
                $invest_return->save();
                $debit->comment = $debit->comment . '(' . $investor->name . ')';
                $debit->save();
            }

            if (!empty($request->print_house_id)) {
                $print_house = PrintHouse::where('id', $request->print_house_id)->first();
                $print_house_paid = new PrintHousePayment();
                $print_house_paid->print_house_id = $print_house->id;
                $print_house_paid->amount =  $debit->amount;
                $print_house_paid->date = $debit->date;
                $print_house_paid->comment = $debit->comment;
                $print_house_paid->paid_by = $debit->debit_from;
                $print_house_paid->save();
                $debit->comment = $debit->comment . '(' . $print_house->name . ')';
                $debit->save();
                (new SmsService())->SendMessageToPrintHouse($print_house, $print_house_paid->amount);
            }

            if (!empty($request->bill_statement_id)) {
                $bill = BillStatement::where('id', $request->bill_statement_id)->first();
                $bill_paid = new BillPaidStatement();
                $bill_paid->bill_statement_id = $bill->id;
                $bill_paid->amount =  $debit->amount;
                $bill_paid->date = $debit->date;
                $bill_paid->comment = $debit->comment;
                $bill_paid->paid_by = $debit->debit_from;
                $bill_paid->save();
                $debit->comment = $debit->comment . '(' . $bill->name . ')';
                $debit->save();
            }
            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => " successfully created",
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }


    public function edit_debit($id)
    {

        $debit = Debit::findOrFail($id);
        return response()->json([
            'status' => 'SUCCESS',
            'debit' => $debit,
        ]);
    }


    public function update_debit(Request $request, $id)
    {


        $data = $request->validate([
            'date' => 'required|before:tomorrow',
            'purpose' => 'required',
            'amount' => 'required',
        ]);

        $debit = Debit::findOrFail($id);
        $debit->purpose = $request->purpose;
        $debit->amount = $request->amount;
        $debit->comment = $request->comment ?? null;
        $debit->date = $request->date;
        $debit->save();
        return response()->json([
            'status' => 'SUCCESS',
            'message' => "debit was successfully updated",
        ]);
    }


    public function destroy_debit(Request $request, $id)
    {

        $debit = Debit::findOrFail($id);

        $debit->delete();
        return response()->json([
            'status' => 'SUCCESS',
            'message' => "debit was successfully deleted",
        ]);
    }






    public  function get_purpose_list()
    {

        $purposes = AccountPurpose::orderBy('id', 'DESC')->paginate(50);

        return response()->json([
            "status" => "OK",
            "purposes" => $purposes,
        ]);
    }



    public  function add_purpose(Request $request)
    {

        $validatedData = $request->validate([
            'text' => 'required|unique:account_purposes',
        ]);
        $purpose = new AccountPurpose();
        $purpose->text = $request->text;
        $purpose->save();
        return response()->json([
            "status" => "OK",
            "message" => "new purpose added",
        ]);
    }


    public  function get_edit_purpose($id)
    {

        $purpose = AccountPurpose::find($id);

        return response()->json([
            "status" => "OK",
            "purpose" => $purpose,
        ]);
    }



    public function update_purpose(Request $request, $id)
    {

        $validatedData = $request->validate([
            'text' => 'required|unique:accountPurpose,text,' . $id,
        ]);
        $purpose = AccountPurpose::find($id);
        $purpose->text = $request->text;
        $purpose->save();
        return response()->json([
            "status" => "OK",
            "message" => "purpose edited ",
        ]);
    }

    public function accountPurpose()
    {

        $purpose = AccountPurpose::all();
        return response()->json($purpose);
    }

    public function employeeList()
    {
        $employeies = Team::where('status', 1)->orderBy('position', 'ASC')->get();
        return response()->json($employeies);
    }



    public   function export_credit()
    {

        return   Excel::download(new CreditExport(), 'credit.xlsx');
    }

    public   function export_debit()
    {

        return Excel::download(new DebitExport(), 'debit.xlsx');
    }






    public function monthlyReport(Request $request)
    {

        $credits = Credit::where('purpose', '!=', 'Fund Transfer')
            ->whereDate('date', '<=', $request->end_date)
            ->whereDate('date', '>=', $request->start_date)
            ->get();

        $credit_data = [
            'Order' => 0,
            'Website' => 0,
            'Boost' => 0,
            'Office Sale' => 0,
            'Others' => 0,
        ];
        foreach ($credits as $k => $credit) {

            if (Str::contains($credit->purpose, ['Delievred Order'])) {
                $credit_data['Order'] += $credit->amount;
            } else if (Str::contains($credit->purpose, ['payment of web application'])) {
                $credit_data['Website'] += $credit->amount;
            } else if (Str::contains($credit->purpose, ['Boost payment from'])) {
                $credit_data['Boost'] += $credit->amount;
            } else if (Str::contains($credit->purpose, ['Boost payment from'])) {
                $credit_data['boost'] += $credit->amount;
            } else if (Str::contains($credit->purpose, ['Office sale', 'Office sell'])) {
                $credit_data['Office Sale'] += $credit->amount;
            } else {
                $credit_data['Others'] += $credit->amount;
            }

     

        }

        $debits = Debit::whereDate('date', '<=', $request->end_date)
            ->whereDate('date', '>=', $request->start_date)
            ->get()
            ->groupBy('purpose');
        $debit_data = [];
        foreach ($debits as $k => $debit) {
            // return $k;
            $purpose = AccountPurpose::where('id', $k)->first();
            $debit_data[$purpose->text ?? "others"] = $debit->sum('amount');
        }

        return response()->json(
            [
                'success' => true,
                'debits' => $debit_data,
                'credits' => $credit_data,
            ]
        );
    }





    //add this two method
    public function balance()
    {
        $balance = Balance::all();
        return response()->json([
            'success' => 'OK',
            'balance' => $balance
        ]);
    }


    public function store_balance(Request $request)
    {

        $validatedData = $request->validate([
            'name' => 'required|unique:balances',
        ]);

        $bill = new Balance();
        $bill->name = $request->name;
        $bill->save();
        return response()->json([
            'status' => 'OK',
            'message' => 'Added successfully'
        ]);
    }




    public function resellerPaymentRequests(Request $request)
    {

        $item = $request->item ?? 30;
        $transactions = ResellerPaymentTransaction::where('status', $request->status)->with('reseller:id,name,company_name,phone,image')->orderByDesc('id')->paginate($item);
        return response()->json([
            'status' => 1,
            'transactions' => $transactions
        ]);
    }



    public function payResellerPaymentRequest(Request $request)
    {

        $data = $request->validate([
            'withdraw_transaction_id' => 'required',
            'reseller_id' => 'required',
            'debit_from' => 'required',
            'transaction_id' => 'required',
            'comment' => 'nullable',
        ]);
        DB::beginTransaction();
        try {
            $transaction = ResellerPaymentTransaction::findOrFail($data['withdraw_transaction_id']);
            $transaction->status = 1;
            $transaction->transaction_id = $request->transaction_id;
            $transaction->save();
            //store debit
            $debit = new Debit();
            $debit->purpose = 29;
            $debit->debit_from = $request->debit_from;
            $debit->amount = $transaction->amount;
            $debit->comment = $request->comment ?? null;
            $debit->date =  date('Y-m-d');
            $debit->insert_admin_id = session()->get('admin')['id'];
            $debit->save();
            //send confirmation message
            $reseller = Reseller::where('id', $transaction->reseller_id)->first();
            (new SmsService())->resellerPaymentConfirmation($reseller, $transaction->amount, $transaction->transaction_id);
            DB::commit();
            return response()->json([
                'status' => 1,
                'message' => 'payment completed successfully'
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => 0,
                'message' => $e->getMessage(),
            ]);
        }
    }





    public function cancelResellerPaymentRequest($id)
    {

        DB::beginTransaction();
        try {

            $transaction = ResellerPaymentTransaction::findOrFail($id);
            if ($transaction->status == 0) {
                $transaction->status = 2;
                $transaction->save();
                //reseller commission inserted
                $cashbook = new ResellerCashbook();
                $cashbook->reseller_id = $transaction->reseller_id;
                $cashbook->invoice_no = 123;
                $cashbook->is_income = 1;
                $cashbook->amount = $transaction->amount;
                $cashbook->created_by = session()->get('admin')['id'];
                $cashbook->note = 'payment request canceled and restored your balance';
                $cashbook->save();
                //update invoice
                $cashbook->invoice_no = 2222 + $cashbook->id;
                $cashbook->save();
            }
            //send confirmation message
            $reseller = Reseller::where('id', $transaction->reseller_id)->first();
            (new SmsService())->resellerPaymentCancel($reseller, $transaction->amount);
            DB::commit();
            return response()->json([
                'status' => 1,
                'message' => 'payment canceled successfully'
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => 0,
                'message' => $e->getMessage(),
            ]);
        }
    }

    public function credit_purpose()
    {
        $purpose = BillStatement::where('type', 1)->get();
        return response()->json($purpose);
    }






    public function merchantPaymentRequests(Request $request)
    {

        $item = $request->item ?? 30;
        $transactions = MerchantPaymentTransaction::where('status', $request->status)->with('merchant:id,name,company_name,phone,image')->orderByDesc('id')->paginate($item);
        return response()->json([
            'status' => 1,
            'transactions' => $transactions
        ]);
    }



    public function payMerchantPaymentRequest(Request $request)
    {

        $data = $request->validate([
            'withdraw_transaction_id' => 'required',
            'merchant_id' => 'required',
            'debit_from' => 'required',
            'transaction_id' => 'required',
            'comment' => 'nullable',
        ]);
        DB::beginTransaction();
        try {
            $transaction = MerchantPaymentTransaction::findOrFail($data['withdraw_transaction_id']);
            $transaction->status = 1;
            $transaction->transaction_id = $request->transaction_id;
            $transaction->save();
            //store debit
            $debit = new Debit();
            $debit->purpose = 29;
            $debit->debit_from = $request->debit_from;
            $debit->amount = $transaction->amount;
            $debit->comment = $request->comment ?? null;
            $debit->date = date('Y-m-d');
            $debit->insert_admin_id = session()->get('admin')['id'];
            $debit->save();
            //send confirmation message
            $reseller = Reseller::where('id', $transaction->reseller_id)->first();
            (new SmsService())->merchantPaymentConfirmation($reseller, $transaction->amount, $transaction->transaction_id);
            DB::commit();
            return response()->json([
                'status' => 1,
                'message' => 'payment completed successfully'
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => 0,
                'message' => $e->getMessage(),
            ]);
        }
    }





    public function cancelMerchantPaymentRequest($id)
    {

        DB::beginTransaction();
        try {

            $transaction = MerchantPaymentTransaction::findOrFail($id);
            if ($transaction->status == 0) {
                $transaction->status = 2;
                $transaction->save();
                //reseller commission inserted
                $cashbook = new MerchantCashbook();
                $cashbook->merchant_id = $transaction->merchant_id;
                $cashbook->invoice_no = HelperService::uniqueInvoiceMaker(5);
                $cashbook->is_income = 1;
                $cashbook->amount = $transaction->amount;
                $cashbook->created_by = session()->get('admin')['id'];
                $cashbook->note = 'payment request canceled and restored your balance';
                $cashbook->save();
            }
            //send confirmation message
            $merchant = Merchant::where('id', $transaction->merchant_id)->first();
            (new SmsService())->merchantPaymentCancel($merchant, $transaction->amount);
            DB::commit();
            return response()->json([
                'status' => 1,
                'message' => 'payment canceled successfully'
            ]);
        } catch (Exception $e) {
            DB::rollBack();
            return response()->json([
                'status' => 0,
                'message' => $e->getMessage(),
            ]);
        }
    }
}
