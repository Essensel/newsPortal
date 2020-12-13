package seschool.newsportal.beans;

import javax.persistence.*;

@Entity(name = "news")
public class NewItem {
    //Колонки
    private String title;
    private String text;
    private String date;
    private String picture;
    private String writer;
    private boolean showOnMain = false;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @ManyToOne
    public Author author;
    //Колонки

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Author getAuthor() {
        return author;
    }

    //Сеттеры и геттеры

    public void setShowOnMain(boolean showOnMain) {
        this.showOnMain = showOnMain;
    }

    public boolean isShowOnMain() {
        return showOnMain;
    }

    public String getPreviewText() {
        if (this.text != null && this.text.length() > 20) {
            return this.text.substring(0, 20) + "...";
        }
        else {return this.text;
        }
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getPicture() {
        if (this.picture == null || this.picture.equals("")) {
            return "/img/nophoto.png";
        }
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getText() {
        return text;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return this.title;
    }

}
