package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Supplier;

@Repository(value="SupplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	SessionFactory sessionfactory;

	public boolean addSupplier(Supplier supplier) 
	{
		try
		{
			System.out.println("Adding");
			sessionfactory.getCurrentSession().saveOrUpdate(supplier);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Error while adding");
			return false;
		}
	}

	public boolean updateSupplier(Supplier supplier) 
	{
		try
		{
			sessionfactory.getCurrentSession().update(supplier);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Error while updating");
			return false;
		}
	}

	public boolean deleteSupplier(Supplier supplier) 
	{
		try
		{
			sessionfactory.getCurrentSession().delete(supplier);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Error while deleting");
			return false;
		}
	}

	public Supplier getSupplier(int supplierId) 
	{
		Session session=sessionfactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class, supplierId);
		session.close();
		return supplier;
	}

	public List<Supplier> listSuppliers() 
	{
		Session session=sessionfactory.openSession();
		List<Supplier> listSuppliers=session.createQuery("from Supplier").list();
		session.close();
		return listSuppliers;
	}

}
