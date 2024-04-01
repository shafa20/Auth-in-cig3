<?php if (!defined('BASEPATH'))
    exit ('No direct script access allowed');


class Role_model extends CI_Model
{
   
    function roleListingCount($searchText)
    {
        $this->db->select('BaseTbl.roleId, BaseTbl.role, BaseTbl.status, BaseTbl.createdDtm');
        $this->db->from('tbl_roles as BaseTbl');
        if (!empty ($searchText)) {
            $likeCriteria = "(BaseTbl.role  LIKE '%" . $searchText . "%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $query = $this->db->get();

        return $query->num_rows();
    }

   
    function roleListing($searchText, $page, $segment)
    {
        $this->db->select('BaseTbl.roleId, BaseTbl.role, BaseTbl.status, BaseTbl.createdDtm');
        $this->db->from('tbl_roles as BaseTbl');
        if (!empty ($searchText)) {
            $likeCriteria = "(BaseTbl.role  LIKE '%" . $searchText . "%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->order_by('BaseTbl.roleId', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

  
    function getUserRoles()
    {
        $this->db->select('roleId, role');
        $this->db->from('tbl_roles');
        $this->db->where('roleId !=', 1);
        $query = $this->db->get();

        return $query->result();
    }

   
    function checkEmailExists($email, $userId = 0)
    {
        $this->db->select("email");
        $this->db->from("tbl_users");
        $this->db->where("email", $email);
        $this->db->where("isDeleted", 0);
        if ($userId != 0) {
            $this->db->where("userId !=", $userId);
        }
        $query = $this->db->get();

        return $query->result();
    }


    
    function addNewRole($roleInfo)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_roles', $roleInfo);

        $insert_id = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id;
    }

  
    function getRoleInfo($roleId)
    {
        $this->db->select('roleId, role, status');
        $this->db->from('tbl_roles');
        $this->db->where('roleId', $roleId);
        $this->db->where('isDeleted', 0);
        $query = $this->db->get();

        return $query->row();
    }


   
    function editRole($roleInfo, $roleId)
    {
        $this->db->where('roleId', $roleId);
        $this->db->update('tbl_roles', $roleInfo);

        return TRUE;
    }



    function deleteUser($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->update('tbl_users', $userInfo);

        return $this->db->affected_rows();
    }


   
    function getRoleAccessMatrix($roleId)
    {
        $result = $this->getRoleAccessMatrixQuery($roleId);

        if (is_null($result)) {

            $CI = &get_instance();
            $modules = $CI->config->item('moduleList');

            $accessMatrix = array('roleId' => $roleId, 'access' => json_encode($modules), 'createdBy' => 1, 'createdDtm' => date('Y-m-d H:i:s'));

            $this->insertAccessMatrix($accessMatrix);

            $result = $this->getRoleAccessMatrixQuery($roleId);
        }

        return $result;
    }

    
    private function getRoleAccessMatrixQuery($roleId)
    {
        $this->db->select('roleId, access');
        $this->db->from('tbl_access_matrix');
        $this->db->where('roleId', $roleId);
        $query = $this->db->get();

        $result = $query->row();
        return $result;
    }

    
    function insertAccessMatrix($accessMatrix)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_access_matrix', $accessMatrix);
        $this->db->trans_complete();
    }

    
    function getFromAccessMatrix2()
    {
        $this->db->select('*');
        $this->db->from('tbl_access_matrix');
        $this->db->where('roleId', 1);
        $query = $this->db->get();

        $result = $query->row();
        return $result;
    }

    
    function generateMatrix()
    {
        $this->db->select('*');
        $this->db->from('tbl_roles');
        $query = $this->db->get();

        $roles = $query->result();

        if (empty ($result)) {
            $CI = &get_instance();
            $modules = $CI->config->item('moduleList');

            foreach ($roles as $role) {
                $this->db->select('*');
                $this->db->from('tbl_access_matrix');
                $this->db->where('roleId', $role->roleId);
                $query2 = $this->db->get();

                $accessMatrices = $query2->result();

                if (empty ($accessMatrices)) {
                    $accessMatrix = array('roleId' => $role->roleId, 'access' => json_encode($modules), 'createdBy' => 1, 'createdDtm' => date('Y-m-d H:i:s'));

                    $this->insertAccessMatrix($accessMatrix);
                }
            }
        }
    }

    
    function updateAccessMatrix($roleId, $accessMatrix)
    {
        $this->db->where('roleId', $roleId);
        $this->db->update('tbl_access_matrix', $accessMatrix);

        return $this->db->affected_rows();
    }
    public function deleteRole($roleId)
    {
        // Perform deletion query
        $this->db->where('roleId', $roleId);
        $this->db->delete('tbl_roles');

        // Check if deletion was successful
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

}

