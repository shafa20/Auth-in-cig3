<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .login-form {
            padding: 20px;
            margin-top: 50px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        .form-floating {
            margin-bottom: 20px;
        }
        .d-grid {
            margin-top: 20px;
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
                    <h2>Forgot Password</h2>
                    <form action="<?php echo base_url('auth/reset_password'); ?>" method="post">
                        <div class="form-floating">
                            <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required>
                            <label for="email">Email address</label>
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <a href="<?php echo base_url('auth'); ?>" class="btn btn-secondary mt-3">Back to Login</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
