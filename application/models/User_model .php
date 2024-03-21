<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function insert_user($data) {
        // Insert user data into the database
        $this->db->insert('users', $data);
        // Return TRUE if insertion is successful, else FALSE
        return $this->db->affected_rows() > 0;
    }

    // Add more methods as needed for user related operations
}
?>
