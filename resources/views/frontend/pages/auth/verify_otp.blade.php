@extends('frontend.app')
@section('title','Verify OTP')
@section('content')
     <!--============ Auth Area Start ============-->
     <section class="auth_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-10 col-12 m-auto">
                    <div class="auth_wrap">
                        <div class="auth_title">
                            <h3>Verify OTP</h3>
                        </div>

                        @if(session()->has('success'))
                            <div class="alert alert-success">
                                {{ session()->get('success') }}
                            </div>
                        @endif

                        @if(session()->has('error'))
                            <div class="alert alert-danger">
                                {{ session()->get('error') }}
                            </div>
                        @endif
                        <input type="hidden" id="otp_mobile_no" value="{{$mobile_no}}">
                       
                        <form id="otp_varify_form">
                            <div class="auth_form">
                                
                                <div class="auth_item">
                                    <label>OTP <span class="required_r">*</span></label>
                                    
                                <p id="show_otp_timer">{{$otp_time}}s</p>
                                    <input type="text" name="code" placeholder="01xx">
                                    @error('code')
                                        <span class="is_error">{{$message}}</span>
                                    @enderror
                                </div>
                                <div class="auth_sub_btn">
                                    <button id="otp_varify_form_submit" class="auth_sub_btn_link">Send Code</button>
                                </div>
                                
                                <div class="auth_link_page">
                                    <a href="{{route('login')}}" class="auth_link_page_link">Login with password</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============ Auth Area End ============-->
@endsection
@section('scripts')
<script>
    $(document).ready(function() {
        let otp_mobile_no = $('#otp_mobile_no').val();
        let intervalId;
        intervalId = setInterval(DecrementCounter, 1000);

        function DecrementCounter() {
            let counterValue = parseInt($("#show_otp_timer").text());
            console.log(counterValue);
            if (counterValue > 0) {
                counterValue--;
                $("#show_otp_timer").html(counterValue+'s');
            } else {
                clearInterval(intervalId); // Stop the interval when counter reaches 0
                ClearSessionData(otp_mobile_no);
                setTimeout(function(){
                    location.href = '/login-otp';
                }, 2000);
                console.log('end');
            }
        }

        function ClearSessionData(otp_mobile_no){
            console.log('call clear session data');
            $.ajax({
                url: '/clear/session-otp/'+otp_mobile_no,
                type:'GET',
                datatype: 'json',
                success: function(res){
                    console.log(res);
                }
            });
        }


    });
    </script>    
@endsection