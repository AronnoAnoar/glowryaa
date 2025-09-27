<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}"/>
    <link rel="icon" />

    @include('admin.partials.css')
</head>


<body class="hold-transition skin-blue sidebar-mini">
    <div id="app" class="wrapper">
        @if (session()->has('admin'))
            @include('admin.partials.sidebar')
        @endif
        <router-view></router-view>
        <vue-progress-bar></vue-progress-bar>

    </div>
    @if (session()->has('admin'))
        @include('admin.partials.footer')
    @endif
    @include('admin.partials.js')

    <script src="{{ asset('js/admin.js') }}" type="text/javascript"></script>

    <script>
        //set some global js variable
        window.Permissions = [];

        @if (session()->has('admin'))
            window.Permissions = {!! json_encode(App\Models\Admin::adminPermission(), true) !!};
        @endif
    </script>

</body>

</html>
