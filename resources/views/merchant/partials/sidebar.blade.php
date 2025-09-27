
 <?php
 $merchant = null;
 if (session()->has('merchant')) {
     $merchant = session()->get('merchant');
 }
 ?>
 <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel" style="border-bottom:1px solid #ddd;">

        <div class="pull-left image">
            @if ($merchant != null && !empty($merchant->image))
                <img src="{{ asset('storage/' . $merchant->image) }}" class="img-circle" alt="User Image">
            @else
                <img src="{{ asset('merchant/dist/img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
            @endif
        </div>
        <div class="pull-left info" style="top:1px;">
            @if ($merchant != null)
                <h4 style="color: #000;">{{ explode(' ', trim($merchant->name))[0] }}</h4>
            @endif
            <a style="color: black" href="#"><i class="fa fa-circle text-success"></i> Online</a>
            <br>
        </div>

    </div>
     
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="active treeview">
          <router-link :to="{name:'merchant_dashboard'}">
            <i class="fa fa-home"></i> <span>Dashboard</span>
            </router-link>
        </li>

        <li class="treeview">
          <router-link  :to="{ name: 'merchant_order'}"  > <i class="fa fa-list-alt"></i> Orders</router-link>
        </li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-cogs"></i> <span>products</span>
            <span class="pull-right-container">
              <i class="fa fa-plus pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li>   <router-link :to="{ name : 'merchant_product_add'}"><i class="fa fa-plus "></i> Add </router-link></li>
            <li>   <router-link :to="{ name : 'merchant_product_menage'}"><i class="fa fa-list "></i> Menage </router-link></li>
          </ul>
        </li>

        <li class="treeview">
          <router-link  :to="{ name: 'merchant_cashbook_income'}"  > <i class="fa fa-money"></i> Cashbook Income </router-link>
        </li>
         
        {{-- <li class="treeview">
          <router-link  :to="{ name: 'merchant_cashbook_pay_off'}"  > <i class="fa fa-money"></i> Cashbook Pay Off </router-link>
        </li> --}}

        <li class="treeview">
          <router-link  :to="{ name: 'merchant_payment_withdraw_request'}"  > <i class="fa fa-money"></i>  Withdraw Request</router-link>
        </li>

        <li class="treeview">
          <router-link  :to="{ name: 'merchant_payment_withdraw_history'}"  > <i class="fa fa-list"></i> Withdraw History </router-link>
        </li>



        {{-- <li class="treeview">
          <router-link  :to="{ name: 'merchant_payment'}"  > <i class="fa fa-list"></i> Payment Transactions </router-link>
        </li> --}}
         
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-user-circle"></i> <span> Profile</span>
            <span class="pull-right-container">
              <i class="fa fa-plus pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li> <router-link  :to="{ name: 'merchant_profile'}"  > <i class="fa fa-eye"></i> profile</router-link></li>
            <li> <router-link  :to="{ name: 'merchant_profile_edit' }"  > <i class="fa fa-edit"></i>edit profile info</router-link></li>
            <li> <router-link  :to="{ name: 'merchant_password_edit'}"  > <i class="fa fa-key"></i> change password</router-link></li>
            <li> <router-link  :to="{ name: 'merchant_contact'}"  > <i class="fa fa-key"></i> Phone </router-link></li>
          </ul>
        </li>

        <li class="treeview">
          <li>
              <router-link :to="{ name: 'merchant_slider' }"><i class="fa fa-arrow-circle-right"></i>Slider
              </router-link>
          </li>

        </li>
        
      

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>