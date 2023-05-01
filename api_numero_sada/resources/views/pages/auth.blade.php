<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="utf-8" />
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="article" />
    <link rel="shortcut icon" href="{{ asset('img/favicon.png') }}" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
    <link href="{{ asset('assets/plugins/global/plugins.bundle.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/style.bundle.css') }}" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="{{asset("assets/css/backend.css")}}">
</head>

<body id="kt_body" class="bg-body">
<div class="container h-100">
<div class="row align-items-center justify-content-center h-100">
<div class="col-md-5">
<div class="card p-3">
    <div class="d-flex flex-column flex-root">
        <div class="d-flex flex-column flex-lg-row-fluid py-10">
            <div class="d-flex flex-center flex-column flex-column-fluid">
                <div class="w-lg-500px p-10 p-lg-15 mx-auto">
                    <form class="form w-100" novalidate="novalidate" id="form_login">
                        <div class="text-center mb-10">
                            <img src="{{asset("assets/images/logo.png")}}" style="width:200px;height:200px;"class="img-fluid  rounded-normal  darkmode-logo" alt="logo">

                            <h1 class="text-dark mb-3">Numero Sada Futsal</h1>
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-label fs-6 fw-bolder text-dark">Email</label>
                            <input class="form-control form-control-lg form-control-solid" type="text" id="email"
                                name="email" autocomplete="off" data-login="1" />
                        </div>
                        <div class="fv-row mb-10">
                            <div class="d-flex flex-stack mb-2">
                                <label class="form-label fw-bolder text-dark fs-6 mb-0">Kata Sandi</label>
                            </div>
                            <input class="form-control form-control-lg form-control-solid" type="password"
                                id="password" name="password" autocomplete="off" data-login="2" />
                        </div>
                        <div class="text-center">
                            <button id="tombol_login"
                                onclick="handle_post('#tombol_login','#form_login','{{ route('login') }}');"
                                data-login="3" class="btn btn-lg btn-primary w-100 mb-5">
                                <span class="indicator-label">Masuk</span>
                                <span class="indicator-progress">Harap tunggu...
                                    <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
</div>
</div>
</div>
    <script src="{{ asset('assets/plugins/global/plugins.bundle.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/js/scripts.bundle.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/auth.js') }}"></script>
</body>

</html>
