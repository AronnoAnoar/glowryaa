<?php
$admin = null;
if (session()->has('admin')) {
    $admin = session()->get('admin');
}
?>
<aside class="main-sidebar">
    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel" style="border-bottom:1px solid #ddd;">

            <div class="pull-left image">
                @if ($admin != null && !empty($admin->image))
                    <img src="{{ asset('storage/' . $admin->image) }}" class="img-circle" alt="User Image">
                @else
                    <img src="{{ asset('admin/dist/img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
                @endif
            </div>
            <div class="pull-left info" style="top:1px;">
                @if ($admin != null)
                    <h4 style="color: #000;">{{ explode(' ', trim($admin->name))[0] }}</h4>
                @endif
                <a style="color: black" href="#"><i class="fa fa-circle text-success"></i> Online</a>
                <br>
            </div>

        </div>


        <ul class="sidebar-menu" data-widget="tree">

            <li class="">
                <a href="/admin/dashboard"> <i class="fa fa-home"></i> Dashboard </a>
            </li>

            @if ($admin->can('manage Order'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-list"></i> <span>Orders Manage</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/order/process/all/all">
                                <i class="fa fa-arrow-circle-right"></i>Retail Manage
                            </a>
                        </li>


                        <li>
                            <a href="/admin/exchange/order/add"><i class="fa fa-eye"></i>Add Exchange Order</a>
                        </li>

                        <li>
                            <a href="/admin/order/processing/report">
                                <i class="fa fa-eye"></i>Order Processing Report
                            </a>
                        </li>



                    </ul>
                </li>
            @endif

            @if ($admin->can('manage wholessale'))
            @endif

            @if ($admin->can('manage Sale'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder-open"></i> <span>Sale Manage</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">

                        <li>
                            <a href="/admin/sale/office"><i class="fa fa-arrow-circle-right"></i>Office
                                Sale
                            </a>
                        </li>

                        <li>
                            <a href="/admin/sale/company"><i class="fa fa-arrow-circle-right"></i>Company
                                Sale
                            </a>
                        </li>
                        <li>
                            <a href="/admin/company"><i class="fa fa-arrow-circle-right"></i>Companies
                            </a>
                        </li>


                    </ul>
                </li>
            @endif


            @if ($admin->can('Manage accounts'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-money"></i> <span>Accounts</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/credit"><i class="fa fa-arrow-circle-right"></i> Income
                            </a>
                        </li>
                        <li>
                            <a href="/admin/debit"><i class="fa fa-arrow-circle-right"></i>Expense
                            </a>
                        </li>
                        <li>
                            <a href="/admin/credit/due"><i class="fa fa-arrow-circle-right"></i>Due
                            </a>
                        </li>

                        <li>
                            <router-link :to="{ name: 'balance' }"><i class="fa fa-arrow-circle-right"></i>Mange Balance </router-link>
                        </li>

                        <li>
                            <a href="/admin/balance"><i class="fa fa-arrow-circle-right"></i>Balance
                            </a>
                        </li>

                        @if ($admin->can('manage fund transfer'))
                            <li>
                                <a href="/admin/found/transfer">
                                    <i class="fa fa-arrow-circle-right"></i>Fund Transfer
                                </a>
                            </li>
                        @endif

                        <li>
                            <a href="/admin/account/purpose"> <i class="fa fa-folder-open"></i> Account Purpose </a>
                        </li>
                    </ul>
                </li>
            @endif

            @if ($admin->can('manage fund transfer'))
            @endif

            @if ($admin->can('manage product'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-list-alt"></i> <span>Products Manage</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/products/1"><i class="fa fa-arrow-circle-right"></i>All Products
                            </a>
                        </li>
                        <li>
                            <a href="/admin/attribute"><i class="fa fa-arrow-circle-right"></i>Attribute/Size
                            </a>
                        </li>

                        <li>
                            <a href="/admin/variant"><i class="fa fa-circle-o"></i>Variant</a>
                        </li>


                        @if ($admin->can('manage purchase'))
                            <li>
                                <a href="/admin/purchase"><i class="fa fa-arrow-circle-right"></i>Products
                                    Purchase
                                </a>
                            </li>
                        @endif

                        <li>
                            <a href="/admin/display/user/review/of/products"><i
                                    class="fa fa-arrow-circle-right"></i>Products
                                Review
                            </a>
                        </li>

                    </ul>
                </li>
            @endif

            @if ($admin->can('manage category'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder-open"></i> <span>Category</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/category"><i class="fa fa-circle-o"></i> Main Category
                            </a>
                        </li>
                        <li>
                            <a href="/admin/subcategory"><i class="fa fa-circle-o"></i>Sub Category
                            </a>
                        </li>
                        <li>
                            <a href="/admin/subSubCategory"><i class="fa fa-circle-o"></i>Sub Sub
                                Category
                            </a>
                        </li>
                    </ul>
                </li>
            @endif

            @if ($admin->can('manage category'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder-open"></i> <span>Brand</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/brand"><i class="fa fa-circle-o"></i> Brands </a>
                        </li>
                    </ul>
                </li>
            @endif


            @if ($admin->can('manage attribute'))
            @endif
            @if ($admin->can('create and manage slider'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-sliders"></i> <span>Slider</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">

                        <li>
                            <a href="/admin/slider"><i class="fa fa-arrow-circle-right"></i>Landing Sliders
                            </a>
                        </li>

                    </ul>
                </li>
            @endif
            @if ($admin->can('manage supplier'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-address-card"></i> <span>Product Supplier</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">

                        <li>
                            <router-link :to="{ name: 'supplierAdd' }"><i class="fa fa-plus"></i> Add</router-link>
                        </li>
                        <li>
                            <router-link :to="{ name: 'supplier' }"><i class="fa fa-arrow-circle-right"></i>Manage
                            </router-link>
                        </li>

                    </ul>
                </li>
            @endif

            @if ($admin->can('manage category'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder-open"></i> <span>Campaign</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <router-link :to="{ name: 'coupon' }"><i class="fa fa-arrow-circle-right"></i> Coupon
                            </router-link>
                        </li>
                    </ul>
                </li>
            @endif


            @if ($admin->can('manage admin'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-user-secret"></i> <span>Admin</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/addAdmin"><i class="fa fa-plus"></i> Add</a>
                        </li>
                        <li>
                            <a href="/admin/listAdmin"><i class="fa fa-arrow-circle-right"></i>Manage
                            </a>
                        </li>
                    </ul>
                </li>
            @endif



            @if ($admin->can('manage customers'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-users"></i> <span> Customer </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/customer/list"> <i class="fa fa-user-circle"></i> Customers
                            </a>
                        </li>

                        <li>
                            <a href="/admin/user/list"> <i class="fa fa-user-circle"></i>Users</a>
                        </li>
                    </ul>

                </li>
            @endif


            @if ($admin->can('manage reports'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-file"></i> <span>Report</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">

                        <li>
                            <a href="/admin/profit/report"><i class="fa fa-arrow-circle-right"></i> Profit/Loss
                                Report</a>
                        </li>

                        <li>
                            <a href="/admin/product/stock/report"><i class="fa fa-arrow-circle-right"></i> Product
                                Stock and Profit </a>
                        </li>

                        <li>
                            <a href="/admin/order/report"><i class="fa fa-arrow-circle-right"></i> Order Report</a>
                        </li>

                        <li>
                            <a href="/admin/office/sale/report"><i class="fa fa-arrow-circle-right"></i>Office Sale
                                Report</a>
                        </li>
                        <li>
                            <a href="/admin/order/profit/report"><i class="fa fa-arrow-circle-right"></i>Order
                                Profit</a>

                        <li>
                        <li>
                            <a href="/admin/sale/profit/report"><i class="fa fa-arrow-circle-right"></i> Sale Profit
                            </a>
                        </li>

                        <li>
                            <a href="/admin/purchase/report"><i class="fa fa-arrow-circle-right"></i>Purchase
                                Report</a>
                        </li>

                        <li>
                            <a href="/admin/supplier/report"><i class="fa fa-arrow-circle-right"></i>Supplier
                                Report</a>
                        </li>
                        <li>
                            <a href="/admin/account/report"><i class="fa fa-arrow-circle-right"></i>Account Report</a>
                        </li>
                        <li>
                            <a href="/admin/report/product/stock"><i class="fa fa-arrow-circle-right"></i>Stock
                                Report</a>
                        <li>




                    </ul>
                </li>
            @endif
            @if ($admin->can('manage basic set up'))


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-file-o"></i> <span>Pages</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/page/info/add"><i class="fa fa-plus"></i> Add</a>
                        </li>
                        <li>
                            <a href="/admin/page/info/lists"><i class="fa fa-arrow-circle-right"></i>Manage
                            </a>
                        </li>
                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cog"></i> <span>Setting</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="/admin/general/setting"><i class="fa fa-cogs"></i>General Setting </a>
                        </li>

                        <li>
                            <a href="/admin/footer/info"><i class="fa fa-cogs"></i>Footer Setting </a>
                        </li>


                        <li>
                            <a href="/admin/theme/setting"><i class="fa fa-tint "></i> Color Setting </a>
                        </li>

                        <li>
                            <a href="/admin/city"><i class="fa fa-plus"></i>City</a>
                        </li>
                        <li>
                            <a href="/admin/sub/city"><i class="fa fa-plus"></i>Sub City </a>
                        </li>

                        <li>
                            <a href="/admin/courier"><i class="fa fa-arrow-circle-right"></i>Courier </a>
                        </li>


                        <li>
                            <a href="/admin/comment"><i class="fa fa-arrow-circle-right"></i>Comment </a>
                        </li>



                        @if ($admin->can('View Role'))
                            <li>
                                <a href="/admin/role"><i class="fa fa-arrow-circle-right"></i>Role </a>
                            </li>
                        @endif

                        <li>
                            <a href="/admin/delivery/charge"><i class="fa fa-arrow-circle-right"></i>Delivery Charge
                            </a>
                        </li>

                        <li>
                            <router-link :to="{ name: 'courier_api_setup' }"><i class="fa fa-arrow-circle-right"></i> Courier API Setup
                            </router-link>
                        </li>

                    </ul>
                </li>

            @endif

            @if ($admin->can('manage company'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-briefcase "></i> <span>Company Management</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>

                    <ul class="treeview-menu">

                        <li>
                            <a href="/admin/stock/and/create/analysis"> Stock & Order Analysis</a>
                        </li>
                        @if ($admin->can('manage team'))
                            <li>
                                <a href="/admin/team/member"><i class="fa fa-users"></i> Manage Team</a>
                            </li>
                        @endif
                        <li>
                            <a href="/admin/loan/manage"><i class="fa fa-money"></i>Manage Loan</a>
                        </li>

                        <li>
                            <a href="/admin/company/investment"><i class="fa fa-dollar"></i>Manage Investment</a>
                        </li>
                        <li>
                            <a href="/admin/company/assets"><i class="fa fa-arrow-circle-right"></i>Manage Assets</a>
                        </li>
                        <li>
                            <a href="/admin/bill/statement"><i class="fa fa-money"></i>Bill Statements </a>
                        </li>

                        <li>
                            <a href="/admin/credit/statement"><i class="fa fa-money"></i>Income Statements</a>
                        </li>

                        <li>
                            <a href="/admin/director"><i class="fa fa-user-secret"></i> Directors </a>
                        </li>

                    </ul>
                </li>
            @endif


            
            @if ($admin->can('manage category'))
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder-open"></i> <span>Landing Page</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <router-link :to="{ name: 'landing_page' }"><i class="fa fa-circle-o"></i>Manage
                            </router-link>
                        </li>
                    </ul>
                </li>
            @endif


            
        </ul>
    </section>
</aside>
