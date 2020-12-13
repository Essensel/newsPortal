package seschool.newsportal.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import seschool.newsportal.beans.NewItem;

import java.util.List;

public interface NewsRepository extends PagingAndSortingRepository<NewItem, Long> {

    /**
     * Найти новости по флагу
     * @param show - флаг
     * @return
     */
    List<NewItem> findByShowOnMain(boolean show);

    /**
     * Найти новости по флагу с постраничкой
     * @param show - флаг
     * @return
     */
    Page<NewItem> findByShowOnMain(boolean show, Pageable pageable);

    @Query("from news where title like %:query% or text like %:query%")
    List<NewItem> search(@Param("query") String query);

}
