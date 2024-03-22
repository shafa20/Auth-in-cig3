<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 40px 20px;
    }
    .navbar-brand {
      font-weight: bold;
    }
    .navbar-nav .nav-link {
      color: #333;
      font-weight: bold;
    }
    .navbar-nav .dropdown-menu {
      border: none;
      border-radius: 0;
    }
    .dropdown-menu a.dropdown-item {
      color: #333;
    }
    .dropdown-menu a.dropdown-item:hover {
      background-color: #f8f9fa;
    }
    .dropdown-menu a.dropdown-item:focus {
      background-color: #f8f9fa;
      color: #333;
    }
    h1 {
      font-size: 2.5rem;
      margin-top: 40px;
      margin-bottom: 20px;
    }
    p {
      font-size: 1.2rem;
      margin-bottom: 40px;
    }
  </style>
</head>
<body>

<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Dashboard</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Options
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="<?php echo base_url('auth/profile'); ?>">Profile</a></li>
              <li><a class="dropdown-item" href="<?php echo base_url('auth/logout'); ?>">Logout</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <h1>Welcome to Dashboard, <?php echo $name; ?></h1> 
  <p>This is your dashboard. You are logged in.</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</body>
</html>
