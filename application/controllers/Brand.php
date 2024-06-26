<?php if (!defined('BASEPATH'))
    exit ('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Brand extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Brand_model', 'bm');
        $this->isLoggedIn();
        $this->module = 'Brand';
    }

    /**
     * This is default routing method
     * It routes to default listing page
     */
    public function index()
    {
        redirect('brand/brandListing');
    }

    /**
     * This function is used to load the brand list
     */
    function brandListing()
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

            $count = $this->bm->brandListingCount($searchText);

            $returns = $this->paginationCompress("brandListing/", $count, 10);

            $data['records'] = $this->bm->brandListing($searchText, $returns["page"], $returns["segment"]);

            $this->global['pageTitle'] = 'Shafa : Brand';

            $this->loadViews("brand/list", $this->global, $data, NULL);
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
            $this->global['pageTitle'] = 'shafa : Add New Brand';

            $this->loadViews("brand/add", $this->global, NULL, NULL);
        }
    }

    /**
     * This function is used to add new user to the system
     */
    function addNewBrand()
    {

        if (!$this->hasCreateAccess()) {
            $this->loadThis();
        } else {
            $this->load->library('form_validation');

            $this->form_validation->set_rules('brandTitle', 'Brand Title', 'trim|callback_html_clean|required|max_length[256]');
            $this->form_validation->set_rules('description', 'Description', 'trim|callback_html_clean|required|max_length[1024]');

            if ($this->form_validation->run() == FALSE) {
                $this->add();
            } else {
                $brandTitle = $this->security->xss_clean($this->input->post('brandTitle'));
                $description = $this->security->xss_clean($this->input->post('description'));

                $brandInfo = array('brandTitle' => $brandTitle, 'description' => $description, 'createdBy' => $this->vendorId, 'createdDtm' => date('Y-m-d H:i:s'));

                $result = $this->bm->addNewBrand($brandInfo);


                $this->session->set_flashdata('success', 'New Brand created successfully');


                redirect('brand/brandListing');
            }
        }
    }


    /**
     * This function is used load brand edit information
     * @param number $brandId : Optional : This is brand id
     */
    function edit($brandId = NULL)
    {

        if (!$this->hasUpdateAccess()) {
            $this->loadThis();
        } else {
            if ($brandId == null) {
                redirect('brand/brandListing');
            }

            $data['brandInfo'] = $this->bm->getBrandInfo($brandId);
            $this->global['pageTitle'] = 'shafa : Edit Brand';

            $this->loadViews("brand/edit", $this->global, $data, NULL);
        }
    }

/**
 * This function is used to delete a brand
 * @param int $brandId The ID of the brand to delete
 */
    function delete($brandId = NULL)
    {
        if (!$this->hasDeleteAccess()) {
            $this->loadThis();
        } else {
            if ($brandId == null) {
                redirect('brand/brandListing');
            }

            // Check if the brand exists before attempting to delete
            $brandInfo = $this->bm->getBrandInfo($brandId);
            if (!$brandInfo) {
                $this->session->set_flashdata('error', 'Brand not found');
                redirect('brand/brandListing');
            }

            // Delete the brand
            $result = $this->bm->deleteBrand($brandId);

            if ($result) {
                $this->session->set_flashdata('success', 'Brand deleted successfully');
            } else {
                $this->session->set_flashdata('error', 'Failed to delete brand');
            }

            redirect('brand/brandListing');
        }
    }

    /**
     * This function is used to edit the user information
     */
    function editBrand()
    {
        if (!$this->hasUpdateAccess()) {
            $this->loadThis();
        } else {
            $this->load->library('form_validation');

            $brandId = $this->input->post('brandId');

            $this->form_validation->set_rules('brandTitle', 'Brand Title', 'trim|callback_html_clean|required|max_length[256]');
            $this->form_validation->set_rules('description', 'Description', 'trim|callback_html_clean|required|max_length[1024]');

            if ($this->form_validation->run() == FALSE) {
                $this->edit($brandId);
            } else {
                $brandTitle = $this->security->xss_clean($this->input->post('brandTitle'));
                $description = $this->security->xss_clean($this->input->post('description'));

                $brandInfo = array('brandTitle' => $brandTitle, 'description' => $description, 'updatedBy' => $this->vendorId, 'updatedDtm' => date('Y-m-d H:i:s'));

                $result = $this->bm->editBrand($brandInfo, $brandId);

                if ($result == true) {
                    $this->session->set_flashdata('success', 'Brand updated successfully');
                } else {
                    $this->session->set_flashdata('error', 'Brand updation failed');
                }

                redirect('brand/brandListing');
            }
        }
    }
 


    public function html_clean($s, $v)
    {
        return strip_tags((string) $s);
    }
}

?>