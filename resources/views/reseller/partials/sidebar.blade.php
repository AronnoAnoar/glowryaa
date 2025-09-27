
 <?php
 $reseller = null;
 if (session()->has('reseller')) {
     $reseller = session()->get('reseller');
 }
 ?>
 <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
  
       <div class="user-panel" style="border-bottom:1px solid #ddd;">

        <div class="pull-left image">
            @if ($reseller != null && !empty($reseller->image))
                <img src="{{ asset('storage/' . $reseller->image) }}" class="img-circle" alt="User Image">
            @else
                <img src="{{ asset('reseller/dist/img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
            @endif
        </div>
        <div class="pull-left info" style="top:1px;">
            @if ($reseller != null)
                <h4 style="color: #000;">{{ explode(' ', trim($reseller->name))[0] }}</h4>
            @endif
            <a style="color: black" href="#"><i class="fa fa-circle text-success"></i> Online</a>
            <br>
        </div>

    </div>
     
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      
        <li class="active treeview">
          <router-link :to="{name:'reseller_dashboard'}">
            <i class="fa fa-home"></i> <span>Dashboard</span>
            </router-link>
        </li>


        
        <li class="treeview">
          <router-link  :to="{ name: 'reseller_add_new_order'}"  > <i class="fa fa-plus"></i> Add New Order </router-link>
        </li>
         

        <li class="treeview">
          <router-link  :to="{ name: 'reseller_order'}"  > <i class="fa fa-list-alt"></i> Orders List </router-link>
       
        </li>
            <li class="treeview">
          <router-link  :to="{ name: 'reseller_product_show'}"  > <i class="fa fa-list"></i> Product List </router-link>
        </li>
              
        <li class="treeview">
          <router-link  :to="{ name: 'reseller_cashbook_income'}"  > <i class="fa fa-money"></i> Cashbook Income </router-link>
        </li>
         
        <li class="treeview">
          <router-link  :to="{ name: 'reseller_cashbook_pay_off'}"  > <i class="fa fa-money"></i> Cashbook Pay Off </router-link>
        </li>

        <li class="treeview">
          <router-link  :to="{ name: 'reseller_payment_withdraw_request'}"  > <i class="fa fa-money"></i>  Withdraw Request</router-link>
        </li>

        <li class="treeview">
          <router-link  :to="{ name: 'reseller_payment_withdraw_history'}"  > <i class="fa fa-list"></i> Withdraw History </router-link>
        </li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-user-circle"></i> <span> Profile </span>
            <span class="pull-right-container">
              <i class="fa fa-plus pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li> <router-link  :to="{ name: 'reseller_profile'}"  > <i class="fa fa-eye"></i> profile</router-link></li>
            <li> <router-link  :to="{ name: 'reseller_profile_edit' }"  > <i class="fa fa-edit"></i>edit profile info</router-link></li>
            
          </ul>
        </li>

        <li class="treeview"> <router-link  :to="{ name: 'reseller_password_edit'}"  > <i class="fa fa-key"></i> Change Password</router-link></li>

        <li class="treeview">
          <router-link  :to="{ name: 'reseller_refered_list'}"  > <i class="fa fa-list"></i>  Referred Resellers</router-link>
        </li>
           
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

