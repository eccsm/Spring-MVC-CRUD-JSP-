package com.eccsm.service;

import java.util.List;

import com.eccsm.model.Item;

public interface ItemService {

	public void saveItem(Item item);

	public List<Item> listItems();

	public Item updateItem(Item item);

	public void deleteItem(long id);

	public Item getItem(long id);
}
