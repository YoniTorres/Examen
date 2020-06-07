/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfaces.IProductos;
import java.util.ArrayList;
import modelo.Producto;
import org.hibernate.Query;
import org.hibernate.Session;
import utils.HibernateUtil;

/**
 *
 * @author YONI
 */
public class ProductoDao implements IProductos{

    @Override
    public ArrayList<Producto> getProductos() {
        Session session = null;
        ArrayList<Producto> listar =  new ArrayList<>();
        try{
          session = HibernateUtil.getSessionFactory().openSession();
         String hql = "from Producto";
         Query query = session.createQuery(hql);
         listar = (ArrayList<Producto>) query.list();
         } catch(Exception e){
             System.out.println("ERROR AL LISTAR" + e);
         }finally{
            if (session != null) {
                session.close();
            }
        }
        return listar;
    }
      
}
