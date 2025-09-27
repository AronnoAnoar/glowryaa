<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> Reseller Panel </title>
    @include('admin.partials.css')


</head>

<body  class="hold-transition skin-blue sidebar-mini">
    <div id="app" class="wrapper">

      @if(session()->has('reseller'))
         @include('reseller.partials.navbar')
      @endif
      <!-- Left side column. contains the logo and sidebar -->

      @if(session()->has('reseller'))
         @include('reseller.partials.sidebar')
      @endif

      <!-- Content Wrapper. Contains page content -->
            <router-view>  </router-view>
            <vue-progress-bar> <vue-progress-bar>

    </div>
    @if(session()->has('reseller'))
    @include('reseller.partials.footer')
    @endif
    <!-- ./wrapper -->
    @include('reseller.partials.js')
    <script src="{{ asset('/js/admin.js') }}" type="text/javascript"></script>

    </body>
    </html>
