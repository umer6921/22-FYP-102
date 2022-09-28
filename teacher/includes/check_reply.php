<?php
if (isset($_GET['rp'])) {
    $error_code = mysqli_real_escape_string($DB->conn, $_GET['rp']);
    $sql = "SELECT * FROM tbl_alerts WHERE code = '$error_code'";
    $result = $DB->conn->query($sql);

    if ($result->num_rows > 0) {

        while ($row = $result->fetch_assoc()) {
            $ms = 1;
            $description = $row['description'];
        }
    } else {
        $ms = 0;
    }
}
