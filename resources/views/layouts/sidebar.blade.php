        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark shadow-lg accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
                <div class="sidebar-brand-icon">
                    <img src="{{ asset('sample/posyandumawar-logo.png') }}" alt="Logo Posyandu Mawar" class="img-fluid"
                        width="40px">
                </div>
                <!-- <div class="sidebar-brand-text mx-3">P. Mawar </div> -->
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item {{ Request::is('dashboard') ? 'active' : '' }}">
                <a class="nav-link" href="/dashboard">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Data
            </div>

            <!-- Nav Item - Charts -->
            <li class="nav-item {{ Request::is('balita*') ? 'active' : '' }}">
                <a class="nav-link" href="/balita">
                    <i class="fas fa-fw fa-baby"></i>
                    <span>Data Balita</span></a>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item {{ Request::is('dataset*') ? 'active' : '' }}">
                <a class="nav-link" href="/dataset">
                    <i class="fas fa-fw fa-archive"></i>
                    <span>Dataset</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                KNN
            </div>

            <!-- Nav Item - Charts -->
            <li class="nav-item {{ Request::is('ukur-balita*') ? 'active' : '' }}">
                <a class="nav-link" href="/ukur-balita">
                    <i class="fas fa-fw fa-weight"></i>
                    <span>Ukur Balita</span></a>
            </li>


            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


        </ul>
        <!-- End of Sidebar -->
