<?php
	class Posts extends CI_Controller{
		public function index(){

			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
			
			$data['title'] = 'Latest Post';

			$data['posts'] = $this->Posts_model->get_posts();

			$this->load->view('templates/header');
			$this->load->view('posts/index', $data);
			$this->load->view('templates/footer');
		}

		public function view($slug = NULL){

			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
			
			$data['post'] = $this->Posts_model->get_posts($slug);
			$post_id = $data['post']['id'];
			$post_cat = $data['post']['category_id'];
			$data['comments'] = $this->Comment_model->get_comment($post_id);

			if (empty($data['post'])) {
				show_404();
			}

			$data['title'] = $data['post']['title'];

			$this->load->view('templates/header');
			$this->load->view('posts/view', $data);
			$this->load->view('templates/footer');
		}

		public function create(){

			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
			$data['title'] = 'Create Post';
			$data['categories'] = $this->Posts_model->get_categories();
			$this->form_validation->set_rules('title', 'Title', 'required');
			$this->form_validation->set_rules('body', 'Body', 'required');
			if($this->form_validation->run() === FALSE){
				$this->load->view('templates/header');
				$this->load->view('posts/create', $data);
				$this->load->view('templates/footer');
			}else{
				//mengirimkan data ke model untuk mengisi database//
				$slug = url_title($this->input->post('title'));
				
				//Upload gambar//
				$config['upload_path'] = './assets/images/posts';
				$config['allowed_types'] = 'jpg|jpeg|png|gif';
				$config['max_size'] = '9999';
				$config['max_width'] = '5000';
				$config['max_height'] = '5000';
				
				$this->load->library('upload', $config);
				
				if($this->upload->do_upload('userfile')){
					$data = array('upload_data' => $this->upload->data());
					$post_image = $_FILES['userfile']['name'];
					
				}else{
					$errors = array('error' => $this->upload->display_errors());
					$post_image = 'blank.jpg';
				}
				
				$data = array(
					'title' => $this->input->post('title'),
					'slug' => $slug,
					'user_id' => $this->session->userdata('user_id'),
					'body' => $this->input->post('body'),
					'category_id' => $this->input->post('category_id'),
					'post_image' => $post_image
				);
				
				//Mengirim data ke model//
				$this->Posts_model->create_post($data);

				//Menampilkan Pemberitahuan//
				$this->session->set_flashdata('post_created','Your post has been created');

				redirect('posts');			
			}
		}

		public function delete($id){

			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
			
			$this->Posts_model->delete_post($id);

			//Menampilkan Pemberitahuan//
				$this->session->set_flashdata('post_deleted','Your post has been deleted');

			
			redirect('posts');
		}

		public function edit($slug){

			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}

			if($this->session->userdata('user_id') != $this->Posts_model->get_posts($slug)['user_id']){
				redirect('posts');	
			}
			
			$data['post'] = $this->Posts_model->get_posts($slug);
			
			$data['categories'] = $this->Posts_model->get_categories();

			if(empty($data['post'])){
				show_404();
			}

			$data['title'] = 'Edit Post';

			$this->load->view('templates/header');
			$this->load->view('posts/edit', $data);
			$this->load->view('templates/footer');
		}

		public function update(){

			if (!$this->session->userdata('logged_in')) {
				redirect('users/login');
			}
			
			$pid = $this->input->post('pid');
			$slug = url_title($this->input->post('title'));
			
			//Upload gambar//
			$config['upload_path'] = './assets/images/posts';
			$config['allowed_types'] = 'jpg|jpeg|png|gif';
			$config['max_size'] = '9999';
			$config['max_width'] = '5000';
			$config['max_height'] = '5000';
			
			$this->load->library('upload', $config);
				
			if($this->upload->do_upload('userfile')){
				$data = array('upload_data' => $this->upload->data());
				$post_image = $_FILES['userfile']['name'];
				
			}else{
				$errors = array('error' => $this->upload->display_errors());
				$post_image = 'blank.jpg';
			}
				
			$data = array(
				'title' => $this->input->post('title'),
				'slug' => $slug,
				'body' => $this->input->post('body'),
				'category_id' => $this->input->post('category_id'),
				'post_image' => $post_image
			);

			$this->Posts_model->update_post($data,$pid);

			//Menampilkan Pemberitahuan//
			$this->session->set_flashdata('post_updated','Your post has been updated');

			redirect('posts');
		}
	}
?>