<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; /* Set background color */
        }

        .container {
            margin-top: 50px; /* Add top margin */
        }

        .login-form {
            background-color: #fff; /* Set form background color */
            padding: 20px; /* Add padding */
            border-radius: 10px; /* Add border radius */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Add box shadow */
        }

        .login-form h2 {
            margin-bottom: 20px; /* Add bottom margin */
        }

        .form-floating {
            margin-bottom: 20px; /* Add bottom margin */
        }

        .d-grid {
            margin-top: 20px; /* Add top margin */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-12 mx-auto">
                <div class="login-form">
                    <?php
                    if ($this->session->flashdata('error_msg')) {
                        echo '<div class="alert alert-danger" role="alert">' . $this->session->flashdata('error_msg') . '</div>';
                    }
                    ?>
                    <h2 class="text-center mb-4">Reset Password</h2>
                    <form action="<?php echo base_url('auth/update_password'); ?>" method="post">
                        <div class="form-floating">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                            <label for="password">Password</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm Password" required>
                            <label for="confirm_password">Confirm Password</label>
                        </div>
                        <input type="hidden" name="token" value="<?php echo $token; ?>">
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Reset Password</button>
                            <a href="<?php echo base_url('auth'); ?>" class="btn btn-secondary mt-3">Back to Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
