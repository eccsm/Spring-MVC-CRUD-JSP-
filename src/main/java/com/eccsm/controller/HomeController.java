package com.eccsm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eccsm.model.Item;
import com.eccsm.service.ItemService;
import com.eccsm.validator.ItemValidator;

@Controller
public class HomeController {

	@Autowired
	private ItemService itemService;

	@Autowired
	private ItemValidator validator;

	@RequestMapping(value = "additem")
	public ModelAndView newMusteri(@ModelAttribute Item item) {

		return new ModelAndView("create");
	}

	@RequestMapping(value = "edititem")
	public ModelAndView updateitem(@RequestParam long id, @ModelAttribute Item item) {

		item = itemService.getItem(id);
		return new ModelAndView("create", "item", item);
	}

	@RequestMapping(value = "saveitem")
	public ModelAndView savetem(@ModelAttribute Item item, BindingResult result) {

		validator.validate(item, result);
		if (!result.hasErrors()) {
			if (item.getId() == 0) {
				itemService.saveItem(item);
			} else {
				itemService.updateItem(item);
			}
			return new ModelAndView("redirect:listitem");
		} else {
			return new ModelAndView("create");
		}
	}

	@RequestMapping(value= "deleteitem")
	public ModelAndView deleteitem(@RequestParam long id) {

		itemService.deleteItem(id);
		return new ModelAndView("redirect:listitem");
	}

	@RequestMapping(value = "listitem")
	public ModelAndView findAllitem() {

		List<Item> itemList = itemService.listItems();
		return new ModelAndView("list", "item", itemList);
	}

}
