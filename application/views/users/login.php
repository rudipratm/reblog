<?= validation_errors(); ?>
<?= form_open('users/login'); ?>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h1 class="text-center"><?= $title; ?></h1>
			<div class="form-group">
				<label>Username</label>
				<input type="text" name="username" placeholder="Username" class="form-control" required autofocus>
				<label>Password</label>
				<input type="password" name="password" placeholder="Password" class="form-control" required><br>
				<button type="submit" class="btn btn-primary btn-block" name="signup">Log In</button>
			</div>
		</div>
	</div>
<?= form_close(); ?>