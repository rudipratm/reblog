<div class="main-content"><h2 class="text-center"><?= $title; ?></h2><hr>
<?php foreach($posts as $post): ?>
<div class="post-container">
	<h3><?= $post['title'];?></h3>
	<div class="row">
	<div class="col-md-3">
		<a href="<?= site_url('/posts/'.$post['slug']);?>"><img src="<?= site_url('assets/images/posts/'. $post['post_image']);?>" class="post-thumb"></a>
	</div>
	<div class="col-md-9">
	<small class="post-date">Posted by <strong><?= $post['u_name']; ?></strong> on : <?= $post['created_at']; ?> in <strong><?= $post['c_name']; ?></strong></small>
			<div class="content-text"><?= word_limiter($post['body'],50);?></div>
			<p><a class="post-link" href="<?= site_url('/posts/'.$post['slug']);?>">Read More...</a></p>
	</div>
	</div>
</div>
<?php endforeach; ?>
</div>