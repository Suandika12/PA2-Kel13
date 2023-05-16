@extends('layouts.master')
@section('title', 'Dashboard')
@section('page', 'Dashboard')
@section('breadcrumb')
    <!--begin::Breadcrumb-->
    <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 pt-1">
        <!--begin::Item-->
        <li class="breadcrumb-item text-muted">Dashboards</li>
        <!--end::Item-->
    </ul>
    <!--end::Breadcrumb-->
@endsection
@section('content')
<div id="remoteModelData" class="modal fade" role="dialog"></div>
<div class="content-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 mb-4 mt-1">
                <div class="d-flex flex-wrap justify-content-between align-items-center">
                    <h4 class="font-weight-bold">Pesanan</h4>
                    <div class="form-group mb-0 vanila-daterangepicker d-flex flex-row">
                        <div class="date-icon-set">
                     </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="">
                                        <p class="mb-2 text-secondary">Pesanan yang Sudah di Konfirmasi</p>
                                        <div class="d-flex flex-wrap justify-content-start align-items-center">
                                            <h5 class="mb-0 font-weight-bold">{{$completed}}</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="">
                                        <p class="mb-2 text-secondary">Pesanan yang Belum di Konfirmasi</p>
                                        <div class="d-flex flex-wrap justify-content-start align-items-center">
                                            <h5 class="mb-0 font-weight-bold">{{$pending}}</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="">
                                        <p class="mb-2 text-secondary">Total Pengguna</p>
                                        <div class="d-flex flex-wrap justify-content-start align-items-center">
                                            <h5 class="mb-0 font-weight-bold">{{$userTotal}}</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 mt-3">
                        <div class="card card-block card-stretch card-height">
                            <div class="card-header d-flex justify-content-between">
                                <div class="header-title">
                                    <h4 class="card-title mt-5">Event yang akan datang</h4>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table table-spacing mb-0">
                                        <tbody>
                                        @foreach($event as $events)
                                        <tr class="white-space-no-wrap">
                                            <td>
                                                <h6 class="mb-0 text-uppercase text-secondary">
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="pr-2" width="30" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                                    </svg>
                                                    {{$events->start_date}}</h6>
                                            </td>
                                            <td class="pl-0 py-3">
                                                {{$events->title}}
                                            </td>
                                        </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-8">
                <div class="card card-block card-stretch card-height">
                    <div class="card-header card-header-border d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title">Pesanan yang Belum Di Konfirmasi</h4>
                        </div>
                    </div>
                    <div class="card-body-list">
                        <ul class="list-style-3 mb-0">
                            @if($pending == 0)
                                <h5 class="mb-0 font-weight-bold text-center">Tidak ada</h5>
                            @endif 

                            @foreach($order as $orders)
                            <li class="p-3 list-item d-flex justify-content-start align-items-center">
                                <div class="list-style-detail ml-3 mr-2">
                                    <p class="mb-0">{{$orders->name}}</p>
                                </div>
                                <div class="list-style-action d-flex justify-content-end ml-auto">
                                    <h6 class="font-weight-bold">$1,056</h6>
                                </div>
                            </li>
                            @endforeach 
                        </ul>
                    </div>
                </div>

            </div>

            <div class="col-lg-8 col-md-12 mt-3">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title mt-5">Daftar Pengguna</h4>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table mb-0">
                                <thead class="table-color-heading">
                                <tr class="text-secondary">
                                    <th scope="col">Nama</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">No handphone</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($user as $users)
                                <tr class="white-space-no-wrap">
                                    <td>{{$users->name}}</td>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <div>{{$users->email}}</div>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="mb-0 d-flex justify-content-start align-items-center">
                                            {{$users->phone}}
                                        </p>
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div class="d-flex justify-content-end align-items-center border-top-table p-3">
                                <button class="btn btn-secondary btn-sm">See All</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page end  -->
    </div>
</div>
@endsection
