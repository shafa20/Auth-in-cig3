<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function __construct() {
        parent::__construct();
         $this->load->model('news_model');
         $this->load->library('session');
         $this->load->library('form_validation');
         $this->load->model('user_model');
    }

    public function index() {
        $this->load->view('welcome_message');
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
                $this->session->set_flashdata('success_msg', 'Registration completed successfully You Can Login Now');
                redirect('auth');
            } else {
                $this->session->set_flashdata('error_msg', 'Failed to register');
                redirect('auth');
            }
        }
    }


    

    public function profile() {
        if ($this->session->userdata('logged_in')) {
            $user_id = $this->session->userdata('user_id');
            $data['user'] = $this->user_model->get_user_by_id($user_id);
            $this->load->view('profile', $data);
        } else {
            redirect('auth');
        }
    }

   
    public function update_profile() {
        if ($this->session->userdata('logged_in')) {
            $this->form_validation->set_rules('name', 'Name', 'trim');
            $this->form_validation->set_rules('email', 'Email', 'trim|valid_email');
            $this->form_validation->set_rules('password', 'Password', 'trim');
            $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'trim');
    
            if ($this->input->post('password') != '') {
                $this->form_validation->set_rules('password', 'Password', 'required');
                $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required|matches[password]');
            }
            if ($this->input->post('confirm_password') != '') {
                $this->form_validation->set_rules('password', 'Password', 'required');
                $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required|matches[password]');
            }
    
            if ($this->form_validation->run() == FALSE) {
                $this->session->set_flashdata('error_msg', 'Please enter the information correctly.');
                redirect('auth/profile');
            } else {
                $user_id = $this->session->userdata('user_id');
                $data = array(
                    'name' => $this->input->post('name'),
                    'email' => $this->input->post('email'),
                );
    
                if ($this->input->post('password') != '') {
                    $data['password'] = password_hash($this->input->post('password'), PASSWORD_DEFAULT);
                }
    
                $this->user_model->update_user($user_id, $data);
                $this->session->set_flashdata('success_msg', 'Profile updated successfully.');
                redirect('auth/profile');
            }
        } else {
            redirect('auth');
        }
    }
    
    public function forgot_password() {
        $this->load->view('forgot_password');
    }

    public function reset_password() {
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
    
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('forgot_password');
        } else {
            $email = $this->input->post('email');
            $user = $this->user_model->get_user_by_email($email);
    
            if ($user) {
               
                $token = bin2hex(random_bytes(32));
                $this->user_model->save_reset_token($user->id, $token);
    
                $this->load->view('reset_password', array('token' => $token));
            } else {
                $this->session->set_flashdata('error_msg', 'Invalid email address.');
                redirect('auth/forgot_password');
            }
        }
    }

    public function update_password() {
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required|matches[password]');
    
        if ($this->form_validation->run() == FALSE) {
            $this->session->set_flashdata('error_msg', 'Please enter valid passwords.');
            redirect('auth/forgot_password');
        } else {
            $token = $this->input->post('token');
            $password = $this->input->post('password');
    
            $result = $this->user_model->update_password_by_token($token, $password);
    
            if ($result) {
                $this->session->set_flashdata('success_msg', 'Password updated successfully.');
                redirect('auth');
            } else {
                $this->session->set_flashdata('error_msg', 'Failed to update password.');
                redirect('auth/forgot_password');
            }
        }
    }
    public function dashboard() {
        if ($this->session->userdata('logged_in')) {
            $user_data['name'] = $this->user_model->getName();
            $this->load->view('dashboard', $user_data);
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
