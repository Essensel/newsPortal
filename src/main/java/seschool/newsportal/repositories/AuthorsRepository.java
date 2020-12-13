package seschool.newsportal.repositories;

import org.springframework.data.repository.CrudRepository;
import seschool.newsportal.beans.Author;

public interface AuthorsRepository extends CrudRepository<Author, Long> {
}
