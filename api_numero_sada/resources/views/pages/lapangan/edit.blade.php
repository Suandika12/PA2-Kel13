@extends('layouts.master')
@section('title', 'Edit lapangan')
@section('page', 'lapangan')
@section('breadcrumb')
    <!--begin::Breadcrumb-->
    <ul class="breadcrumb breadcrumb-separatorless fw-semibold fs-7 pt-1">
        <!--begin::Item-->
        <li class="breadcrumb-item text-muted">Field</li>
        <!--end::Item-->
        <!--begin::Item-->
        <li class="breadcrumb-item">
            <span class="bullet bg-gray-200 w-5px h-2px"></span>
        </li>
        <!--end::Item-->
        <!--begin::Item-->
        <li class="breadcrumb-item text-dark">Edit Field</li>
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
                <form id="kt_ecommerce_edit_lapangan_form" class="form d-flex flex-column flex-lg-row"
                    data-kt-redirect="{{ route('lapangan.index') }}" action="{{ route('lapangan.update', $lapangan->id) }}"
                    method="PUT">
                    @csrf
                    <!--begin::Aside column-->
                    <div class="d-flex flex-column gap-7 gap-lg-10 w-100 w-lg-300px mb-7 me-lg-10">
                        <!--begin::Thumbnail settings-->
                       
                        <!--end::Thumbnail settings-->
                        <!--begin::Distributor-->
                        <div class="card card-flush py-4">
                            <!--begin::Card header-->
                            <div class="card-header">
                                <!--begin::Card title-->
                                <div class="card-title">
                                    <h2>Status</h2>
                                </div>
                                <!--end::Card title-->
                                <!--begin::Card toolbar-->
                                <div class="card-toolbar">
                                    <div class="rounded-circle bg-success w-15px h-15px"
                                        id="kt_ecommerce_edit_category_status"></div>
                                </div>
                                <!--begin::Card toolbar-->
                            </div>
                            <!--end::Card header-->
                            <!--begin::Card body-->
                            <div class="card-body pt-0">
                                <!--begin::Select2-->
                                <select class="form-select mb-2" data-control="select2" 
                                    data-placeholder="Select an option" name="status">
                                    <option></option>
                                    <option value="Available">Available
                                    </option>
                                    <option value="Unavailable">Unavailable
                                    </option>
                                </select>
                                <!--end::Select2-->
                                <!--begin::Description-->
                                <div class="text-muted fs-7">Set the status.</div>
                                <!--end::Description-->
                                <!--begin::Datepicker-->
                                <div class="d-none mt-10">
                                    <label for="kt_ecommerce_edit_category_status_datepicker" class="form-label">Select
                                        publishing date and time</label>
                                    <input class="form-control" id="kt_ecommerce_edit_category_status_datepicker"
                                        placeholder="Pick date & time" />
                                </div>
                                <!--end::Datepicker-->
                            </div>
                            <!--end::Card body-->
                        </div>
                        <!--end::Distributor-->
                    </div>
                    <!--end::Aside column-->
                    <!--begin::Main column-->
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
                                    <label class="required form-label">Field Picture</label>
                                    <input class="form-control" id="kt_ecommerce_edit_lapangan_avatar"
                                        name="avatar"type="file">
                                    <!--begin::Label-->
                                    <!--begin::Label-->
                                    <label class="required form-label">Field Name</label>
                                    <!--end::Label-->
                                    <!--begin::Input-->
                                    <input type="text" name="name" class="form-control mb-2" placeholder=""
                                        value="{{$lapangan->name}}" /> 
                                    <!--end::Input-->
                                    <!--begin::Description-->
                                    <div class="text-muted fs-7">A Field name is required and recommended to be unique.
                                    </div>
                                    <!--end::Description-->
                                </div>
                                <!--end::Input group-->
                                <!--begin::Input group-->
                                <div class="mb-10 fv-row">
                                    <!--begin::Label-->
                                    <label class="form-label">Description</label>
                                    <!--end::Label-->
                                    <!--begin::Editor-->
                                    <textarea name="description" class="form-control mb-2" placeholder="" rows="3">{{$lapangan->description}}</textarea>
                                    <!--end::Editor-->
                                    <!--begin::Description-->
                                    <div class="text-muted fs-7">Set a description to the category for better visibility.
                                    </div>
                                    <!--end::Description-->
                                </div>
                                <!--end::Input group-->
                            </div>
                            <!--end::Card header-->
                        </div>
                        <!--end::General options-->
                        <div class="d-flex justify-content-end">
                            <!--begin::Button-->
                            <a href="{{ route('lapangan.index') }}}" id="kt_ecommerce_edit_lapangan_cancel"
                                class="btn btn-light me-5">Cancel</a>
                            <!--end::Button-->
                            <!--begin::Button-->
                            <button type="submit" id="kt_ecommerce_edit_lapangan_submit" class="btn btn-primary"
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
        const formEl = $('#kt_ecommerce_edit_lapangan_form');;

        const _initAvatar = function() {
            // init avatar
            const imageInputElement = document.querySelector("#kt_ecommerce_edit_lapangan_avatar");
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
    $(document).on('submit', '#kt_ecommerce_edit_lapangan_form', function(e) {
        e.preventDefault();
        KTFormControls.onSubmit();
    });
</script>
@endsection
