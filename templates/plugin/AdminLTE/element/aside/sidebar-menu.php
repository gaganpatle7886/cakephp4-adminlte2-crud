<ul class="sidebar-menu" data-widget="tree">
  <li class="header">MAIN NAVIGATION</li>
  <li class="treeview">
    <a href="#">
      <i class="fa fa-dashboard"></i> <span>Users</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="<?php echo $this->Url->build('/users/add'); ?>"><i class="fa fa-circle-o"></i> New User</a></li>
      <li><a href="<?php echo $this->Url->build('/users'); ?>"><i class="fa fa-circle-o"></i>List of Users</a></li>
    </ul>
  </li>

    <li class="treeview">
        <a href="#">
            <i class="fa fa-dashboard"></i> <span>Services</span>
            <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
        </a>
        <ul class="treeview-menu">
            <li><a href="<?php echo $this->Url->build('/services/add'); ?>"><i class="fa fa-circle-o"></i> New Service</a></li>
            <li><a href="<?php echo $this->Url->build('/services'); ?>"><i class="fa fa-circle-o"></i>List of Services</a></li>
        </ul>
    </li>


    <li class="treeview">
        <a href="#">
            <i class="fa fa-dashboard"></i> <span>Jobs</span>
            <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
        </a>
        <ul class="treeview-menu">
            <li><a href="<?php echo $this->Url->build('/jobs/add'); ?>"><i class="fa fa-circle-o"></i> New Job</a></li>
            <li><a href="<?php echo $this->Url->build('/jobs'); ?>"><i class="fa fa-circle-o"></i>List of Jobs</a></li>
        </ul>
    </li>


    <li class="treeview">
        <a href="#">
            <i class="fa fa-dashboard"></i> <span>Job Types</span>
            <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
        </a>
        <ul class="treeview-menu">
            <li><a href="<?php echo $this->Url->build('/job-types/add'); ?>"><i class="fa fa-circle-o"></i> New Job Type</a></li>
            <li><a href="<?php echo $this->Url->build('/job-types'); ?>"><i class="fa fa-circle-o"></i>List of Job Types</a></li>
        </ul>
    </li>

</ul>
