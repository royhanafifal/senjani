<?php
class Login_m extends CI_Model{

    public function get_data($nim)
    {
        $query = $this->db->get_where('mahasiswa', array('nim' => $nim));
        if($this->db->affected_rows() !== 0){
            return $query->row();
        }
    }

    public function get_biodata($nim)
    {
        $this->db->select('*');
        $this->db->from('mahasiswa');
        $this->db->join('program_studi', 'program_studi.id = mahasiswa.id_program_studi');
        $this->db->join('jurusan', 'jurusan.id = program_studi.id_jurusan');
        $this->db->join('fakultas', 'fakultas.id = jurusan.id_fakultas');
        
        $query = $this->db->get();
        return $query->row();
    }
}