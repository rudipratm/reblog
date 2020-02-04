
<?= validation_errors(); ?>
<?= form_open('users/register'); ?>
<div class="row">
	<div class="col-md-4 col-md-offset-4">
		<h1 class="text-center"><?= $title; ?></h1>
		<div class="form-group">
			<label>Name</label>
			<input type="text" name="name" placeholder="Your Name" class="form-control">
			<label>Zip Code</label>
			<input type="text" name="zipcode" placeholder="Your Zipcode" class="form-control">
			<label>Email</label>
			<input type="email" name="email" placeholder="Your Email" class="form-control">
			<label>Username</label>
			<input type="text" name="username" placeholder="Your Username" class="form-control">
			<label>Password</label>
			<input type="password" name="password" placeholder="Your Name" class="form-control">
			<label>Confirm Password</label>
			<input type="password" name="password2" placeholder="Your Name" class="form-control"><br>
			<button type="submit" class="btn btn-primary btn-block" name="signup">Sign Up</button>
		</div>
	</div>
</div>
<?= form_close(); ?>