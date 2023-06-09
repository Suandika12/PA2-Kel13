@extends('layouts.master')
@section('title', 'Edit Customer')
@section('page', 'Hidangan')
@section('breadcrumb')
    <!--begin::Breadcrumb-->
    <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 pt-1">
        <!--begin::Item-->
        <li class="breadcrumb-item text-muted">Customer</li>
        <!--end::Item-->
        <!--begin::Item-->
        <li class="breadcrumb-item">
            <span class="bullet bg-gray-200 w-5px h-2px"></span>
        </li>
        <!--end::Item-->
        <!--begin::Item-->
        <li class="breadcrumb-item text-dark">Edit Customer</li>
        <!--end::Item-->
    </ul>
    <!--end::Breadcrumb-->
@endsection
@section('content')
    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
        <!--begin::Post-->
        <div class="post d-flex flex-column-fluid" id="kt_post">
            <!--begin::Container-->
            <div id="kt_content_container" class="container-xxl">
                <form id="kt_ecommerce_edit_category_form" class="form d-flex flex-column flex-lg-row"
                    data-kt-redirect="{{ route('customer.index') }}" action="{{ route('customer.update', $customer->id) }}"
                    method="POST">
                    <div class="d-flex flex-column flex-row-fluid gap-7 gap-lg-10">
                        <!--begin::General options-->
                        <div class="card card-flush py-4">
                            <!--begin::Card header-->
                            <div class="card-header">
                                <div class="card-title">
                                    <h2>General</h2>
                                </div>
                            </div>
                            <!--end::Card header-->
                            <!--begin::Card body-->
                            <div class="card-body pt-0">
                                <!--begin::Input group-->
                                <div class="mb-10 fv-row">
                                    <!--begin::Label-->
                                    <label class="required form-label">Name</label>
                                    <!--end::Label-->
                                    <!--begin::Input-->
                                    <input type="text" name="name" class="form-control mb-2"
                                        placeholder="Customer Name" value="{{ $customer->name }}" />
                                    <!--end::Input-->
                                    <!--end::Description-->
                                </div>
                                <!--end::Input group-->
                                <!--begin::Input group-->
                                <div class="mb-10 fv-row">
                                    <!--begin::Label-->
                                    <label class="required form-label">Email</label>
                                    <!--end::Label-->
                                    <!--begin::Input-->
                                    <input type="email" name="email" class="form-control mb-2" placeholder="Email"
                                        value="{{ $customer->email }}" />
                                </div>
                                <!--end::Input group-->
                                <!--begin::Input group-->
                                <div class="mb-10 fv-row">
                                    <!--begin::Label-->
                                    <label class="form-label">Phone</label>
                                    <!--end::Label-->
                                    <!--begin::Editor-->
                                    <input type="number" name="phone" class="form-control mb-2" placeholder="Phone"
                                        value="{{ $customer->phone }}" />
                                </div>
                            </div>
                        </div>
                        <!--end::General options-->
                        <div class="d-flex justify-content-end">
                            <!--begin::Button-->
                            <a href="{{ route('customer.index') }}}" id="kt_ecommerce_edit_product_cancel"
                                class="btn btn-light me-5">Cancel</a>
                            <!--end::Button-->
                            <!--begin::Button-->
                            <button type="submit" id="kt_ecommerce_edit_product_submit" class="btn btn-primary"
                                data-kt-element="submit">
                                <span class="indicator-label">Save Changes</span>
                                <span class="indicator-progress">Please wait...
                                    <span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                            </button>
                            <!--end::Button-->
                        </div>
                    </div>
                    <!--end::Main column-->
                </form>
            </div>
            <!--end::Container-->
        </div>
        <!--end::Post-->
    </div>
@endsection
@section('scripts')
    <script>
        "use strict";
        // Class definition
        const KTFormControls = function() {
            // Base elements
            const formEl = $('#kt_ecommerce_edit_category_form');;

            const _initAvatar = function() {
                // init avatar
                const imageInputElement = document.querySelector("#kt_ecommerce_edit_category_avatar");
                new KTImageInput(imageInputElement);
            }

            return {
                // public functions
                _init: function() {
                    _initAvatar();
                },
                onSubmit: function() {
                    const btn = formEl.find('[data-kt-element="submit"]');
                    const action = formEl.attr('action');
                    const method = formEl.attr('method');
                    const enctype = formEl.attr('enctype');
                    const data = new FormData(formEl[0]);
                    data.append('_method', method);
                    $.ajax({
                        url: action,
                        type: 'POST',
                        data: data,
                        dataType: 'json',
                        enctype: enctype,
                        processData: false,
                        contentType: false,
                        beforeSend: function() {
                            btn.attr("data-kt-indicator", "on");
                            btn.prop("disabled", true);
                        },
                        success: function(response) {
                            if (response.status == 'error') {
                                Swal.fire({
                                    text: response.message,
                                    icon: "error",
                                    buttonsStyling: false,
                                    confirmButtonText: "Ok!",
                                    customClass: {
                                        confirmButton: "btn btn-primary"
                                    }
                                });
                                btn.removeAttr("data-kt-indicator");
                                btn.prop("disabled", false);
                            } else {
                                Swal.fire({
                                    text: response.message,
                                    icon: "success",
                                    buttonsStyling: false,
                                    confirmButtonText: "Ok!",
                                    customClass: {
                                        confirmButton: "btn btn-primary"
                                    }
                                }).then(function(result) {
                                    btn.removeAttr("data-kt-indicator");
                                    btn.prop("disabled", false);
                                    if (result.isConfirmed) {
                                        window.location.href = response
                                            .redirect;
                                    }
                                });
                            }
                        },
                        error: function(data) {
                            Swal.fire({
                                text: "Sorry, we couldn't update your data.",
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn fw-bold btn-primary"
                                }
                            });
                        }
                    }).done(function() {
                        btn.removeAttr("data-kt-indicator");
                        btn.prop("disabled", false);
                    });
                },
            };
        }();
        // On document ready
        KTUtil.onDOMContentLoaded(function() {
            KTFormControls._init();
        });

        // on submit form
        $(document).on('submit', '#kt_ecommerce_edit_category_form', function(e) {
            e.preventDefault();
            KTFormControls.onSubmit();
        });
    </script>
@endsection
