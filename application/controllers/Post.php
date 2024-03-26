<?php if (!defined('BASEPATH'))
	exit ('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Post extends BaseController
{
	/**
	 * This is default constructor of the class
	 */
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Post_model', 'pm');
		$this->load->library('upload');
		$this->isLoggedIn();
		$this->module = 'Post';
	}

	/**
	 * This is default routing method
	 * It routes to default listing page
	 */
	public function index()
	{
		redirect('post/postListing');
	}

	/**
	 * This function is used to load the post list
	 */
	function postListing()
	{
		if (!$this->hasListAccess()) {
			$this->loadThis();
		} else {
			$searchText = '';
			if (!empty ($this->input->post('searchText'))) {
				$searchText = $this->security->xss_clean($this->input->post('searchText'));
			}
			$data['searchText'] = $searchText;

			$this->load->library('pagination');

			$count = $this->pm->postListingCount($searchText);

			$returns = $this->paginationCompress("postListing/", $count, 10);

			$data['records'] = $this->pm->postListing($searchText, $returns["page"], $returns["segment"]);

			$this->global['pageTitle'] = 'shafa : Post';

			$this->loadViews("post/list", $this->global, $data, NULL);
		}
	}

	/**
	 * This function is used to load the add new form
	 */
	function add()
	{
		if (!$this->hasCreateAccess()) {
			$this->loadThis();
		} else {
			$this->global['pageTitle'] = 'shafa : Add New Post';

			$this->loadViews("post/add", $this->global, NULL, NULL);
		}
	}

	/**
	 * This function is used to add new user to the system
	 */

	public function addNewPost()
	{
		if (!$this->hasCreateAccess()) {
			$this->loadThis();
		} else {
			$this->load->library('form_validation');
			$this->load->helper('security');

			// Validation rules
			$this->form_validation->set_rules('postTitle', 'Post Title', 'trim|required|max_length[256]');
			$this->form_validation->set_rules('description', 'Description', 'trim|required|max_length[1024]');


			if ($this->form_validation->run() == FALSE) {
				$this->add();
			} else {
				$postTitle = $this->input->post('postTitle', true);
				$description = $this->input->post('description', true);

				$data = array(
					'postTitle' => $postTitle,
					'description' => $description,
				);

				// Check if images are uploaded
				if (!empty ($_FILES['post_pic']['name'][0])) {
					$images = $this->_do_upload();
					$data['post_pic'] = serialize($images); // Serialize the array of file names
				}

				$this->load->model('Post_model');
				$insert_id = $this->pm->addNewPost($data);

				if ($insert_id) {
					$this->session->set_flashdata('success', 'New post created successfully');
					redirect('post/postListing');
				} else {
					$this->session->set_flashdata('success', 'New post created successfully');
					redirect('post/postListing');
				}
			}
		}
	}

	private function _do_upload()
	{
		$files = $_FILES['post_pic'];
		$file_count = count($files['name']);
		$upload_data = array();

		// Load the image manipulation library
		$this->load->library('image_lib');

		for ($i = 0; $i < $file_count; $i++) {
			$_FILES['userfile']['name'] = $files['name'][$i];
			$_FILES['userfile']['type'] = $files['type'][$i];
			$_FILES['userfile']['tmp_name'] = $files['tmp_name'][$i];
			$_FILES['userfile']['error'] = $files['error'][$i];
			$_FILES['userfile']['size'] = $files['size'][$i];

			$image_name = time() . '-' . $files["name"][$i];

			$config['upload_path'] = './uploads/';
			$config['allowed_types'] = 'gif|jpg|png';
			$config['max_size'] = 2048;
			$config['file_name'] = $image_name;

			$this->load->library('upload', $config);
			$this->upload->initialize($config);

			if (!$this->upload->do_upload('userfile')) {
				$this->session->set_flashdata('error', $this->upload->display_errors('', ''));
				redirect('post/add');
			} else {
				$resize_config['image_library'] = 'gd2';
				$resize_config['source_image'] = $this->upload->data('full_path');
				$resize_config['maintain_ratio'] = FALSE; // Set to false to ensure exact dimensions
				$resize_config['width'] = 300;
				$resize_config['height'] = 300;

				$this->image_lib->initialize($resize_config);
				$this->image_lib->resize();
				$this->image_lib->clear();

				$upload_data[] = $image_name;
			}
		}

		return $upload_data;
	}


	function edit($postId = NULL)
	{

		if (!$this->hasUpdateAccess()) {
			$this->loadThis();
		} else {
			if ($postId == null) {
				redirect('post/postListing');
			}

			$data['postInfo'] = $this->pm->getPostInfo($postId);
			$this->global['pageTitle'] = 'shafa : Edit Post';

			$this->loadViews("post/edit", $this->global, $data, NULL);
		}
	}

	/**
	 * This function is used to delete a post
	 * @param int $postId The ID of the post to delete
	 */
	function delete($postId = NULL)
	{
		if (!$this->hasDeleteAccess()) {
			$this->loadThis();
		} else {
			if ($postId == null) {
				redirect('post/postListing');
			}

			// Check if the post exists before attempting to delete
			$postInfo = $this->pm->getPostInfo($postId);

			if (!$postInfo) {
				$this->session->set_flashdata('error', 'post not found');
				redirect('post/postListing');
			}

			// Delete the post
			$result = $this->pm->deletePost($postId);


			if ($result) {
				$this->session->set_flashdata('success', 'post deleted successfully');
			} else {
				$this->session->set_flashdata('error', 'Failed to delete post');
			}

			redirect('post/postListing');
		}
	}

	/**
	 * This function is used to edit the user information
	 */
	// function editPost()
	// {
	// 	if (!$this->hasUpdateAccess()) {
	// 		$this->loadThis();
	// 	} else {
	// 		$this->load->library('form_validation');

	// 		$postId = $this->input->post('postId');

	// 		$this->form_validation->set_rules('postTitle', 'Post Title', 'trim|callback_html_clean|required|max_length[256]');
	// 		$this->form_validation->set_rules('description', 'Description', 'trim|callback_html_clean|required|max_length[1024]');

	// 		if ($this->form_validation->run() == FALSE) {
	// 			$this->edit($postId);
	// 		} else {
	// 			$postTitle = $this->security->xss_clean($this->input->post('postTitle'));
	// 			$description = $this->security->xss_clean($this->input->post('description'));

	// 			$postInfo = array('postTitle' => $postTitle, 'description' => $description, 'updatedBy' => $this->vendorId, 'updatedDtm' => date('Y-m-d H:i:s'));

	// 			$result = $this->pm->editPost($postInfo, $postId);

	// 			if ($result == true) {
	// 				$this->session->set_flashdata('success', 'post updated successfully');
	// 			} else {
	// 				$this->session->set_flashdata('error', 'post updation failed');
	// 			}

	// 			redirect('post/postListing');
	// 		}
	// 	}
	// }

	public function editPost()
	{
		if (!$this->hasUpdateAccess()) {
			$this->loadThis();
		} else {
			$this->load->library('form_validation');
	
			$postId = $this->input->post('postId');
	
			$this->form_validation->set_rules('postTitle', 'Post Title', 'trim|callback_html_clean|required|max_length[256]');
			$this->form_validation->set_rules('description', 'Description', 'trim|callback_html_clean|required|max_length[1024]');
	
			if ($this->form_validation->run() == FALSE) {
				$this->edit($postId);
			} else {
				$postTitle = $this->security->xss_clean($this->input->post('postTitle'));
				$description = $this->security->xss_clean($this->input->post('description'));
	
				// Get existing post information
				$postInfo = $this->pm->getPostInfo($postId);
	
				// Get uploaded images
				$uploadedImages = $this->_do_upload();
	
				// Get the names of images to be removed
				$imagesToRemove = $this->input->post('remove_images');
	
				// Remove the images from the database and upload folder
				if (!empty($imagesToRemove)) {
					foreach ($imagesToRemove as $image) {
						$image_path = './uploads/' . $image;
						if (file_exists($image_path)) {
							unlink($image_path);
						}
					}
					// Remove the removed images from the database
					$this->pm->removeImages($postId, $imagesToRemove);
				}
	
				// If new images are uploaded, add them to the existing images
				if (!empty($uploadedImages)) {
					
					$existingImages = unserialize($postInfo->post_pic);
					
					$newImages = array_merge($existingImages, $uploadedImages);
					
					
					$data['post_pic'] = serialize($newImages);
					
				}
	
				// Update post information
				$postInfo = array(
					'postTitle' => $postTitle,
					'description' => $description,
					'updatedBy' => $this->vendorId,
					'updatedDtm' => date('Y-m-d H:i:s')
				);
	
				$result = $this->pm->editPost($postInfo, $postId);
	
				if ($result == true) {
					$this->session->set_flashdata('success', 'Post updated successfully');
				} else {
					$this->session->set_flashdata('error', 'Post updation failed');
				}
	
				redirect('post/postListing');
			}
		}
	}
	

	public function html_clean($s, $v)
	{
		return strip_tags((string) $s);
	}

}

?>
