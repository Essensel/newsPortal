package seschool.newsportal.beans;

import javax.persistence.*;
import java.util.List;

@Entity(name = "author")
public class Author {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;

    String name;
    String lastName;
    String patronName;
    int rating;

    @OneToMany(mappedBy = "author")
    private List<NewItem> news;

    public void setNews(List<NewItem> news) {
        this.news = news;
    }

    public List<NewItem> getNews() {
        return news;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public void setPatronName(String patronName) {
        this.patronName = patronName;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPatronName() {
        return patronName;
    }

    public String getName() {
        return name;
    }

    public String getLastName() {
        return lastName;
    }

    public Long getId() {
        return id;
    }

    public int getRating() {
        return rating;
    }

}
