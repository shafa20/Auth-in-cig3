<?php
defined('BASEPATH') OR exit('No direct script access allowed');



$route['default_controller'] = "auth/login/index";
$route['404_override'] = 'error_404';
$route['translate_uri_dashes'] = FALSE;


/*********** USER DEFINED ROUTES *******************/

$route['login'] = 'auth/login/index';
$route['loginMe'] = 'auth/login/loginMe';
$route[''] = 'auth/login/index';
$route['dashboard'] = 'auth/user';
$route['logout'] = 'auth/user/logout';
$route['userListing'] = 'auth/user/userListing';
$route['userListing/(:num)'] = "user/userListing/$1";
$route['addNew'] = "auth/user/addNew";
$route['addNewUser'] = "auth/user/addNewUser";
$route['editOld'] = "auth/user/editOld";
$route['editOld/(:num)'] = "auth/user/editOld/$1";
$route['editUser'] = "auth/user/editUser";
$route['deleteUser'] = "auth/user/deleteUser";
$route['profile'] = "auth/user/profile";
$route['profile/(:any)'] = "auth/user/profile/$1";
$route['profileUpdate'] = "auth/user/profileUpdate";
$route['profileUpdate/(:any)'] = "auth/user/profileUpdate/$1";

$route['loadChangePass'] = "auth/user/loadChangePass";
$route['changePassword'] = "auth/user/changePassword";
$route['changePassword/(:any)'] = "auth/user/changePassword/$1";
$route['pageNotFound'] = "auth/user/pageNotFound";
$route['checkEmailExists'] = "auth/user/checkEmailExists";


$route['forgotPassword'] = "auth/login/forgotPassword";
$route['resetPasswordUser'] = "auth/login/resetPasswordUser";
$route['resetPasswordConfirmUser'] = "auth/login/resetPasswordConfirmUser";
$route['resetPasswordConfirmUser/(:any)'] = "auth/login/resetPasswordConfirmUser/$1";
$route['resetPasswordConfirmUser/(:any)/(:any)'] = "auth/login/resetPasswordConfirmUser/$1/$2";
$route['createPasswordUser'] = "auth/login/createPasswordUser";


$route['roleListing'] = "auth/roles/roleListing";
$route['roleListing/(:num)'] = "auth/roles/roleListing/$1";
$route['roleListing/(:num)/(:num)'] = "auth/roles/roleListing/$1/$2";


$route['user'] = 'user/index';
$route['user/(:any)'] = 'user/$1';