@php
    if (empty($authUser) and auth()->check()) {
        $authUser = auth()->user();
    }

    $navBtnUrl = null;
    $navBtnText = null;

    if(request()->is('forums*')) {
        $navBtnUrl = '/forums/create-topic';
        $navBtnText = trans('update.create_new_topic');
    } else {
        $navbarButton = getNavbarButton(!empty($authUser) ? $authUser->role_id : null);

        if (!empty($navbarButton)) {
            $navBtnUrl = $navbarButton->url;
            $navBtnText = $navbarButton->title;
        }
    }
@endphp

<div id="navbarVacuum"></div>
<nav id="navbar" class="navbar navbar-expand-lg navbar-light">
    <div class="{{ (!empty($isPanel) and $isPanel) ? 'container-fluid' : 'container'}}">
        <div class="d-flex align-items-center justify-content-between w-100">

            @php
                if(Auth::check()){
                    $role = Auth::user()->role_id;
                }
            @endphp


            @if(isset($role))
            <a class="navbar-brand navbar-order d-flex align-items-center justify-content-center mr-0 {{ (empty($navBtnUrl) and empty($navBtnText)) ? 'ml-auto' : '' }}" href="{{ ($role == 1 || $role == 4) ? '/panel' : '/' }}">
                @if(!empty($generalSettings['logo']))
                    <img src="{{ $generalSettings['logo'] }}" class="img-cover" alt="site logo" style="object-fit: scale-down !important;">
                @endif
            </a> 
            @else
            <a class="navbar-brand navbar-order d-flex align-items-center justify-content-center mr-0 {{ (empty($navBtnUrl) and empty($navBtnText)) ? 'ml-auto' : '' }}" href="/">
                @if(!empty($generalSettings['logo']))
                    <img src="{{ $generalSettings['logo'] }}" class="img-cover" alt="site logo" style="object-fit: scale-down !important;">
                @endif
            </a>
            @endif

            <button class="navbar-toggler navbar-order" type="button" id="navbarToggle">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="mx-lg-30 d-none d-lg-flex flex-grow-1 navbar-toggle-content " id="navbarContent">
                <div class="navbar-toggle-header text-right d-lg-none">
                    <button class="btn-transparent" id="navbarClose">
                        <i data-feather="x" width="32" height="32"></i>
                    </button>
                </div>

                {{--<ul class="navbar-nav mr-auto d-flex align-items-center">
                    @if(!empty($categories) and count($categories))
                        <li class="mr-lg-25">
                            <div class="menu-category">
                                <ul>
                                    <li class="cursor-pointer user-select-none d-flex xs-categories-toggle">
                                        <i data-feather="grid" width="20" height="20" class="mr-10 d-none d-lg-block"></i>
                                        {{ trans('categories.categories') }}

                                        <ul class="cat-dropdown-menu">
                                            @foreach($categories as $category)
                                                <li>
                                                    <a href="{{ (!empty($category->subCategories) and count($category->subCategories)) ? '#!' : $category->getUrl() }}">
                                                        <div class="d-flex align-items-center">
                                                            <img src="{{ $category->icon }}" class="cat-dropdown-menu-icon mr-10" alt="{{ $category->title }} icon">
                                                            {{ $category->title }}
                                                        </div>

                                                        @if(!empty($category->subCategories) and count($category->subCategories))
                                                            <i data-feather="chevron-right" width="20" height="20" class="d-none d-lg-inline-block ml-10"></i>
                                                            <i data-feather="chevron-down" width="20" height="20" class="d-inline-block d-lg-none"></i>
                                                        @endif
                                                    </a>

                                                    @if(!empty($category->subCategories) and count($category->subCategories))
                                                        <ul class="sub-menu">
                                                            @foreach($category->subCategories as $subCategory)
                                                                <li>
                                                                    <a href="{{ $subCategory->getUrl() }}">
                                                                        @if(!empty($subCategory->icon))
                                                                        <img src="{{ $subCategory->icon }}" class="cat-dropdown-menu-icon mr-10" alt="{{ $subCategory->title }} icon">
                                                                        @endif

                                                                        {{ $subCategory->title }}
                                                                    </a>
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                    @endif
                                                </li>
                                            @endforeach
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    @endif

                    @if(!empty($navbarPages) and count($navbarPages))
                        @foreach($navbarPages as $navbarPage)
                            <li class="nav-item">
                                <a class="nav-link" href="{{ $navbarPage['link'] }}">{{ $navbarPage['title'] }}</a>
                            </li>
                        @endforeach
                    @endif
                </ul>--}}

                {{--@include(getTemplate().'.includes.notification-dropdown')--}}

                @if(!empty($authUser))
                    <div class="dropdown">
                        <a href="#!" class="navbar-user d-flex align-items-center ml-50 dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="{{ $authUser->getAvatar() }}" class="rounded-circle" alt="{{ $authUser->full_name }}" style="width:40px;height:40px;object-fit:contain;">
                            <span class="font-16 user-name ml-10 text-dark-blue font-14">{{ $authUser->full_name }}</span>
                        </a>

                        <div class="dropdown-menu user-profile-dropdown" aria-labelledby="dropdownMenuButton">
                            <div class="d-md-none border-bottom mb-20 pb-10 text-right">
                                <i class="close-dropdown" data-feather="x" width="32" height="32" class="mr-10"></i>
                            </div>

                            <a class="dropdown-item" href="{{ $authUser->isAdmin() ? '/admin' : '/panel' }}">
                                <img src="/assets/default/img/icons/sidebar/dashboard.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue">{{ trans('public.my_panel') }}</span>
                            </a>
                            @if($authUser->isTeacher() or $authUser->isOrganization())
                                <a class="dropdown-item" href="{{ $authUser->getProfileUrl() }}">
                                    <img src="/assets/default/img/icons/profile.svg" width="25" alt="nav-icon">
                                    <span class="font-14 text-dark-blue">{{ trans('public.my_profile') }}</span>
                                </a>
                            @endif
                            <a class="dropdown-item" href="/logout">
                                <img src="/assets/default/img/icons/sidebar/logout.svg" width="25" alt="nav-icon">
                                <span class="font-14 text-dark-blue">{{ trans('panel.log_out') }}</span>
                            </a>
                        </div>
                    </div>
                @else
                    <div class="d-flex align-items-center ml-md-50">
                        <a href="/login" class="py-5 px-10 mr-10 text-dark-blue font-14">{{ trans('auth.login') }}</a>
                        <a href="/register" class="py-5 px-10 text-dark-blue font-14">{{ trans('auth.register') }}</a>
                    </div>
                @endif

            </div>

            <div class="nav-icons-or-start-live navbar-order">

                @if(!empty($navBtnUrl))
                    {{--<a href="{{ $navBtnUrl }}" class="d-none d-lg-flex btn btn-sm btn-primary nav-start-a-live-btn">
                        {{ $navBtnText }}
                    </a>--}}

                    {{--<a href="{{ $navBtnUrl }}" class="d-flex d-lg-none text-primary nav-start-a-live-btn font-14">
                        {{ $navBtnText }}
                    </a>--}}
                @endif

                <div class="d-none nav-notify-cart-dropdown top-navbar ">
                    {{--@include(getTemplate().'.includes.shopping-cart-dropdwon')--}}

                    <div class="border-left mx-15"></div>

                    @include(getTemplate().'.includes.notification-dropdown')
                </div>
                

            </div>
        </div>
    </div>
</nav>

@push('scripts_bottom')
    <script src="/assets/default/js/parts/navbar.min.js"></script>
@endpush
