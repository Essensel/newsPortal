package seschool.newsportal.repositories;

import org.springframework.data.repository.CrudRepository;
import seschool.newsportal.security.User;

public interface UsersRepository extends CrudRepository<User, Long> {
}
