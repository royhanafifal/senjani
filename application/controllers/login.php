<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->model('Login_m');
    }

    public function index()
    {
        $nim = post('nim');
        $password = post('password');

        $result = $this->Login_m->get_data($nim);
        if($result->success){
            if (password_verify($password, $result->data->password)) {
                if (!is_null($result->data->date_deleted)) {
                    //masuk
                    $this->load->view('home', $result->data);
                }else{
                    //password salah
                    $this->session->set_flashdata('msg', 'Maaf password anda salah');
                    redirect('Login');
                }
            }else{
                //akun sudah tidak terdaftar/dihapus
                $this->session->set_flashdata('msg', 'Maaf akun anda sudah tidak terdaftar/dihapus');
                redirect('Login');
            }
        }else{
            //akun tidak terdaftar
            $this->session->set_flashdata('msg', 'Maaf akun anda tidak terdaftar');
            redirect('Login');
        }
    }    
}