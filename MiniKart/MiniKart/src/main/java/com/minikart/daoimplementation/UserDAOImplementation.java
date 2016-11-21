package com.minikart.daoimplementation;



import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.dao.UserDAO;
import com.minikart.model.BillingAddress;
import com.minikart.model.Cart;
import com.minikart.model.Product;
import com.minikart.model.ShippingAddress;
import com.minikart.model.Supplier;
import com.minikart.model.User;
import com.minikart.model.UserDetails;
import com.minikart.model.UserRole;

@Repository
public class UserDAOImplementation implements UserDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public void saveOrUpdateUser(UserDetails userDetails) {
		
		Session session = this.sessionFactory.getCurrentSession();
		User user = new User();
		user.setUsername(userDetails.getUsername());
		user.setPassword(userDetails.getPassword());
		
		user.setEnabled(true);
		
		
		user.setUserId(userDetails.getUserId());
		
		session.saveOrUpdate(user);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);

		userDetails.setUserId(user.getUserId());
		userDetails.setCartId(cart.getCartId());
		
		session.saveOrUpdate(userDetails);
		

		
		 
		session.flush();
		
	}
	
	@SuppressWarnings("unchecked")
	public String listUserViaJson() {
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<User> list = sessionFactory.getCurrentSession().createQuery("from User").getResultList();
		String listUser = gson.toJson(list);
		return listUser;
	}
	
	@SuppressWarnings("unchecked")
	public List<UserDetails> listUserDetails() {
		
		List<UserDetails> userDetailsList = sessionFactory.getCurrentSession().createQuery("from UserDetails").getResultList();
		
		return userDetailsList;
	}
	
	public void saveOrUpdateShipping(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);		
	}
	public void saveOrUpdateBilling(BillingAddress billingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);		
	}
	public void saveOrUpdateUserRole(UserRole userRole) {
		sessionFactory.getCurrentSession().saveOrUpdate(userRole);	
	}
	public void saveOrUpdateSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);		
	}
	

	public void enableDisableUser(int userId) {
		sessionFactory.getCurrentSession().createQuery("update User set enabled = case when enabled=true then false when enabled=false then true end where userId="+userId ).executeUpdate();
		
	}

	@SuppressWarnings("unchecked")
	public UserDetails getUserDetailsFromName(String username) {
		String query = "from UserDetails where username='"+username+"'";
		List<UserDetails> userList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		
			return userList.get(0);
	
	}

	@SuppressWarnings("unchecked")
	public ShippingAddress getShippingIdById(int userDetails_userId) {
		String query ="from ShippingAddress where userDetails_userId="+userDetails_userId;
		List<ShippingAddress> shippingList = sessionFactory.getCurrentSession().createQuery(query).getResultList();	
		
		if(shippingList!=null && !shippingList.isEmpty())
		{
			return shippingList.get(0);
		}
		else return null;

	}

	
	@SuppressWarnings("unchecked")
	public BillingAddress getBillingIdById(int userDetails_userId) {
		String query ="from BillingAddress where userDetails_userId="+userDetails_userId;
		List<BillingAddress> billingList = sessionFactory.getCurrentSession().createQuery(query).getResultList();		
		if(billingList!=null && !billingList.isEmpty())
		{
			return billingList.get(0);
		}
		else return null;
	}

	@SuppressWarnings("unchecked")
	public Supplier getSupplierIdById(int userDetails_userId) {
		String query ="from Supplier where userDetails_userId="+userDetails_userId;
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery(query).getResultList();		
		if(supplierList!=null && !supplierList.isEmpty())
		{
			return supplierList.get(0);
		}
		else return null;
		
	}

	@SuppressWarnings("unchecked")
	public List<Product> getProductIdById(int supplierId) {
		String query ="from Product where supplierId="+supplierId;
		List<Product> productList = sessionFactory.getCurrentSession().createQuery(query).getResultList();		
		if(productList!=null && !productList.isEmpty())
		{
			return productList;
		}
		else return null;
		
	}

	
}

