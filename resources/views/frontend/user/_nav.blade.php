<div class="sidebar widget widget-dashboard mb-lg-0 mb-3 col-lg-3 order-0">
    <h2 class="text-uppercase">My Account</h2>
    <ul class="nav nav-tabs list flex-column mb-0" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" href="{{ route('user.dashboard') }}">Dashboard</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('orderHistory') }}">Orders</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('showProfile') }}">Profile</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{ route('wishlist') }}">Wishlist</a>
        </li>
        <li class="nav-item">
            <form action="{{ route('logout') }}" method="post">
                @csrf
                <button type="submit" class="nav-link" style="cursor: pointer;">
                    Logout
                </button>
            </form>
        </li>
    </ul>
</div>
