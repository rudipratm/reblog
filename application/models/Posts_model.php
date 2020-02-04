<?php
class Posts_model extends CI_Model{

	public function __construct(){
		$this->load->database();
	}

	//Mengambil data post di database//
	public function get_posts($slug = FALSE){
		if($slug === FALSE){
			$user_id = $this->session->userdata('user_id');
			$SQL = "SELECT * FROM posts
			INNER JOIN categories ON posts.category_id = categories.id
			INNER JOIN users ON posts.user_id = users.id
			WHERE deleted = 0 
			ORDER BY posts.id DESC
			LIMIT 10";
			
			$query = $this->db->query($SQL);
			return $query->result_array();
		}
		$SQL = "SELECT * FROM posts
		INNER JOIN categories ON posts.category_id = categories.id
		INNER JOIN users ON posts.user_id = users.id
		WHERE slug = '$slug' AND deleted = 0 
		ORDER BY posts.id DESC
		LIMIT 10";
		
		$query = $this->db->query($SQL);
		return $query->row_array();
	}

	//Mengisi data post ke database//
	public function create_post($data){
		return $this->db->insert('posts', $data);
	}

	//Menghapus data post, tapi hanya mengubahnya di database//
	public function delete_post($id){
		//Mengirim data static kedalam database kolom deleted//
		$param = array(
			'deleted' =>1
		);
		$this->db->where('id', $id);
		$this->db->update('posts',$param);
		return true;
	}

	//Mengubah data post di database//
	public function update_post($data,$pid){
		$this->db->where('id', $pid);
		return $this->db->update('posts', $data);
	}

	public function get_categories(){
		$this->db->order_by('c_name');
		$query = $this->db->get('categories'); //Ambil dari tabel//
		return $query->result_array();
	}

	public function get_posts_by_category($category_id){
			$SQL = "SELECT * FROM posts
			INNER JOIN categories ON posts.category_id = categories.id
			INNER JOIN users ON posts.user_id = users.id
			WHERE category_id = '$category_id' AND deleted = 0
			ORDER BY posts.id DESC";
			
			$query = $this->db->query($SQL);
			return $query->result_array();
		}
}
?>