@extends('layouts.master')
@section('title', 'Field Booking')
@section('page', 'Field Booking')
@section('breadcrumb')
    <!--begin::Breadcrumb-->
    <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 pt-1">
        <!--begin::Item-->
        <li class="breadcrumb-item text-muted">Field Booking</li>
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
                            <input type="text" data-kt-ecommerce-booking-filter="search"
                                    class="form-control form-control-solid w-250px ps-14" placeholder="Search Booking Field" />
                        </div>
                        <!--end::Card title-->
                        <!--begin::Card toolbar-->

                        <!--end::Card toolbar-->
                    </div>
                    <!--end::Card header-->
                    <!--begin::Card body-->
                    <div class="card-body pt-0">
                        <!--begin::Table-->
                        <table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_ecommerce_booking_table">
                            <!--begin::Table head-->
                            <thead>
                                <!--begin::Table row-->
                                <tr class="text-start text-gray-400 fw-bold fs-7 text-uppercase gs-0">
                                    <th class="w-10px pe-2">
                                        <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
                                            <input class="form-check-input" type="checkbox" data-kt-check="true"
                                                data-kt-check-target="#kt_ecommerce_booking_table .form-check-input"
                                                value="1" />
                                        </div>
                                    </th>
                                    <th class="min-w-175px">Customer</th>
                                    <th class="text-end min-w-70px">Status</th>
                                    <th class="text-end min-w-70px">Start Play</th>
                                    <th class="text-end min-w-70px">End Play</th>
                                    <th class="text-end min-w-70px">Price</th>
                                    <th class="text-end min-w-70px">Add Price</th>
                                    <th class="text-end min-w-70px">Payment Method</th>
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
                                                <input data-kt-ecommerce-booking-filter="booking_id" class="form-check-input" type="checkbox" value={{ $request->id }} />
                                            </div>
                                        </td>
                                        <!--end::Checkbox-->
                                        <!--begin::Request ID=-->
                                        <!--end::Request ID=-->
                                        <!--begin::Customer=-->
                                        <td>
                                            {{-- <div class="d-flex align-items-center">
                                                <div class="ms-5">
                                                    <!--begin::Title-->
                                                    <a href="javascript:;"
                                                        class="text-gray-800 text-hover-primary fs-5 fw-bold">{{ $request->user->name }}</a>
                                                    <!--end::Title-->
                                                </div>
                                            </div> --}}
                                            <div class="form-check form-check-sm form-check-custom form-check-solid">
                                                <div class="fs-7 fw-bold" data-kt-ecommerce-booking-filter="booking_name">{{ $request->user->name }}</div>
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
                                        <td class="text-end" data-request="{{ $request->start_time }}">
                                            <span class="fw-bold">{{ $request->start_time }}</span>
                                        </td>
                                        <!--end::Date Added=-->
                                        <!--begin::End Date=-->
                                        <td class="text-end" data-request="{{ $request->end_time }}">
                                            <span class="fw-bold">{{ $request->end_time}}</span>
                                        </td>
                                        @if($request->opsiPembayaran == "Down Payment")
                                            <td class="text-end" data-request="{{ $request->totalPrice * 0.5 }}">
                                                <span class="fw-bold">Rp.{{number_format($request->totalPrice * 0.5, 0, ',', '.')}}</span>
                                                
                                            </td>
                                        @endif
                                        @if($request->opsiPembayaran == "Paid Off")
                                            <td class="text-end" data-request="{{ $request->totalPrice }}">
                                                <span class="fw-bold">Rp.{{ number_format($request->totalPrice, 0, ',', '.')}}</span>
                                            </td>
                                        @endif
                                        @if($request->opsiPembayaran == "Down Payment")
                                            <td class="text-end" data-request="{{ $request->totalPrice * 0.5 }}">
                                                <span class="fw-bold">Rp.{{ number_format($request->totalPrice * 0.5, 0, ',', '.')}}</span>
                                            </td>
                                        @endif
                                        @if($request->opsiPembayaran == "Paid Off")
                                            <td class="text-end" data-request="">
                                                <span class="fw-bold">Rp.0</span>
                                            </td>
                                        @endif
                                        <td class="text-end" data-request="{{ $request->opsiPembayaran }}">
                                            <span class="fw-bold">{{ $request->opsiPembayaran}}</span>
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
                                                    {{-- <a href="javascript:;"
                                                        onclick="handle_delete('{{ route('booking-lapangan.destroy', $request->id) }}');;"
                                                        class="menu-link px-3">Hapus Permintaan</a> --}}
                                                        <a href="javascript:;" class="menu-link px-3"
                                                        data-kt-ecommerce-booking-filter="delete_row">Delete</a>
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
    @section('scripts')
    <script>
        "use strict";
        var KTAppEcommercebooking = function() {
            var t, e, n = () => {
                t.querySelectorAll('[data-kt-ecommerce-booking-filter="delete_row"]').forEach((t => {
                    t.addEventListener("click", (function(t) {
                        t.preventDefault();
                        const n = t.target.closest("tr"),
                            o = n.querySelector(
                                '[data-kt-ecommerce-booking-filter="booking_name"]')
                            .innerText,
                            i = n.querySelector(
                                '[data-kt-ecommerce-booking-filter="booking_id"]');
                        Swal.fire({
                            text: "Are you sure you want to delete " + o + "?",
                            icon: "warning",
                            showCancelButton: !0,
                            buttonsStyling: !1,
                            confirmButtonText: "Yes, delete!",
                            cancelButtonText: "No, cancel",
                            customClass: {
                                confirmButton: "btn fw-bold btn-danger",
                                cancelButton: "btn fw-bold btn-active-light-primary"
                            }
                        }).then((function(t) {
                            if (t.value) {
                                var url =
                                    "{{ route('booking-lapangan.destroy', ':id') }}";
                                url = url.replace(':id', i.value);
                                $.ajax({
                                    url: url,
                                    type: "DELETE",
                                    data: {
                                        _token: "{{ csrf_token() }}"
                                    },
                                    success: function(response) {
                                        Swal.fire({
                                            text: "You have deleted " +
                                                o + "!.",
                                            icon: "success",
                                            buttonsStyling:
                                                !1,
                                            confirmButtonText: "Ok, got it!",
                                            customClass: {
                                                confirmButton: "btn fw-bold btn-primary"
                                            }
                                        }).then((function() {
                                            e.row($(n))
                                                .remove()
                                                .draw()
                                        }))
                                    }
                                })
                            } else {
                                "cancel" === t.dismiss && Swal.fire({
                                    text: o + " was not deleted.",
                                    icon: "error",
                                    buttonsStyling: !1,
                                    confirmButtonText: "Ok, got it!",
                                    customClass: {
                                        confirmButton: "btn fw-bold btn-primary"
                                    }
                                })
                            }
                        }))
                    }))
                }))
            };
            return {
                init: function() {
                    (t = document.querySelector("#kt_ecommerce_booking_table")) && ((e = $(t).DataTable({
                            info: !1,
                            order: [],
                            pageLength: 10,
                            columnDefs: [{
                                    orderable: !1,
                                    targets: 0
                                },
                                {
                                    orderable: !1,
                                    targets: 1
                                },
                                {
                                    orderable: !1,
                                    targets: 2
                                }
                            ],
                        })).on("draw", (function() {
                            n()
                        })), document.querySelector('[data-kt-ecommerce-booking-filter="search"]')
                        .addEventListener("keyup", (function(t) {
                            e.search(t.target.value).draw()
                        })), n())
                }
            }
        }();
        KTUtil.onDOMContentLoaded((function() {
            KTAppEcommercebooking.init()
        }));
    </script>
@endsection
@endsection