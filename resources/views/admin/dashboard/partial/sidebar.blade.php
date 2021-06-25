<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link">
      <span class="brand-text font-weight-light">Mental Care</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('DashboardMC',auth()->user()->foto_profile)}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Admin</a>
        </div>
      </div>

      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-header">Menu</li>
         @if (Auth::user()->role=='admin')
         <li class="nav-item">
          <a href="/home" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Dashboard</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="/psikolog" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Psikolog</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="/kategori" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Kategori</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{route('pasienad.index')}}" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Pasien</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{route('adminjanji.index')}}" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Jadwal Janji</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="/articlead" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Artikel</p>
          </a>
        </li>
        <li class="nav-item mt-5 pt-5">
          <form action="{{route('logout')}}" method="post">
          <input type="submit" value="Logout" class="nav-link">
            @csrf
            {{-- <i class="fas fa-circle nav-icon"></i> --}}
            {{-- <p class="mt-5">Keluar</p> --}}
          </a>
          </form>
        </li>  
        @else
        <li class="nav-item">
          <a href="/psikolog" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Psikolog</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{route('pasienad.index')}}" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Pasien</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{route('adminjanji.index')}}" class="nav-link">
            <i class="fas fa-circle nav-icon"></i>
            <p>Jadwal Janji</p>
          </a>
        </li>
        <li class="nav-item mt-5 pt-5">
          <form action="{{route('logout')}}" method="post">
          <input type="submit" value="Logout" class="nav-link">
            @csrf
            {{-- <i class="fas fa-circle nav-icon"></i> --}}
            {{-- <p class="mt-5">Keluar</p> --}}
          </a>
          </form>
        </li>  
         @endif

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>