<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login & Registration Page</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles -->
  <style>
    body {
      background-color: #f8f9fa;
    }
    .login-form, .registration-form {
      max-width: 350px;
      margin: 0 auto;
      padding: 30px 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
      margin-top: 100px;
    }
    .login-form h2, .registration-form h2 {
      text-align: center;
      margin-bottom: 30px;
    }
    .login-form .form-floating, .registration-form .form-floating {
      margin-bottom: 20px;
    }
    .login-form .btn-primary, .registration-form .btn-primary {
      width: 100%;
    }
    .registration-form {
      display: none;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col-md-6 col-sm-12 mx-auto">
      <div class="login-form">
        <h2>Login</h2>
        <form action="<?php echo base_url('auth/login'); ?>" method="post">
          <div class="form-floating">
            <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required>
            <label for="email">Email address</label>
          </div>
          <div class="form-floating">
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            <label for="password">Password</label>
          </div>
          <div class="d-grid">
            <button type="submit" class="btn btn-primary">Login</button>
            <button type="button" class="btn btn-secondary mt-3" id="registerBtn">Registration</button>
          </div>
        </form>
      </div>
      <div class="registration-form">
        <h2>Registration</h2>
        <form action="<?php echo base_url('auth/register'); ?>" method="post">
          <div class="form-floating">
            <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required>
            <label for="name">Your Name</label>
          </div>
          <div class="form-floating">
            <input type="email" class="form-control" id="reg_email" name="reg_email" placeholder="name@example.com" required>
            <label for="reg_email">Email address</label>
          </div>
          <div class="form-floating">
            <input type="password" class="form-control" id="reg_password" name="reg_password" placeholder="Password" required>
            <label for="reg_password">Password</label>
          </div>
          <div class="form-floating">
            <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm Password" required>
            <label for="confirm_password">Confirm Password</label>
          </div>
          <div class="d-grid">
            <button type="submit" class="btn btn-primary">Register</button>
            <button type="button" class="btn btn-secondary mt-3" id="loginBtn">Back to Login</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Script to toggle between login and registration forms -->
<script>
  $(document).ready(function() {
    $("#registerBtn").click(function() {
      $(".login-form").hide();
      $(".registration-form").show();
    });

    $("#loginBtn").click(function() {
      $(".registration-form").hide();
      $(".login-form").show();
    });
  });
</script>

</body>
</html>
