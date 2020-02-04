<html>
	<head>
		<title>reBlog</title>
		<link rel="stylesheet" href="<?= base_url('assets/css/bootstrap.min.css');?>">
		<link rel="stylesheet" href="<?= base_url('assets/css/style.css');?>">
		<link rel="icon" href="<?= base_url('assets/reblog.ico');?>">
		<script src="http://cdn.ckeditor.com/4.11.1/standard/ckeditor.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" style="padding:1px;" href="<?= base_url();?>"><img src="<?= base_url('/assets/images/reBlog.png'); ?>" style="max-width: 50px;"></a>
				</div>
					<?php if($this->session->userdata('logged_in')): ?>
				<ul class="nav navbar-nav">
					<li><a href="<?= base_url();?>">Home</a></li>
					<li><a href="<?= base_url('/posts');?>">Blog</a></li>
					<li><a href="<?= base_url('/categories');?>">Categories</a></li>
					<li><a href="<?= base_url('/about');?>">About</a></li>
				</ul>
				<?php endif; ?>
				<ul class="nav navbar-nav navbar-right">
					<?php if(!$this->session->userdata('logged_in')): ?>
					<li><a href="<?= base_url('/users/login');?>">Login</a></li>
					<li><a href="<?= base_url('/users/register');?>">Register</a></li>
					<?php endif;
					if($this->session->userdata('logged_in')): ?>
					<li><a href="<?= base_url('/posts/create');?>">Create Post</a></li>
					<li><a href="<?= base_url('/categories/create');?>">Create Categories</a></li>
					<li><a href="<?= base_url('/users/logout');?>">Logout</a></li>
				<?php endif; ?>
				</ul>
			</div>
		</nav>
		<div class="container">
			<!-- Flash Messages -->
			<?php if($this->session->flashdata('user_registered')): ?>
				<?= '<p class="alert alert-success text-center"><strong>'.$this->session->flashdata('user_registered').'</strong></p>' ?>
			<?php endif; ?>
			<?php if($this->session->flashdata('post_created')): ?>
				<?= '<p class="alert alert-success text-center"><strong>'.$this->session->flashdata('post_created').'</strong></p>' ?>
			<?php endif; ?>
			<?php if($this->session->flashdata('post_updated')): ?>
				<?= '<p class="alert alert-success text-center"><strong>'.$this->session->flashdata('post_updated').'</strong></p>' ?>
			<?php endif; ?>
			<?php if($this->session->flashdata('catregory_created')): ?>
				<?= '<p class="alert alert-success text-center"><strong>'.$this->session->flashdata('catregory_created').'</strong></p>' ?>
			<?php endif; ?>
			<?php if($this->session->flashdata('post_deleted')): ?>
				<?= '<p class="alert alert-success text-center"><strong>'.$this->session->flashdata('post_deleted').'</strong></p>' ?>
			<?php endif; ?>
			<?php if($this->session->flashdata('login_failed')): ?>
				<?= '<p class="alert alert-danger text-center"><strong>'.$this->session->flashdata('login_failed').'</strong></p>' ?>
			<?php endif; ?>
			<?php if($this->session->flashdata('user_loggedin')): ?>
				<?= '<p class="alert alert-success text-center"><strong>'.$this->session->flashdata('user_loggedin').'</strong></p>' ?>
			<?php endif; ?>

			<?php if($this->session->flashdata('user_loggedout')): ?>
				<?= '<p class="alert alert-success text-center"><strong>'.$this->session->flashdata('user_loggedout').'</strong></p>' ?>
			<?php endif; ?>