<?php include('./layouts/header.php'); ?>

<?php include('./layouts/mainnav.php');?>
<div class="page-inner">
    <div class="page-title">
        <h3>Admin Dashboard</h3>
        <div class="page-breadcrumb">
            <ol class="breadcrumb">
                <li><a href="./">Home</a></li>
                <li class="active">Admin Dashboard</li>
            </ol>
        </div>
    </div>
    <div id="main-wrapper">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="panel info-box panel-white">
                    <div class="panel-body">
                        <div class="info-box-stats">
                            <p class="counter"><?php echo number_format($departments); ?></p>
                            <span class="info-box-title">DEPARTMENTS</span>
                        </div>
                        <div class="info-box-icon">
                            <i class="icon-folder"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel info-box panel-white">
                    <div class="panel-body">
                        <div class="info-box-stats">
                            <p class="counter"><?php echo number_format($teachers); ?></p>
                            <span class="info-box-title">TEACHERS</span>
                        </div>
                        <div class="info-box-icon">
                            <i class="icon-user"></i>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel info-box panel-white">
                    <div class="panel-body">
                        <div class="info-box-stats">
                            <p class="counter"><?php echo number_format($students); ?></p>
                            <span class="info-box-title">STUDENTS</span>
                        </div>
                        <div class="info-box-icon">
                            <i class="icon-user"></i>
                        </div>

                    </div>
                </div>
            </div>
         
            <div class="col-lg-3 col-md-6">
                <div class="panel info-box panel-white">
                    <div class="panel-body">
                        <div class="info-box-stats">
                            <p class="counter"><?php echo number_format($subjects); ?></p>
                            <span class="info-box-title">SUBJECTS</span>
                        </div>
                        <div class="info-box-icon">
                            <i class="icon-docs"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="panel info-box panel-white">
                    <div class="panel-body">
                        <div class="info-box-stats">
                            <p class="counter"><?php echo number_format($categories); ?></p>
                            <span class="info-box-title">CATEGORIES <?php echo "$fp $pp"; ?></span>
                        </div>
                        <div class="info-box-icon">
                            <i class="icon-tag"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel info-box panel-white">
                    <div class="panel-body">
                        <div class="info-box-stats">
                            <p class="counter"><?php echo number_format($notice); ?></p>
                            <span class="info-box-title">NOTICE</span>
                        </div>
                        <div class="info-box-icon">
                            <i class="icon-list"></i>
                        </div>

                    </div>
                </div>
            </div>
          
            <div class="col-lg-3 col-md-6">
                            <div class="panel info-box panel-white">
                                <div class="panel-body">
                                    <div class="info-box-stats">
                                        <p class="counter"><?php echo number_format($banned_students); ?></p>
                                        <span class="info-box-title">BANNED STUDENTS</span>
                                    </div>
                                    <div class="info-box-icon">
                                        <i class="icon-lock"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
        </div>
       

</div>
