<h2><?= $title; ?></h2>

<?= validation_errors(); ?>
<?= form_open_multipart('posts/update'); ?>
<form>
	<input type="hidden" name="pid" value="<?= $post['id'];?>">
  
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" placeholder="Add Title" name="title" value="<?= $post['title']; ?>">
  </div>
  
  <div class="form-group">
    <label>Body</label>
    <textarea id="editor1" class="form-control" placeholder="Add Body" name="body"><?= $post['body']; ?></textarea>
  </div>

  <div class="form-group">
    <label>Category</label>
    <select name="category_id" class="form-control">
    	<?php foreach ($categories as $category) : ?>
    		<option value="<?= $category['id'];?>"><?= $category['c_name'];?></option>
    	<?php endforeach; ?>
    </select>
  </div>
  
  <div class="form-group">
    <label>Image</label>
    <input type="file" class="form-control" style="width: 50%;" name="userfile" value="<?= $post['post_image']; ?>">
  </div>
  
  <button type="submit" class="btn btn-default" name="edit">Confirm</button>
</form>