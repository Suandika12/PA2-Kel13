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
                <div class="panel mb-5">
                    <div id="mychart" height="100px"></div>
                </div>
                <div class="col-lg-8 col-md-12">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div class="">
                                            <a href="{{ route('orders.index') }}">
                                                <p class="mb-2 text-secondary">Pesanan yang Sudah di Konfirmasi</p>
                                                <div class="d-flex flex-wrap justify-content-start align-items-center">
                                                    <h5 class="mb-0 font-weight-bold">{{ $completed }}</h5>
                                                </div>
                                            </a>
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
                                            <a href="{{ route('orders.index') }}">
                                                <p class="mb-2 text-secondary">Pesanan yang Belum di Konfirmasi</p>
                                                <div class="d-flex flex-wrap justify-content-start align-items-center">
                                                    <h5 class="mb-0 font-weight-bold">{{ $pendings }}</h5>
                                                </div>
                                            </a>
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
                                            <a href="{{ route('customer.index') }}">
                                                <p class="mb-2 text-secondary">Total Pengguna</p>
                                                <div class="d-flex flex-wrap justify-content-start align-items-center">
                                                    <h5 class="mb-0 font-weight-bold">{{ $userTotal }}</h5>
                                                </div>
                                            </a>
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
                                                @foreach ($event as $events)
                                                    <tr class="white-space-no-wrap">
                                                        <td>
                                                            <h6 class="mb-0 text-uppercase text-secondary">
                                                                <svg xmlns="http://www.w3.org/2000/svg" class="pr-2"
                                                                    width="30" fill="none" viewBox="0 0 24 24"
                                                                    stroke="currentColor">
                                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                                        stroke-width="2"
                                                                        d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                                                </svg>
                                                                {{ $events->start_date }}
                                                            </h6>
                                                        </td>
                                                        <td class="pl-0 py-3">
                                                            {{ $events->title }}
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
                                @if ($pendings == 0)
                                    <h5 class="mb-0 font-weight-bold text-center">Tidak ada</h5>
                                @endif

                                @foreach ($pending as $orders)
                                    <li class="p-3 list-item d-flex justify-content-start align-items-center">
                                        <div class="list-style-detail ml-3 mr-2">
                                            <p class="mb-0"></p>
                                        </div>
                                        <div class="list-style-action d-flex justify-content-end ml-auto">
                                            <h6 class="font-weight-bold">{{ $orders->user->name }}</h6>
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
                                        @foreach ($user as $users)
                                            <tr class="white-space-no-wrap">
                                                <td>{{ $users->name }}</td>
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <div>{{ $users->email }}</div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <p class="mb-0 d-flex justify-content-start align-items-center">
                                                        {{ $users->phone }}
                                                    </p>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <div class="d-flex justify-content-end align-items-center border-top-table p-3">
                                    <a href="{{ route('customer.index') }}"></a><button
                                        class="btn btn-secondary btn-sm">See All</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page end  -->
        </div>
    </div>

    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script>
        Highcharts.chart('mychart', {
            chart: {
                type: 'column'
            },
            title: {
                align: 'left',
                text: 'Pesanan'
            },
            accessibility: {
                announceNewData: {
                    enabled: true
                }
            },
            xAxis: {
                type: 'category'
            },
            yAxis: {
                title: {
                    text: 'Total pesanan'
                }

            },
            legend: {
                enabled: false
            },
            plotOptions: {
                series: {
                    borderWidth: 0,
                    dataLabels: {
                        enabled: true,
                        format: '{point.y}'
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y}</b> of total<br/>'
            },

            series: [{
                name: 'Order',
                colorByPoint: true,
                data: [{
                        name: 'Completed',
                        y: {{ $completed }},
                        drilldown: 'Completed'
                    },
                    {
                        name: 'Canceled',
                        y: {{ $canceled }},
                        drilldown: 'Canceled'
                    },
                    {
                        name: 'Denied',
                        y: {{ $denied }},
                        drilldown: 'Denied'
                    },
                    {
                        name: 'Pending',
                        y: {{ $pendings }},
                        drilldown: 'Pending'
                    },
                    {
                        name: 'Processing',
                        y: {{ $processing }},
                        drilldown: 'Processing'
                    },
                ]
            }],

        });
    </script>
@endsection
