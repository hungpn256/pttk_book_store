package DAO.cart;

import java.util.List;

import model.Cart;
import model.CartItem;
import model.Customer;

public interface CartDAO {
	public Cart getMyCart(Customer c);
	public void createCartItem(CartItem ci);
	public void updateCartItem(CartItem ci);
	public void deleteCartItem(CartItem ci);	
	public Cart getCurrentCart(Customer c);
	public void createCart(Cart c);
	public CartItem getCartItemById(int id);
	public CartItem checkCartExist(int idBookItem, int idCartItem);
	public List<CartItem> getAllCartItem(Cart c);
}
