@extends('layouts.master')
@section('title', 'Booking Lapangan')
@section('page', 'Booking Lapangan')
@section('breadcrumb')
    <!--begin::Breadcrumb-->
    <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 pt-1">
        <!--begin::Item-->
        <li class="breadcrumb-item text-muted">Booking Lapangan</li>
        <!--end::Item-->
    </ul>
    <!--end::Breadcrumb-->
@endsection
@section('content')
    <!--begin::Content-->
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Post-->
        <div class="post d-flex flex-column-fluid" id="kt_post">
            <!--begin::Container-->
            <div id="kt_content_container" class="container-xxl">
                <!--begin::Products-->
                <div class="card card-flush">
                    <!--begin::Card header-->
                    <div class="card-header align-items-center py-5 gap-2 gap-md-5">
                        <!--begin::Card title-->
                        <div class="card-title">
                            <!--begin::Search-->
                            <!--end::Search-->
                        </div>
                        <!--end::Card title-->
                        <!--begin::Card toolbar-->

                        <!--end::Card toolbar-->
                    </div>
                    <!--end::Card header-->
                    <!--begin::Card body-->
                    <div class="card-body pt-0">
                        <!--begin::Table-->
                        <table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_ecommerce_sales_table">
                            <!--begin::Table head-->
                            <thead>
                                <!--begin::Table row-->
                                <tr class="text-start text-gray-400 fw-bold fs-7 text-uppercase gs-0">
                                    <th class="w-10px pe-2">
                                        <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                                            <input class="form-check-input" type="checkbox" data-kt-check="true"
                                                data-kt-check-target="#kt_ecommerce_sales_table .form-check-input"
                                                value="1" />
                                        </div>
                                    </th>
                                    <th class="min-w-175px">Customer</th>
                                    <th class="text-end min-w-70px">Status</th>
                                    <th class="text-end min-w-70px">Start Play</th>
                                    <th class="text-end min-w-70px">End Play</th>
                                    <th class="text-end min-w-100px">Actions</th>
                                </tr>
                                <!--end::Table row-->
                            </thead>
                            <!--end::Table head-->
                            <!--begin::Table body-->
                            <tbody class="fw-semibold text-gray-600">
                                @foreach ($requests as $request)
                                    <!--begin::Table row-->
                                    <tr>
                                        <!--begin::Checkbox-->
                                        <td>
                                            <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                <input class="form-check-input" type="checkbox" value={{ $request->id }} />
                                            </div>
                                        </td>
                                        <!--end::Checkbox-->
                                        <!--begin::Request ID=-->
                                        <!--end::Request ID=-->
                                        <!--begin::Customer=-->
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <div class="ms-5">
                                                    <!--begin::Title-->
                                                    <a href="javascript:;"
                                                        class="text-gray-800 text-hover-primary fs-5 fw-bold">{{ $request->user->name }}</a>
                                                    <!--end::Title-->
                                                </div>
                                            </div>
                                        </td>
                                        <!--end::Customer=-->
                                        <!--begin::Status=-->
                                        <td class="text-end pe-0" data-request="Completed">
                                            <!--begin::Badges-->
                                            @php
                                                $badge = '';
                                                switch ($request->status) {
                                                    case 'Pending':
                                                        $badge = 'badge-light-warning';
                                                        break;
                                                    case 'Approved':
                                                        $badge = 'badge-light-primary';
                                                        break;
                                                    case 'Completed':
                                                        $badge = 'badge-light-success';
                                                        break;
                                                    case 'Denied':
                                                        $badge = 'badge-light-danger';
                                                        break;
                                                    default:
                                                        $badge = 'badge-light-warning';
                                                        break;
                                                }
                                            @endphp
                                            <div class="badge {{ $badge }}"
                                                data-kt-ecommerce-request-filter="request_status">
                                                {{ $request->status }}
                                            </div>

                                            <!--end::Badges-->
                                        </td>
                                        <!--end::Status=-->
                                        <!--begin::Start Date=-->
                                        <td class="text-end" data-request="{{ $request->start_play }}">
                                            <span class="fw-bold">{{ $request->start_play }}</span>
                                        </td>
                                        <!--end::Date Added=-->
                                        <!--begin::End Date=-->
                                        <td class="text-end" data-request="{{ $request->end_play }}">
                                            <span class="fw-bold">{{ $request->end_play}}</span>
                                        </td>
                                        <!--begin::Action=-->
                                        <td class="text-end">
                                            <a href="#" class="btn btn-sm btn-light btn-active-light-primary"
                                                data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">Actions
                                                <!--begin::Svg Icon | path: icons/duotune/arrows/arr072.svg-->
                                                <span class="svg-icon svg-icon-5 m-0">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M11.4343 12.7344L7.25 8.55005C6.83579 8.13583 6.16421 8.13584 5.75 8.55005C5.33579 8.96426 5.33579 9.63583 5.75 10.05L11.2929 15.5929C11.6834 15.9835 12.3166 15.9835 12.7071 15.5929L18.25 10.05C18.6642 9.63584 18.6642 8.96426 18.25 8.55005C17.8358 8.13584 17.1642 8.13584 16.75 8.55005L12.5657 12.7344C12.2533 13.0468 11.7467 13.0468 11.4343 12.7344Z"
                                                            fill="currentColor" />
                                                    </svg>
                                                </span>
                                                <!--end::Svg Icon-->
                                            </a>
                                            <!--begin::Menu-->
                                            <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-semibold fs-7 w-125px py-4"
                                                data-kt-menu="true">
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="{{ route('booking-lapangan.show', $request->id) }}"
                                                        class="menu-link px-3">View</a>
                                                </div>
                                                <!--end::Menu item-->
                                                <!--begin::Menu item-->
                                                <div class="menu-item px-3">
                                                    <a href="javascript:;"
                                                        onclick="handle_confirm('Apakah Anda Yakin?','Yakin','Tidak','POST','{{ route('booking-lapangan.approve', $request->id) }}');"
                                                        class="menu-link px-3">Approved</a>
                                                </div>
                                                <div class="menu-item px-3">
                                                    <a href="javascript:;"
                                                        onclick="handle_confirm('Apakah Anda Yakin?','Yakin','Tidak','POST','{{ route('booking-lapangan.deny', $request->id) }}');"
                                                        class="menu-link px-3">Denied</a>
                                                </div>
                                                <div class="menu-item px-3">
                                                    <a href="javascript:;"
                                                        onclick="handle_delete('{{ route('booking-lapangan.destroy', $request->id) }}');;"
                                                        class="menu-link px-3">Hapus Permintaan</a>
                                                </div>
                                                <!--end::Menu item-->

                                            </div>
                                            <!--end::Menu-->
                                        </td>
                                        <!--end::Action=-->
                                    </tr>
                                    <!--end::Table row-->
                                @endforeach
                            </tbody>
                            <!--end::Table body-->
                        </table>
                        <!--end::Table-->
                    </div>
                    <!--end::Card body-->
                </div>
                <!--end::Products-->
            </div>
            <!--end::Container-->
        </div>
        <!--end::Post-->
    </div>
    <!--end::Content-->
@endsection