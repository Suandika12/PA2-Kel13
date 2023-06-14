<div id="kt_aside" class="aside" data-kt-drawer="true" data-kt-drawer-name="aside"
    data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true"
    data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="start"
    data-kt-drawer-toggle="#kt_aside_mobile_toggle">
    <!--begin::Aside Toolbarl-->
    <div class="aside-toolbar flex-column-auto" id="kt_aside_toolbar"style="background-color: rgb(0, 0, 0)">
        <!--begin::Aside user-->
        <!--begin::User-->
        <div class="aside-user d-flex align-items-sm-center justify-content-center py-5">
            <!--begin::Symbol-->
            <div class="symbol symbol-50px">
                <img src="{{ asset('assets/media/avatars/admin.jpg') }}" alt="" />
            </div>
            <!--end::Symbol-->
            <!--begin::Wrapper-->
            <div class="aside-user-info flex-row-fluid flex-wrap ms-5">
                <!--begin::Section-->
                <div class="d-flex">
                    <!--begin::Info-->
                    <div class="flex-grow-1 me-2">
                        <!--begin::Username-->
                        <a href="#"
                            class="text-white text-hover-primary fs-6 fw-bold">{{ Auth::user()->name }}</a>
                        <!--end::Username-->
                        <!--begin::Description-->
                        <span class="text-gray-600 fw-semibold d-block fs-8 mb-1">Administrator</span>
                        <!--end::Description-->
                        <!--begin::Label-->
                        <div class="d-flex align-items-center text-success fs-9">
                            <span class="bullet bullet-dot bg-success me-1"></span>online
                        </div>
                        <!--end::Label-->
                    </div>
                    <!--end::Info-->
                    <!--begin::User menu-->
                    <div class="me-n2">
                        <!--begin::Action-->
                        <a href="#" class="btn btn-icon btn-sm btn-active-color-primary mt-n2"
                            data-kt-menu-trigger="click" data-kt-menu-placement="bottom-start"
                            data-kt-menu-overflow="true">
                            <!--begin::Svg Icon | path: icons/duotune/coding/cod001.svg-->
                            <span class="svg-icon svg-icon-muted svg-icon-1">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path opacity="0.3"
                                        d="M22.1 11.5V12.6C22.1 13.2 21.7 13.6 21.2 13.7L19.9 13.9C19.7 14.7 19.4 15.5 18.9 16.2L19.7 17.2999C20 17.6999 20 18.3999 19.6 18.7999L18.8 19.6C18.4 20 17.8 20 17.3 19.7L16.2 18.9C15.5 19.3 14.7 19.7 13.9 19.9L13.7 21.2C13.6 21.7 13.1 22.1 12.6 22.1H11.5C10.9 22.1 10.5 21.7 10.4 21.2L10.2 19.9C9.4 19.7 8.6 19.4 7.9 18.9L6.8 19.7C6.4 20 5.7 20 5.3 19.6L4.5 18.7999C4.1 18.3999 4.1 17.7999 4.4 17.2999L5.2 16.2C4.8 15.5 4.4 14.7 4.2 13.9L2.9 13.7C2.4 13.6 2 13.1 2 12.6V11.5C2 10.9 2.4 10.5 2.9 10.4L4.2 10.2C4.4 9.39995 4.7 8.60002 5.2 7.90002L4.4 6.79993C4.1 6.39993 4.1 5.69993 4.5 5.29993L5.3 4.5C5.7 4.1 6.3 4.10002 6.8 4.40002L7.9 5.19995C8.6 4.79995 9.4 4.39995 10.2 4.19995L10.4 2.90002C10.5 2.40002 11 2 11.5 2H12.6C13.2 2 13.6 2.40002 13.7 2.90002L13.9 4.19995C14.7 4.39995 15.5 4.69995 16.2 5.19995L17.3 4.40002C17.7 4.10002 18.4 4.1 18.8 4.5L19.6 5.29993C20 5.69993 20 6.29993 19.7 6.79993L18.9 7.90002C19.3 8.60002 19.7 9.39995 19.9 10.2L21.2 10.4C21.7 10.5 22.1 11 22.1 11.5ZM12.1 8.59998C10.2 8.59998 8.6 10.2 8.6 12.1C8.6 14 10.2 15.6 12.1 15.6C14 15.6 15.6 14 15.6 12.1C15.6 10.2 14 8.59998 12.1 8.59998Z"
                                        fill="currentColor" />
                                    <path
                                        d="M17.1 12.1C17.1 14.9 14.9 17.1 12.1 17.1C9.30001 17.1 7.10001 14.9 7.10001 12.1C7.10001 9.29998 9.30001 7.09998 12.1 7.09998C14.9 7.09998 17.1 9.29998 17.1 12.1ZM12.1 10.1C11 10.1 10.1 11 10.1 12.1C10.1 13.2 11 14.1 12.1 14.1C13.2 14.1 14.1 13.2 14.1 12.1C14.1 11 13.2 10.1 12.1 10.1Z"
                                        fill="currentColor" />
                                </svg>
                            </span>
                            <!--end::Svg Icon-->
                        </a>
                        <!--begin::User account menu-->
                        <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color fw-semibold py-4 fs-6 w-275px"
                            data-kt-menu="true">
                            <!--begin::Menu item-->
                            <div class="menu-item px-3">
                                <div class="menu-content d-flex align-items-center px-3">
                                    <!--begin::Avatar-->
                                    <div class="symbol symbol-50px me-5">
                                        <img src="{{ asset('assets/media/avatars/admin.jpg') }}" alt="" />
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Username-->
                                    <div class="d-flex
                                            flex-column">
                                        <div class="fw-bold d-flex align-items-center fs-5">{{ Auth::user()->name }}
                                        </div>
                                        <a href="#"
                                            class="fw-semibold text-muted text-hover-primary fs-7">{{ Auth::user()->email }}</a>
                                    </div>
                                    <!--end::Username-->
                                </div>
                            </div>
                            <!--end::Menu item-->
                            <!--begin::Menu separator-->
                            <div class="separator my-2"></div>
                            <!--end::Menu separator-->
                            <!--begin::Menu item-->
                            <!--end::Menu item-->

                            <!--begin::Menu separator-->
                            <div class="separator my-2"></div>
                            <!--end::Menu separator-->
                            <!--begin::Menu item-->
                            <div class="menu-item px-5">
                                <a href="{{ route('logout') }}" class="menu-link px-5">Sign Out</a>
                            </div>
                            <!--end::Menu item-->
                        </div>
                        <!--end::User account menu-->
                        <!--end::Action-->
                    </div>
                    <!--end::User menu-->
                </div>
                <!--end::Section-->
            </div>
            <!--end::Wrapper-->
        </div>
        <!--end::User-->
        <!--end::Aside user-->
    </div>
    <!--end::Aside Toolbarl-->
    <!--begin::Aside menu-->
    <div class="aside-menu flex-column-fluid" style="background-color: rgb(0, 0, 0)">
        <!--begin::Aside Menu-->
        <div class="hover-scroll-overlay-y px-2 my-5 my-lg-5" id="kt_aside_menu_wrapper" data-kt-scroll="true"
            data-kt-scroll-height="auto"
            data-kt-scroll-dependencies="{default: '#kt_aside_toolbar, #kt_aside_footer', lg: '#kt_header, #kt_aside_toolbar, #kt_aside_footer'}"
            data-kt-scroll-wrappers="#kt_aside_menu" data-kt-scroll-offset="5px">
            <!--begin::Menu-->
            <div class="menu menu-column menu-title-gray-800 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500"
                id="#kt_aside_menu" data-kt-menu="true">
                <!--begin:Menu item-->
                <div class="menu-item">
                    <!--begin:Menu link-->
                    <a class="menu-link {{ request()->is('dashboard') ? 'active' : '' }}"
                        href="{{ route('dashboard') }}">
                        <span class="menu-icon">
                            <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                            <svg width="20" height="17" viewBox="0 0 20 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 17V11H12V17H17V9H20L10 0L0 9H3V17H8Z" fill="white"/>
                                </svg>                                
                            <!--end::Svg Icon-->
                        </span>
                        <span class="menu-title">Dashboards</span>
                    </a>
                    <!--end:Menu link-->
                </div>
                <!--end:Menu item-->
                <!--begin:Menu item-->
                <!--end:Menu item-->
                <!--begin:Menu item-->
                <div class="menu-item">
                    <!--begin:Menu link-->
                    <a class="menu-link {{ request()->is('products') ? 'active' : '' }}"
                        href="{{ route('products.index') }}">
                        <span class="menu-icon">
                            <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                            <svg width="30" height="28" viewBox="0 0 30 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M22.6994 27.75H24.8589C25.9516 27.75 26.8492 26.9375 26.9792 25.9125L29.1256 5.3125H22.6214V0.25H20.0587V5.3125H13.5935L13.9838 8.2375C16.2082 8.825 18.2896 9.8875 19.5384 11.0625C21.4116 12.8375 22.6994 14.675 22.6994 17.675V27.75ZM0.506958 26.5V25.25H20.0587V26.5C20.0587 27.175 19.4733 27.75 18.7188 27.75H1.80781C1.09234 27.75 0.506958 27.175 0.506958 26.5ZM20.0587 17.75C20.0587 7.75 0.506958 7.75 0.506958 17.75H20.0587ZM0.506958 20.25H20.0197V22.75H0.506958V20.25Z" fill="#FFFEFE"/>
                                </svg>                                                                                         
                        </span>
                        <span class="menu-title">Dish</span>
                    </a>
                    <!--end:Menu link-->
                </div>
                <!--end:Menu item-->
                <!--begin:Menu item-->
                <div class="menu-item">
                    <!--begin:Menu link-->
                    <a class="menu-link {{ request()->is('lapangan') ? 'active' : '' }}"
                        href="{{ route('lapangan.index') }}">
                        <span class="menu-icon">
                            <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                            <svg width="35" height="22" viewBox="0 0 35 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3.79899 0.333374C1.88926 0.333374 0.358032 1.52004 0.358032 3.00004V19C0.358032 19.7073 0.72056 20.3856 1.36586 20.8857C2.01117 21.3858 2.88639 21.6667 3.79899 21.6667H31.3266C32.2392 21.6667 33.1144 21.3858 33.7598 20.8857C34.4051 20.3856 34.7676 19.7073 34.7676 19V3.00004C34.7676 1.52004 33.2192 0.333374 31.3266 0.333374H3.79899ZM3.79899 3.00004H15.8423V5.84004C12.8143 6.45337 10.6809 8.57337 10.6809 11C10.6809 13.4267 12.8143 15.5467 15.8423 16.16V19H3.79899V16.3334H8.96042V5.66671H3.79899V3.00004ZM19.2833 3.00004H31.3266V5.66671H26.1652V16.3334H31.3266V19H19.2833V16.16C22.3113 15.5467 24.4447 13.4267 24.4447 11C24.4447 8.57337 22.3113 6.45337 19.2833 5.84004V3.00004ZM3.79899 8.33337H5.51947V13.6667H3.79899V8.33337ZM29.6062 8.33337H31.3266V13.6667H29.6062V8.33337ZM19.2833 8.69337C20.35 9.17337 21.0038 10.0534 21.0038 11C21.0038 11.9467 20.35 12.8267 19.2833 13.3067V8.69337ZM15.8423 8.69337V13.3067C14.7756 12.8267 14.1219 11.9467 14.1219 11C14.1219 10.0534 14.7756 9.17337 15.8423 8.69337Z" fill="white"/>
                                </svg>                                                               
                        </span>
                        <span class="menu-title">Field</span>
                    </a>
                    <!--end:Menu link-->
                </div>
                <!--end:Menu item-->
                <!--begin:Menu item-->
                <div class="menu-item">
                    <!--begin:Menu link-->
                    <a class="menu-link {{ request()->is('orders') ? 'active' : '' }}"
                        href="{{ route('orders.index') }}">
                        <span class="menu-icon">
                            <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                            <svg width="39" height="35" viewBox="0 0 39 35" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M28.8055 35.0001C30.6615 35.0001 32.1661 33.7096 32.1661 32.1177C32.1661 30.5258 30.6615 29.2354 28.8055 29.2354C26.9494 29.2354 25.4448 30.5258 25.4448 32.1177C25.4448 33.7096 26.9494 35.0001 28.8055 35.0001Z" fill="white"/>
                                <path d="M13.4425 35.0001C15.2986 35.0001 16.8032 33.7096 16.8032 32.1177C16.8032 30.5258 15.2986 29.2354 13.4425 29.2354C11.5865 29.2354 10.0819 30.5258 10.0819 32.1177C10.0819 33.7096 11.5865 35.0001 13.4425 35.0001Z" fill="white"/>
                                <path d="M6.89411 4.43059L6.51003 8.46588C6.43322 9.24 7.14375 9.88235 8.04632 9.88235H37.4471C38.2536 9.88235 38.9258 9.35529 38.9834 8.66353C39.233 5.74824 36.6405 3.37647 33.2415 3.37647H9.64023C9.44819 2.65176 9.06412 1.96 8.4688 1.38353C7.50862 0.510588 6.16437 0 4.78171 0H1.44027C0.652924 0 0 0.56 0 1.23529C0 1.91059 0.652924 2.47059 1.44027 2.47059H4.78171C5.37702 2.47059 5.93392 2.68471 6.3372 3.04706C6.74048 3.42588 6.93251 3.92 6.89411 4.43059Z" fill="white"/>
                                <path d="M36.9864 12.353H7.52793C6.72138 12.353 6.06846 12.8801 5.99164 13.5554L5.30031 20.7201C5.03146 23.5366 7.60475 25.9413 10.8886 25.9413H32.2431C35.1237 25.9413 37.6585 23.9154 37.8698 21.4448L38.5035 13.753C38.5803 12.9954 37.889 12.353 36.9864 12.353Z" fill="white"/>
                                </svg>
                                
                        </span>
                        <span class="menu-title">Orders</span>
                    </a>
                    <!--end:Menu link-->
                </div>
                <!--end:Menu item-->
                <!--begin:Menu item-->
                <div class="menu-item">
                    <!--begin:Menu link-->
                    <a class="menu-link {{ request()->is('booking-lapangan') ? 'active' : '' }}"
                        href="{{ route('booking-lapangan.index') }}">
                        <span class="menu-icon">
                            <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                            <svg width="22" height="24" viewBox="0 0 22 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M19.3333 0H2.41667C1.0875 0 0 1.1625 0 2.58333V20.6667C0 22.0875 1.0875 23.25 2.41667 23.25H19.3333C20.6625 23.25 21.75 22.0875 21.75 20.6667V2.58333C21.75 1.1625 20.6625 0 19.3333 0ZM4.83333 5.16667H7.25V7.75H4.83333V5.16667ZM4.83333 10.3333H7.25V12.9167H4.83333V10.3333ZM4.83333 15.5H7.25V18.0833H4.83333V15.5ZM16.9167 18.0833H9.66667V15.5H16.9167V18.0833ZM16.9167 12.9167H9.66667V10.3333H16.9167V12.9167ZM16.9167 7.75H9.66667V5.16667H16.9167V7.75Z" fill="white"/>
                                </svg>                                
                        </span>
                        <span class="menu-title">Field Booking</span>
                    </a>
                    <!--end:Menu link-->
                </div>
                <!--end:Menu item-->
                      <!--begin:Menu item-->
                      <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link {{ request()->is('event') ? 'active' : '' }}"
                            href="{{ route('event.index') }}">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                <svg width="67" height="56" viewBox="0 0 67 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M60.125 40.5V18H18.7084V40.5H60.125ZM60.125 5.5C61.6942 5.5 63.1992 6.02678 64.3088 6.96447C65.4183 7.90215 66.0417 9.17392 66.0417 10.5V40.5C66.0417 41.8261 65.4183 43.0979 64.3088 44.0355C63.1992 44.9732 61.6942 45.5 60.125 45.5H18.7084C15.4246 45.5 12.7917 43.25 12.7917 40.5V10.5C12.7917 9.17392 13.4151 7.90215 14.5247 6.96447C15.6342 6.02678 17.1392 5.5 18.7084 5.5H21.6667V0.5H27.5834V5.5H51.25V0.5H57.1667V5.5H60.125ZM49.8596 25.65L36.7246 36.75L28.7963 30.05L31.9321 27.4L36.7246 31.45L46.7238 23L49.8596 25.65ZM6.87504 50.5H48.2917V55.5H6.87504C3.59129 55.5 0.958374 53.25 0.958374 50.5V20.5H6.87504V50.5Z" fill="white"/>
                                    </svg>                                                                
                            </span>
                            <span class="menu-title">Event</span>
                        </a>
                        <!--end:Menu link-->
                    </div>

                    <div class="menu-item">
                        <!--begin:Menu link-->
                        <a class="menu-link {{ request()->is('customer') ? 'active' : '' }}"
                            href="{{ route('customer.index') }}">
                            <span class="menu-icon">
                                <!--begin::Svg Icon | path: icons/duotune/general/gen025.svg-->
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M12 2a5 5 0 0 1 5 5v2a5 5 0 0 1-10 0V7a5 5 0 0 1 5-5zM12 14c3.866 0 7 3.134 7 7M5 21h14a2 2 0 0 0 2-2v-1c0-3.866-3.134-7-7-7H10c-3.866 0-7 3.134-7 7v1a2 2 0 0 0 2 2z"fill="white"/>
                                  </svg>
                                                                                                
                            </span>
                            <span class="menu-title">Customer</span>
                        </a>
                        <!--end:Menu link-->
                    </div>
                </div>
            <!--end::Menu-->
        </div>
        <!--end::Aside Menu-->
    </div>
    <!--end::Aside menu-->
</div>
