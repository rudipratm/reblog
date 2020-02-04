<?php
	class User_model extends CI_Model{

		public function __construct(){
			$this->load->database();
		}

		public function register($password){
			$password2 = md5($password);
			$data = array(
				'name' => $this->input->post('name'),
				'email' => $this->input->post('email'),
				'username' => $this->input->post('username'),
				'password' => $password2,
				'zipcode' => $this->input->post('zipcode')
			);

			return $this->db->insert('users', $data);
		}

		public function check_username_exist($username){
			$query = $this->db->get_where('users', array('username' => $username));
			if (empty($query->row_array())){
				return true;
			}else{
				return false;
			}
		}

		public function check_email_exist($email){
			$query = $this->db->get_where('users', array('email' => $email));
			if (empty($query->row_array())){
				return true;
			}else{
				return false;
			}
		}

		public function login($username, $password){
			$password2 = md5($password);
			$this->db->where('username', $username);
			$this->db->where('password', $password2);

			$result = $this->db->get('users');
			if($result->num_rows() == 1){
				return $result->row(0)->id;
			}else{
				return false;
			}
		}
	}
?>