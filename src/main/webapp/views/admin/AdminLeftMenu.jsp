<aside class="side-nav" id="show-side-navigation1">
    <i class="fa fa-bars close-aside hidden-sm hidden-md hidden-lg" data-close="show-side-navigation1" style="margin-top: 10px;"></i>
    <div class="heading">
      <img src="/images/adminicon.png">
      <div class="info" style="margin-left: 20px; margin-top: 10px; width:65%">
        <h3><a href="#">Admin</a></h3>
        <p>Admin Panel</p>
      </div>
    </div>

    <%-- <div class="search">
      <input type="text" placeholder="Type here"><i class="fa fa-search"></i>
    </div> --%>

    <ul class="categories">
      <li ><i class="fa fa-tachometer fa-fw" aria-hidden="true"></i><a> Dashboard</a>
      <ul class="side-nav-dropdown">
          <li><a href='AdminDashboard'>Home</a></li>
          <li><a href='AdminProfile'>Profile</a></li>
        </ul>
      </li>

      <li ><i class="fa fa-book fa-fw" aria-hidden="true"></i><a> Masters</a>
        <ul class="side-nav-dropdown">
          <li><a href='AdminAnnouncement'>News & Announcment</a></li>
          <%-- <li><a href=''>File Manager</a></li> --%>
          <%-- <li><a href=''>Manage Bank</a></li> --%>
          <%-- <li><a href=''>Manage Account</a></li> --%>
          <%-- <li><a href=''>Manage Kit</a></li> --%>
          <li><a href='AdminManageLocation'>Manage Locations</a></li>
          <%-- <li><a href='AdminManageCountry'>Manage Country</a></li>
          <li><a href='AdminManageState'>Manage State</a></li>
          <li><a href='AdminManageCity'>Manage City</a></li>
          <li><a href='AdminManageDistrict'>Manage District</a></li> --%>
          <%-- <li><a href=''>Task Manager</a></li> --%>
          <li><a href='AdminManageBanner'>Manage Banner</a></li>
          <li><a href='AdminManageAdvertisement'>Advertisement</a></li>
        </ul>
      </li>
      
      <%-- <li ><i class="fa fa-credit-card fa-fw" aria-hidden="true"></i><a> E-Pin Managenet</a>
        <ul class="side-nav-dropdown">
          <li><a href='genKycEpin'>Allot KYC e-Pin</a></li>
          <li><a href='sellEpin'>Generate e-Pin</a></li>
          <li><a href='list_voucher'>List e-Pin</a></li>
          <li><a href='trans_voucher'>e-Pin Transaction</a></li>
          <li><a href='requested_voucher'>Requested e-Pin</a></li>
          <li><a href='voucher_status'>e-Pin Status</a></li>
        </ul>
      </li> --%>


      <li ><i class="fa fa-users fa-fw" aria-hidden="true"></i><a> Profile Manager</a>
        <ul class="side-nav-dropdown">
          <li><a href='AdminJoinMember' target="_blank">New Joining</a></li>
          <li><a href=''>KYC Form</a></li>
          <%-- <li><a href='AdminEditProfile'>Edit Profile</a></li> --%>
          <li><a href='AdminViewProfile'>View Profile</a></li>
          <%-- <li><a href=''>KYC Pending</a></li> --%>
          <%-- <li><a href='AdminWelcomeLetter'>Welcome Letter</a></li> --%>
          <%-- <li><a href=''>Block/Unblock</a></li> --%>
          <%-- <li><a href=''>Upgrade Member</a></li> --%>
        </ul>
      </li>
      
      <li><i class="fa fa-server fa-fw"></i><a>Network Manager</a>
        <ul class="side-nav-dropdown">
        <li><a href='AdminViewNetwork'>View Network</a></li>
          <%-- <li><a href=''>Matching Tree</a></li> --%>
          <%-- <li><a href=''>Matrix Tree</a></li> --%>
          <%-- <li><a href=''>Downline Purchase</a></li>
          <li><a href=''>DownLine List</a></li>
          <li><a href=''>Manage PV</a></li> --%>
          <%-- <li><a href=''>Sponsor List</a></li> --%>
        </ul>
      </li>

      <li><i class="fa fa-briefcase fa-fw"></i><a> Financial Manager</a>
        <ul class="side-nav-dropdown">
          <%-- <li><a href=''>Deposit in Account</a></li>
          <li><a href=''>Deduct from Account</a></li> --%>
          <li><a href=''>Payout Request</a></li>        
        </ul>
      </li>

      <%-- <li><i class="fa fa-credit-card fa-fw"></i><a> IMPS Manager</a>
        <ul class="side-nav-dropdown">
          <li><a href=''>Add Beneficiary</a></li>
          <li><a href=''>Payout Payment</a></li>
        </ul>
      </li> --%>


      <li><i class="fa fa-user-circle fa-fw"></i><a> Incentive Account</a>
        <ul class="side-nav-dropdown">
          <li><a href=''>Payout Wise</a></li>
          <li><a href=''>Member Wise</a></li>
          <li><a href=''>Transaction History</a></li>
          <li><a href=''> Payout Requested</a></li>
          <li><a href=''>Ewallet Status</a></li>
        </ul>
      </li>


      <li><i class="fa fa-credit-card fa-fw"></i><a> Currency Wallet</a>
        <ul class="side-nav-dropdown">
          <li><a href=''>Total Income</a></li>
          <li><a href=''>Transaction History</a></li>
          <li><a href=''>Transfer</a></li>
        </ul>
      </li>


      <li><i class="fa fa-search fa-fw"></i><a> Member Search</a>
        <ul class="side-nav-dropdown">
          <li><a href=''>Search</a></li>
        </ul>
      </li>


      <li><i class="fa fa-envelope fa-fw"></i><a> Message Center</a>
        <ul class="side-nav-dropdown">
          <li><a href=''>Inbox</a></li>
          <li><a href=''>Compose Mail</a></li>
          <li><a href=''>Sent Mail</a></li>
        </ul>
      </li>


      <%-- <li><i class="fa fa-key fa-fw"></i><a> Manage Users</a>
        <ul class="side-nav-dropdown">
          <li><a href=''>Create Users</a></li>
          <li><a href=''> User Permissions</a></li>
        </ul>
      </li> --%>

    </ul>
  </aside>

  <jsp:include page="../alert.jsp" />
