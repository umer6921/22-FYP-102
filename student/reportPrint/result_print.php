<!DOCTYPE html>
<html>

<head>
    <title>Student Result Print</title>
    <link href="../../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row-fluid">
                        <div class="span12">
                            <h3 class="text-center shadowhead txtbold">Student Result Print</h3>
                            <table class="table table-strip" id="txtStudentPrint">

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../../assets/plugins/jquery/jquery-2.1.4.min.js"></script>

    <script type="text/javascript">
        $(function() {


            var opener = window.opener;
            var parentCopy = opener.$('#text-student-result').clone();
            $('#txtStudentPrint').append(parentCopy);

        });
    </script>