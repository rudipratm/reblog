<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>
<?php echo form_open_multipart('posts/create'); ?>
<form>
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" placeholder="Add Title" name="title" autocomplete="off">
  </div>

  <div class="form-group">
    <label>Body</label>
    <textarea id="editor1" class="form-control" placeholder="Add Body" name="body"></textarea>
  </div>

  <div class="form-group">
    <label>Category</label>
    <select name="category_id" class="form-control">
    	<option>Select Category</option>
    	<?php foreach ($categories as $category) : ?>
    		<option value="<?php echo $category['id'];?>"><?php echo $category['c_name'];?></option>
    	<?php endforeach; ?>
    </select>
  </div>

  <div class="form-group">
    <label>Image</label>
    <input type="file" class="form-control" style="width: 50%;" name="userfile">
  </div>

  <button type="submit" class="btn btn-default" name="post">Post</button>
</form>