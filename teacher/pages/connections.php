<?php
error_reporting(1);
class DBCon
{
    protected $servername;
    protected $username;
    protected $password;
    protected $dbname;
    function __construct()
    {
        $this->servername = "localhost";
        $this->username = "root";
        $this->password = "";
        $this->dbname = "oes_db";
        
    }
    public function dbConnection()
    {
        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
        if ($this->conn->connect_error) {
            die("<h2>Database Connection Failure : " . $this->conn->connect_error . "</h2><hr>");
        }
    }
    public function dbClose()
    {
        $this->close->close();
    }
}
$DB = new DBCon();
$DB->dbConnection();