<h2><?= $title; ?></h2>
<?= validation_errors(); ?>
<?= form_open_multipart('categories/create'); ?>
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control" placeholder="Enter Name" autocomplete="off">
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form>