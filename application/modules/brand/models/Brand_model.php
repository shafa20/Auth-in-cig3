<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


class Brand_model extends CI_Model
{
    /**
     * This function is used to get the brand listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function brandListingCount($searchText)
    {
        $this->db->select('BaseTbl.brandId, BaseTbl.brandTitle, BaseTbl.description, BaseTbl.createdDtm');
        $this->db->from('tbl_brand as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.brandTitle LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();
        
        return $query->num_rows();
    }
    
    /**
     * This function is used to get the brand listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function brandListing($searchText, $page, $segment)
    {
        $this->db->select('BaseTbl.brandId, BaseTbl.brandTitle, BaseTbl.description, BaseTbl.createdDtm');
        $this->db->from('tbl_brand as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.brandTitle LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->order_by('BaseTbl.brandId', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        
        $result = $query->result();        
        return $result;
    }
    
    /**
     * This function is used to add new brand to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewBrand($brandInfo)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_brand', $brandInfo);
        
        $insert_id = $this->db->insert_id();
        
        $this->db->trans_complete();
        
        return $insert_id;
    }
    
    /**
     * This function used to get brand information by id
     * @param number $brandId : This is brand id
     * @return array $result : This is brand information
     */
    function getBrandInfo($brandId)
    {
        $this->db->select('brandId, brandTitle, description');
        $this->db->from('tbl_brand');
        $this->db->where('brandId', $brandId);
        $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        
        return $query->row();
    }
    
    
    /**
     * This function is used to update the brand information
     * @param array $brandInfo : This is brand updated information
     * @param number $brandId : This is brand id
     */
    function editBrand($brandInfo, $brandId)
    {
        $this->db->where('brandId', $brandId);
        $this->db->update('tbl_brand', $brandInfo);
        
        return TRUE;
    }

    
    public function deleteBrand($brandId)
    {
        // Perform deletion query
        $this->db->where('brandId', $brandId);
        $this->db->delete('tbl_brand');

        // Check if deletion was successful
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }
}