<?php
error_reporting(E_ALL);

/* Define database parameters here */
define("DB_HOST", 'localhost');
define("DB_USER", 'root');
define("DB_PASSWORD", '');
define("DB_NAME", 'oes_db');
define("OUTPUT_DIR", 'dbBackup'); // Folder Path / Directory Name
define("TABLES", '*');

/* Instantiate Backup_Database and perform backup */
$backupDatabase = new Backup_Database(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

$status = $backupDatabase->backupTables(TABLES, OUTPUT_DIR) ? 'OK' : 'KO';

header("location:backup.php?rp=10097849766");


/* The Backup_Database class */
class Backup_Database {

    private $conn;

    /* Constructor initializes database */
    function __construct( $host, $username, $passwd, $dbName, $charset = 'utf8' ) {
        $this->dbName = $dbName;
        $this->connectDatabase( $host, $username, $passwd, $charset );
    }


    protected function connectDatabase( $host, $username, $passwd, $charset ) {
        $this->conn = mysqli_connect( $host, $username, $passwd, $this->dbName);

        if (mysqli_connect_errno()) {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
            exit();
        }

        /* change character set to $charset Ex : "utf8" */
        if (!mysqli_set_charset($this->conn, $charset)) {
            printf("Error loading character set ".$charset.": %s\n", mysqli_error($this->conn));
            exit();
        }
    }


    /* Backup the whole database or just some tables Use '*' for whole database or 'table1 table2 table3...' @param string $tables  */
    public function backupTables($tables = '*', $outputDir = '.') {
        try {
            /* Tables to export  */
            if ($tables == '*') {
                $tables = array();
                $result = mysqli_query( $this->conn, 'SHOW TABLES' );

                while ( $row = mysqli_fetch_row($result) ) {
                    $tables[] = $row[0];
                }
            } else {
                $tables = is_array($tables) ? $tables : explode(',', $tables);
            }

            $sql = 'CREATE DATABASE IF NOT EXISTS ' . $this->dbName . ";\n\n";
            $sql .= 'USE ' . $this->dbName . ";\n\n";

            /* Iterate tables */
            foreach ($tables as $table) {
                // echo "Backing up " . $table . " table...";

                $result = mysqli_query( $this->conn, 'SELECT * FROM ' . $table );

                // Return the number of fields in result set
                $numFields = mysqli_num_fields($result);

                $sql .= 'DROP TABLE IF EXISTS ' . $table . ';';
                $row2 = mysqli_fetch_row( mysqli_query( $this->conn, 'SHOW CREATE TABLE ' . $table ) );

                $sql.= "\n\n" . $row2[1] . ";\n\n";

                for ($i = 0; $i < $numFields; $i++) {

                    while ($row = mysqli_fetch_row($result)) {

                        $sql .= 'INSERT INTO ' . $table . ' VALUES(';

                        for ($j = 0; $j < $numFields; $j++) {
                            $row[$j] = addslashes($row[$j]);
                            // $row[$j] = ereg_replace("\n", "\\n", $row[$j]);
                            if (isset($row[$j])) {
                                $sql .= '"' . $row[$j] . '"';
                            } else {
                                $sql.= '""';
                            }
                            if ($j < ($numFields - 1)) {
                                $sql .= ',';
                            }
                        }

                        $sql.= ");\n";
                    }
                } // End :: for loop

                mysqli_free_result($result); // Free result set

                $sql.="\n\n\n";
                // echo " OK <br/>" . "";
            }
        } catch (Exception $e) {
            var_dump($e->getMessage());
            return false;
        }

        return $this->saveFile($sql, $outputDir);
    }


    /* Save SQL to file @param string $sql */
    protected function saveFile(&$sql, $outputDir = '.') {
        if (!$sql)
            return false;

        try {
            $this->makeDir($outputDir);
            // file_put_contents('db-backup-' . $this->dbName . '-' . date("Ymd-His", time()) . '.sql', 'w+');
            $handle = fopen($outputDir . '/db-backup-' . $this->dbName . '-' . date("Ymd-His", time()) . '.sql', 'w+');
            fwrite($handle, $sql);
            fclose($handle);

            mysqli_close( $this->conn );
        } catch (Exception $e) {
            var_dump($e->getMessage());
            return false;
        }
        return true;
    }
    protected function makeDir($path)
    {
        return is_dir($path) || mkdir($path);
    }

} // End :: class Backup_Database
