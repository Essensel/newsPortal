package seschool.newsportal.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import seschool.newsportal.repositories.NewsRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Service
public class NewsList {

    @Autowired
    private NewsRepository repository;


    /**
     * вернуть список новостей
     *
     * @return список новостей
     */

    public List<NewItem> getList(int page, int limit) {
        Page<NewItem> resultPage = repository.findAll(PageRequest.of(page-1, limit));
        return resultPage.getContent();
    }

    /**
     * Вернуть список промотируемых новостей
     * @return
     */
    public List<NewItem> getNewsForMain(int limit) {

        return repository.findByShowOnMain(true, PageRequest.of(0, limit)).getContent();
    }

    public int getCount() {
        return (int) repository.count();
    }

    public NewItem getById(Long id) {
        Optional<NewItem> result = repository.findById(id);
        if (result.isPresent()) {
            return result.get();
        }
        return null;
    }

    //вернуть список всех новостей, содержащих слово query в заголовке или в тексте
    public List<NewItem> search(String query) {
        return repository.search(query);
    }

    public Long saveNew(NewItem newItem){
        repository.save(newItem);
        return newItem.getId();
    }

    public void deleteNew(Long id) {
        repository.deleteById(id);
    }

}
