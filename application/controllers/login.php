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
        $this->load->view('login');
    }    

    public function auth()
    {
        $nim = $this->post('nim');
        $password = $this->post('password');

        $result = $this->Login_m->get_data($nim);
        if(isset($result)){
            if ($password == $result->password) {
                if (is_null($result->data_deleted)) {
                    //masuk
                    $this->session->set_flashdata('msg', 'Selamat datang, anda berhasil masuk');
                    $this->biodata($nim);
                }else{
                    //akun sudah dihapus
                    $this->session->set_flashdata('msg', 'Maaf akun anda sudah dihapus');
                    redirect(base_url().'login');
                }
            }else{
                //password salah
                $this->session->set_flashdata('msg', 'Maaf password anda salah');
                redirect(base_url().'login');
            }
        }else{
            //akun tidak terdaftar
            $this->session->set_flashdata('msg', 'Maaf akun anda tidak terdaftar');
            redirect(base_url().'login');
        }
    }

    function biodata($nim)
    {
        $result = $this->Login_m->get_biodata($nim);
        $this->load->view('home', $result);
    }

    function post($params)
    {
        if(!empty($_POST[$params])){
            return $_POST[$params];
        }else{
            $this->session->set_flashdata('msg', 'Silahkan mengisi kolom '.$params.' terlebih dahulu');
            redirect(base_url().'login');
        }
    }
}