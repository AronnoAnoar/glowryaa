<div class="profile_left_side">
    <div class="profile_pic_content">
        <div class="profile_pic">
            @if (Auth::guard('customer')->user()->image != null)
                <img src="{{asset('storage/'.Auth::guard('customer')->user()->image)}}" alt="user">
            @else
                <img src="{{asset('frontend')}}/images/user/1.png" alt="{{Auth::guard('customer')->user()->name}}">
            @endif
        </div>
        <div class="profile_name">
            <h5>{{Auth::guard('customer')->user()->name}}</h5>
        </div>
    </div>
    <div class="profile_menu_list">
        <ul>
            <li>
                <a href="{{route('user.dashboard')}}" class="profile_menu_list_link">
                    <i class="fa-solid fa-table-cells-large"></i>
                    Dashboard
                </a>
            </li>
            <li>
                <a href="{{route('user.profile')}}" class="profile_menu_list_link">
                    <i class="fa-regular fa-user"></i>
                    Profile
                </a>
            </li>
            <li>
                <a href="{{route('user.profile.edit')}}" class="profile_menu_list_link">
                    <i class="fa-regular fa-pen-to-square"></i>
                    Edit Profile
                </a>
            </li>
            <li>
                <a href="{{route('user.change.password')}}" class="profile_menu_list_link">
                    <i class="fa-solid fa-key"></i>
                    Change Password
                </a>
            </li>
            <li>
                <a href="{{route('user.logout')}}" class="profile_menu_list_link">
                    <i class="fa-solid fa-right-from-bracket"></i>
                    Logout
                </a>
            </li>
        </ul>
    </div>
</div>