<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('user_model');
        $this->load->library('session');
        $this->load->library('form_validation');
    }

    public function index() {
        $this->load->view('login_registration');
    }

    public function login() {
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('login_registration');
        } else {
            $email = $this->input->post('email');
            $password = $this->input->post('password');

            $user = $this->user_model->get_user($email, $password);

            if ($user) {
                $user_data = array(
                    'user_id' => $user->id,
                    'email' => $user->email,
                    'logged_in' => TRUE
                );
                $this->session->set_userdata($user_data);
                redirect('auth/dashboard');
            } else {
                $this->session->set_flashdata('error_msg', 'Invalid email or password');
                redirect('auth');
            }
        }
    }

    public function register() {
        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('reg_email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('reg_password', 'Password', 'required');
        $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required|matches[reg_password]');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('login_registration');
        } else {
            $data = array(
                'name' => $this->input->post('name'),
                'email' => $this->input->post('reg_email'),
                'password' => password_hash($this->input->post('reg_password'), PASSWORD_DEFAULT)
            );

            $result = $this->user_model->insert_user($data);

            if ($result) {
                redirect('auth/dashboard');
            } else {
                $this->session->set_flashdata('error_msg', 'Failed to register');
                redirect('auth');
            }
        }
    }

    public function dashboard() {
        if ($this->session->userdata('logged_in')) {
            $this->load->view('dashboard');
        } else {
            redirect('auth');
        }
    }

    public function logout() {
        $this->session->unset_userdata('user_id');
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('logged_in');
        redirect('auth');
    }
}
?>
