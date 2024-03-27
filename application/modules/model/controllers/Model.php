<?php if (!defined('BASEPATH'))
    exit ('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Model extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Model_model', 'mm');
        $this->isLoggedIn();
        $this->module = 'Model';
    }

    /**
     * This is default routing method
     * It routes to default listing page
     */
    public function index()
    {
        redirect('model/modelListing');
    }

    /**
     * This function is used to load the model list
     */
    function modelListing()
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

            $count = $this->mm->modelListingCount($searchText);

            $returns = $this->paginationCompress("modelListing/", $count, 10);

            $data['records'] = $this->mm->modelListing($searchText, $returns["page"], $returns["segment"]);

            $this->global['pageTitle'] = 'Shafa : Model';
            $this->loadViews("model/list", $this->global, $data, NULL);
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
            $this->global['pageTitle'] = 'shafa : Add New Model';
            $data['brands'] = $this->mm->getAllBrands();
            $this->loadViews("model/add", $this->global, $data ,NULL, NULL);
        }
    }

    /**
     * This function is used to add new user to the system
     */
    function addNewModel()
    {

        if (!$this->hasCreateAccess()) {
            $this->loadThis();
        } else {
            $this->load->library('form_validation');

            $this->form_validation->set_rules('modelTitle', 'Model Title', 'trim|callback_html_clean|required|max_length[256]');
            $this->form_validation->set_rules('description', 'Description', 'trim|callback_html_clean|required|max_length[1024]');
            $this->form_validation->set_rules('brandId', 'Brand', 'trim|required'); 

            if ($this->form_validation->run() == FALSE) {
                $this->add();
            } else {
                $modelTitle = $this->security->xss_clean($this->input->post('modelTitle'));
                $description = $this->security->xss_clean($this->input->post('description'));
                $brandId = $this->security->xss_clean($this->input->post('brandId'));

                $modelInfo = array('modelTitle' => $modelTitle, 'brandId' => $brandId, 'description' => $description, 'createdBy' => $this->vendorId, 'createdDtm' => date('Y-m-d H:i:s'));

                $result = $this->mm->addNewModel($modelInfo);


                $this->session->set_flashdata('success', 'New Model created successfully');


                redirect('model/modelListing');
            }
        }
    }


    /**
     * This function is used load model edit information
     * @param number $modelId : Optional : This is model id
     */
    function edit($modelId = NULL)
    {

        if (!$this->hasUpdateAccess()) {
            $this->loadThis();
        } else {
            if ($modelId == null) {
                redirect('model/modelListing');
            }

            $data['modelInfo'] = $this->mm->getModelInfo($modelId);
            $data['brands'] = $this->mm->getAllBrands();
            $this->global['pageTitle'] = 'shafa : Edit Model';

            $this->loadViews("model/edit", $this->global, $data, NULL);
        }
    }


    /**
     * This function is used to edit the user information
     */
    function editModel()
    {
        if (!$this->hasUpdateAccess()) {
            $this->loadThis();
        } else {
            $this->load->library('form_validation');

            $modelId = $this->input->post('modelId');

            $this->form_validation->set_rules('modelTitle', 'Model Title', 'trim|callback_html_clean|required|max_length[256]');
            $this->form_validation->set_rules('description', 'Description', 'trim|callback_html_clean|required|max_length[1024]');
            $this->form_validation->set_rules('brandId', 'Brand', 'trim|required'); 

            if ($this->form_validation->run() == FALSE) {
                $this->edit($modelId);
            } else {
                $modelTitle = $this->security->xss_clean($this->input->post('modelTitle'));
                $description = $this->security->xss_clean($this->input->post('description'));
                $brandId = $this->security->xss_clean($this->input->post('brandId'));
                
                $modelInfo = array('modelTitle' => $modelTitle,  'brandId' => $brandId, 'description' => $description, 'updatedBy' => $this->vendorId, 'updatedDtm' => date('Y-m-d H:i:s'));

                $result = $this->mm->editModel($modelInfo, $modelId);

                if ($result == true) {
                    $this->session->set_flashdata('success', 'Model updated successfully');
                } else {
                    $this->session->set_flashdata('error', 'Model updation failed');
                }

                redirect('model/modelListing');
            }
        }
    }
    
    function delete($modelId = NULL)
    {
        if (!$this->hasDeleteAccess()) {
            $this->loadThis();
        } else {
            if ($modelId == null) {
                redirect('model/modelListing');
            }
    
            // Check if the brand exists before attempting to delete
            $modelInfo = $this->mm->getModelInfo($modelId);
            if (!$modelInfo) {
                $this->session->set_flashdata('error', 'Model not found');
                redirect('model/modelListing');
            }
    
            // Delete the brand
            $result = $this->mm->deleteModel($modelId);
    
            if ($result) {
                $this->session->set_flashdata('success', 'Model deleted successfully');
            } else {
                $this->session->set_flashdata('error', 'Model delete  failed');
            }
    
            redirect('model/modelListing');
        }
    }
    public function html_clean($s, $v)
    {
        return strip_tags((string) $s);
    }
}

?>