package com.example.eksatomhkeysh.service;



import com.example.eksatomhkeysh.model.Role;

import java.util.List;

public interface RoleService {

    Role getRoleById(Long id);

    List<Role> getAllRoles();

    Role createRole(Role role);

    Role updateRole(Role role);

    void deleteRole(Long id);


}
