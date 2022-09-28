<?php include('layouts/header.php'); ?>

<?php include('layouts/mainnav.php'); ?>
<div class="page-inner">
    <div class="page-title">
        <h3>Import Export</h3>
        <div class="page-breadcrumb">
            <ol class="breadcrumb">
                <li><a href="./">Home</a></li>
                <li class="active">Import Export </li>
            </ol>
        </div>
    </div>
    <div id="main-wrapper">
        <div class="row">
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <form action="./creating_backup.php" method="POST">
                    <div class="form-group">
                        <label for="txtExportDatabase">Export Database</label>
                        <input type="submit" class="form-control" value="Export Database" />
                    </div>
                </form>
                <?php if ((int) $ms == "1") : ?>
                    <div class="alert alert-success" id="snackbar">
                        <?php echo "$description"; ?>
                    </div>
                <?php header("location:..");
                endif; ?>
            </div>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                        <label for="txtExportDatabase">Import Database File</label>
                        <input type="file" name="file">
                        <input type="submit" name="submit" value="Import Database File">
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
<?php include('./layouts/footer.php'); ?>