package Pm.service;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import Pm.dao.ProductDao;
import Pm.dto.MyProduct;

@Service
public class ProductService {

	@Autowired
	ProductDao dao;

	public String addProduct(HttpSession session, ModelMap map) {
		if (session.getAttribute("username") != null)
			return "add-product.jsp";
		else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}
	}

	public String addProduct(HttpSession session, ModelMap map, MyProduct product) {
		if (session.getAttribute("username") != null) {
			dao.save(product);
			map.put("message", "Product Added Success");
			return "home.jsp";
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}

	}

//product service
	public String fetchProducts(HttpSession session, ModelMap map) {
		if (session.getAttribute("username") != null) {
			List<MyProduct> products = dao.findProducts();
			if (products.isEmpty()) {
				map.put("message", "No Products Found");
				return "home.jsp";
			}else {
				map.put("products", products);
				return "products.jsp";
			}
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}
	}
  //delete service
	public String deleteProduct(int id, ModelMap map, HttpSession session) {
		if (session.getAttribute("username") != null) {
			dao.delete(id);
			map.put("message", "Product Removed Success");
			return "fetch-products";
			
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}
	}
	
	//edit service
	public String editProduct(int id, ModelMap map, HttpSession session) {
		if (session.getAttribute("username") != null) {
			MyProduct product=dao.findProduct(id);
			map.put("p",product);
			return "edit-product.jsp";
			
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}
	}

	public String editProduct(MyProduct product, ModelMap map, HttpSession session) {
		if (session.getAttribute("username") != null) {
			dao.update(product);
			map.put("message", "Product Updated Success");
			return "fetch-products";
		} else {
			map.put("message", "Invalid Session, Login First");
			return "login.jsp";
		}
	}
}
