<?php
class Login_m extends CI_Model{

    public function get_data($nim)
    {
        $query = $this->db->get_where('mahasiswa', array('nim' => $nim));
        if($this->db->affected_rows() !== 0){
            return true($query->row());
        }else{
            return false();
        }
    }
}