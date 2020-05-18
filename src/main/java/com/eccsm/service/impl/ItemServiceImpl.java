package com.eccsm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eccsm.model.Item;
import com.eccsm.repository.ItemDao;
import com.eccsm.service.ItemService;

@Service
@Transactional
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDao itemDao;

	@Override
	public void saveItem(Item item) {
		itemDao.saveItem(item);

	}

	@Override
	public List<Item> listItems() {

		return itemDao.listItems();
	}

	@Override
	public Item updateItem(Item item) {

		return itemDao.updateItem(item);
	}

	@Override
	public void deleteItem(long id) {

		itemDao.deleteItem(id);

	}

	@Override
	public Item getItem(long id) {

		return itemDao.getItem(id);

	}

}
