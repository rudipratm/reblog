<div class="post-body">
<div class="post-content">
	<h2><?= $post['title']; ?></h2>
	<small class="post-date">Posted by <?= $post['u_name']; ?> on : <?= $post['created_at']; ?> in <strong><?= $post['c_name']; ?></strong></small>
	<div style="text-align:center; padding: 10px;">
	<a href="<?= site_url('assets/images/posts/'. $post['post_image']);?>"><img src="<?= site_url('assets/images/posts/'. $post['post_image']);?>" class="post-thumb-big"></a>
	</div>
	<div class="content-text"><?= $post['body'];?></div>
</div>
</div>
<?php if($this->session->userdata('user_id') == $post['user_id']) : ?>
<hr>
<a class="btn btn-default" href="<?= base_url('/posts/edit/'.$post['slug']);?>" style="float: left; margin-right: 5px;">Edit</a>
<?= form_open('/posts/delete/'.$post['id']); ?>
	<input type="submit" value="Delete" class="btn btn-danger">
</form>
<?php endif; ?>
<hr>
<h3>Comments</h3>
<?php 
if($comments) :
foreach($comments as $comment) : ?>
	<div class="well">
		<h5><?= $comment['body']; ?> [by <strong><?= $comment['name'];?></strong> at <?= $comment['created_at']; ?>]</h5>
	</div>

<?php endforeach; 
else : ?>

<?php endif; ?>

<hr><h3>Add Comment</h3>
<?= validation_errors(); ?>
<?= form_open('comments/create/'.$post['id']); ?>
	<input type="hidden" name="slug" value="<?= $post['slug']?>">
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control" autocomplete="off" placeholder="Enter your Name">
		<label>Email</label>
		<input type="email" name="email" class="form-control" autocomplete="off" placeholder="Enter your Email (We will not share it)">
		<label>Comment</label>
		<textarea name="body" class="form-control" placeholder="Enter your Comment"></textarea><br>
		<button type="submit" class="btn btn-primary">Confirm</button> 
	</div>
</form>