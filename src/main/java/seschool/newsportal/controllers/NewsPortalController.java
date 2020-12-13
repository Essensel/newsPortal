package seschool.newsportal.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import seschool.newsportal.beans.NewItem;
import seschool.newsportal.beans.NewsList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class NewsPortalController {

	@Autowired
	private NewsList newsList;

	@RequestMapping(value = "/")
	public String showMainPage(ModelMap model) {
		model.addAttribute("newsList", this.newsList.getNewsForMain(4));
		return "main";
	}

	@RequestMapping(value = "/list/")
	public String newsList(ModelMap model, @RequestParam(name = "page", defaultValue = "1") Integer pageNum) {
		//новостей на странице
		int pageSize = 6;

		NewsList newsList = this.newsList;
		model.addAttribute("newsList", newsList.getList(pageNum,pageSize));

		Integer prevPage, nextPage;
		//посчитать страницы для кнопок "вперед" и "назад"

		if (pageNum < 2){
			prevPage = null;
		}
		else {prevPage = pageNum - 1;
		}

		//всего страниц
		int pageCount = newsList.getCount()/pageSize + 1;
		//если последняя, то null
		if (pageNum >= pageCount){
			nextPage = null;
		}
		else {nextPage = pageNum + 1;
		}
		model.addAttribute("prevPage",prevPage);
		model.addAttribute("nextPage",nextPage);

		return "list";
	}
	@RequestMapping(value = "/list/{id}")
	public String detailNews(ModelMap model, @PathVariable Long id) {

		NewsList list = this.newsList;
		model.addAttribute("detailNew", list.getById(id));

		return "detail";
	}
	@RequestMapping(value = "/search")
	public String searchResult (ModelMap model, @RequestParam(name = "q", defaultValue = "") String query){


		//добавит результаты поиска в модель
		model.addAttribute("query", query);
		model.addAttribute("searchResult", this.newsList.search(query));

		return "search";
	}

	@RequestMapping(value = "/saveNew/", method = RequestMethod.POST)
	public String addNew(@RequestParam(defaultValue = "") String title,
						 @RequestParam(defaultValue = "") String text,
						 @RequestParam(defaultValue = "") String writer,
						 @RequestParam(defaultValue = "") String date,
						 @RequestParam(defaultValue = "") String imgUrl,
						 @RequestParam(defaultValue = "0") Integer showOnMain,
						 @RequestParam(defaultValue = "0") Long id
	){

		//Создать объект новости
		NewItem newItem = new NewItem();
		//Заполнить новость данными из формы
		newItem.setTitle(title);
		newItem.setText(text);
		newItem.setWriter(writer);
		newItem.setDate(date);
		newItem.setPicture(imgUrl);
		newItem.setShowOnMain(false);
		if (id > 0) {
			newItem.setId(id);
		}
		if (showOnMain == 1) {
			newItem.setShowOnMain(true);
		}

		//Сохранить новость
		this.newsList.saveNew(newItem);

		return "redirect:/list/" + newItem.getId();
	}



	/**
	 * Показать форму для редактирования/добавления новостей
	 * @param model
	 * @return
	 */
	@RequestMapping(value = {"/newsform/", "/newsform/{id}/"})
	public String showNewsform(Model model, @PathVariable Optional<Long> id) {

		if (id.isPresent()) {
			NewItem newToUpdate = this.newsList.getById(id.get());
			if (newToUpdate != null) {
				model.addAttribute("newToUpdate", newToUpdate);
			}
			else {
				return "redirect:/newsform/";
			}
		}
		else {
			model.addAttribute("newToUpdate", null);
		}
		return "newsform";
	}


	@RequestMapping(value = "/deleteNew/{id}/")
	public String deleteNew(Model model, @PathVariable Long id) {


		try {
			newsList.deleteNew(id);
			model.addAttribute("success", true);
		}
		catch (Exception error) {
			model.addAttribute("success", false);
			model.addAttribute("errorMessage", error.getMessage());
		}

		return "deleteResult";
	}
}
