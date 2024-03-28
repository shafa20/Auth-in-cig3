<?php
defined('BASEPATH') OR exit('No direct script access allowed');



$route['default_controller'] = "modules/auth/login";
$route['404_override'] = 'error_404';
$route['translate_uri_dashes'] = FALSE;


/*********** USER DEFINED ROUTES *******************/
$route['login'] = 'auth/login/index';
$route['loginMe'] = 'auth/login/loginMe';
$route['dashboard'] = 'user';
$route['logout'] = 'user/logout';
$route['userListing'] = 'user/userListing';
$route['userListing/(:num)'] = "user/userListing/$1";
$route['addNew'] = "user/addNew";
$route['addNewUser'] = "user/addNewUser";
$route['editOld'] = "user/editOld";
$route['editOld/(:num)'] = "user/editOld/$1";
$route['editUser'] = "user/editUser";
$route['deleteUser'] = "user/deleteUser";
$route['profile'] = "user/profile";
$route['profile/(:any)'] = "user/profile/$1";
$route['profileUpdate'] = "user/profileUpdate";
$route['profileUpdate/(:any)'] = "user/profileUpdate/$1";

$route['loadChangePass'] = "user/loadChangePass";
$route['changePassword'] = "user/changePassword";
$route['changePassword/(:any)'] = "user/changePassword/$1";
$route['pageNotFound'] = "user/pageNotFound";
$route['checkEmailExists'] = "user/checkEmailExists";


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