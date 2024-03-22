<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function insert_user($data) {
        $this->db->insert('users', $data);
        return $this->db->affected_rows() > 0;
    }
    public function get_user($email, $password) {
        $query = $this->db->get_where('users', array('email' => $email));
        
        if ($query->num_rows() == 1) {
            $user = $query->row();
            if (password_verify($password, $user->password)) {
                return $user;
            }
        }
        return false;
    }
    public function getName() {
        $user_id = $this->session->userdata('user_id');
        $query = $this->db->select('name')->get_where('users', array('id' => $user_id));

        if ($query->num_rows() == 1) {
            $user = $query->row();
            return $user->name;
        } else {
            return false;
        }
    }
    public function get_user_by_id($user_id) {
        $query = $this->db->get_where('users', array('id' => $user_id));
        return $query->row();
    }

    public function update_user($user_id, $data) {
        $this->db->where('id', $user_id);
        $this->db->update('users', $data);
    }
    public function get_user_by_email($email) {
        $query = $this->db->get_where('users', array('email' => $email));
        if ($query->num_rows() > 0) {
            return $query->row();
        } else {
            return false;
        }
    }

    public function save_reset_token($user_id, $token) {
        $this->db->where('id', $user_id);
        $this->db->update('users', array('reset_token' => $token));
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }
    public function update_password_by_token($token, $password) {
        $this->db->where('reset_token', $token);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            $user_id = $query->row()->id;
            $this->db->where('id', $user_id);
            $this->db->update('users', array(
                'password' => password_hash($password, PASSWORD_DEFAULT),
                'reset_token' => NULL  // Reset the reset token after updating the password
            ));
            if ($this->db->affected_rows() > 0) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
    

}
?>
