<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


class Post_model extends CI_Model
{
    /**
     * This function is used to get the Post listing count
     * @param string $searchText : This is optional search text
     * @return number $count : This is row count
     */
    function postListingCount($searchText)
    {
        $this->db->select('BaseTbl.postId, BaseTbl.postTitle, BaseTbl.description, BaseTbl.createdDtm');
        $this->db->from('tbl_post as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.postTitle LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();
        
        return $query->num_rows();
    }
    
    /**
     * This function is used to get the post listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function postListing($searchText, $page, $segment)
    {
        $this->db->select('BaseTbl.postId, BaseTbl.postTitle, BaseTbl.description, BaseTbl.createdDtm');
        $this->db->from('tbl_post as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.postTitle LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->order_by('BaseTbl.postId', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();
        
        $result = $query->result();        
        return $result;
    }
    
    /**
     * This function is used to add new post to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewPost($postInfo)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_post', $postInfo);
        
        $insert_id = $this->db->insert_id();
        
        $this->db->trans_complete();
        
        return $insert_id;
    }
    
    /**
     * This function used to get post information by id
     * @param number $postId : This is post id
     * @return array $result : This is Post information
     */
    function getPostInfo($postId)
    {
        $this->db->select('postId, postTitle, description');
        $this->db->from('tbl_post');
        $this->db->where('postId', $postId);
        $this->db->where('isDeleted', 0);
        $query = $this->db->get();
        
        return $query->row();
    }
    
    
    /**
     * This function is used to update the post information
     * @param array $postInfo : This is post updated information
     * @param number $postId : This is post id
     */
    function editPost($postInfo, $postId)
    {
        $this->db->where('postId', $postId);
        $this->db->update('tbl_post', $postInfo);
        
        return TRUE;
    }

    
    public function deletePost($postId)
    {
        // Perform deletion query
        $this->db->where('postId', $postId);
        $this->db->delete('tbl_post');

        // Check if deletion was successful
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }
}