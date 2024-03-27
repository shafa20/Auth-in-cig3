<?php if (!defined('BASEPATH'))
    exit ('No direct script access allowed');


class Model_model extends CI_Model
{
    /**
     * This function is used to get the model listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function modelListingCount($searchText)
    {
        $this->db->select('BaseTbl.modelId, BaseTbl.modelTitle, BaseTbl.description, BaseTbl.createdDtm');
        $this->db->from('tbl_model as BaseTbl');
        if (!empty ($searchText)) {
            $likeCriteria = "(BaseTbl.modelTitle LIKE '%" . $searchText . "%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();

        return $query->num_rows();
    }

    /**
     * This function is used to get the model listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    // function modelListing($searchText, $page, $segment)
    // {
    //     $this->db->select('BaseTbl.modelId, BaseTbl.modelTitle, BaseTbl.description, BaseTbl.createdDtm');
    //     $this->db->from('tbl_model as BaseTbl');
    //     if(!empty($searchText)) {
    //         $likeCriteria = "(BaseTbl.modelTitle LIKE '%".$searchText."%')";
    //         $this->db->where($likeCriteria);
    //     }
    //     $this->db->where('BaseTbl.isDeleted', 0);
    //     $this->db->order_by('BaseTbl.modelId', 'DESC');
    //     $this->db->limit($page, $segment);
    //     $query = $this->db->get();

    //     $result = $query->result();        
    //     return $result;
    // }

    function modelListing($searchText, $page, $segment)
    {
        $this->db->select('BaseTbl.modelId, BaseTbl.modelTitle, BaseTbl.description, BaseTbl.createdDtm, BrandTbl.brandTitle');
        $this->db->from('tbl_model as BaseTbl');
        $this->db->join('tbl_brand as BrandTbl', 'BrandTbl.brandId = BaseTbl.brandId', 'left'); // Assuming 'brandId' is the foreign key
        if (!empty ($searchText)) {
            $likeCriteria = "(BaseTbl.modelTitle LIKE '%" . $searchText . "%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->order_by('BaseTbl.modelId', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }


    /**
     * This function is used to add new model to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewModel($modelInfo)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_model', $modelInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }

    /**
     * This function used to get Model information by id
     * @param number $modelId : This is model id
     * @return array $result : This is model information
     */
    function getModelInfo($modelId)
    {
        $this->db->select('modelId, modelTitle, brandId, description');
        $this->db->from('tbl_model');
        $this->db->where('modelId', $modelId);
        $this->db->where('isDeleted', 0);
        $query = $this->db->get();

        return $query->row();
    }


    /**
     * This function is used to update the model information
     * @param array $modelInfo : This is model updated information
     * @param number $modelId : This is model id
     */
    function editModel($modelInfo, $modelId)
    {
        $this->db->where('modelId', $modelId);
        $this->db->update('tbl_model', $modelInfo);

        return TRUE;
    }


    public function deleteModel($modelId)
    {
        // Perform deletion query
        $this->db->where('modelId', $modelId);
        $this->db->delete('tbl_model');

        // Check if deletion was successful
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }
    public function getAllBrands() {
        $query = $this->db->get('tbl_brand');
        return $query->result();
    }
}