package seschool.newsportal.repositories;

import org.springframework.data.repository.CrudRepository;
import seschool.newsportal.security.Role;

public interface RolesRepository extends CrudRepository<Role, Long> {
}
