package Hibernate; /**
 *
 * @author ADMIN
 */

import entities.*;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class HQLManage {
    private static SessionFactory factory;
    /*public static void main(String[] args) {
       try{
           //step 1: Create Session Factory
          factory = new Configuration().configure().buildSessionFactory();
       }catch (Throwable ex) {
          System.err.println("Failed to create sessionFactory object." + ex);
          throw new ExceptionInInitializerError(ex);
       }
       HQLManageService ME = new HQLManageService();

       ME.listServiceVehicleFull();
   }*/
    public static void preLoad(){
        try{
            //step 1: Create Session Factory
            factory = new Configuration().configure().buildSessionFactory();
        }catch (Throwable ex) {
            System.err.println("Failed to create sessionFactory object." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public List listServiceVehicleFull( ){
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM Service");
            List vehicles = qry.list();
            tx.commit();
            return vehicles;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

    public void addServiceVehicle(String v, String ow,int o, boolean b) {
        Session session = factory.openSession();
        Transaction tx = null;
        tx = session.beginTransaction();
        Service sc = new Service();
        sc.setOdometer(o);
        sc.setOwner(ow);
        sc.setVehicleModel(v);
        sc.setFree(b);
        session.save(sc);
        session.close();
    }

    public void addVehicle(Vehicle vehicle) {
        Session session = factory.openSession();
        Transaction tx = null;
        tx = session.beginTransaction();
        Vehicle vehicle1 = new Vehicle();
        vehicle1.setNumber(vehicle.getNumber());
        vehicle1.setPrice(vehicle.getPrice());
        vehicle1.setTax(vehicle.getTax());
        vehicle1.setVehicle_model(vehicle.getVehicle_model());
        session.save(vehicle1);
        session.close();
    }

    public List listVehicle(){
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM Vehicle");
            List vehicles = qry.list();
            tx.commit();
            return vehicles;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

    public void addOperator(Operator operator){
        Session session = factory.openSession();
        Transaction tx = null;
        tx = session.beginTransaction();
        Operator operator1 = new Operator();
        operator1.setName(operator.getName());
        operator1.setUserName(operator.getUserName());
        operator1.setPassword(operator.getPassword());
        operator1.setBlocked(operator.getBlocked());
        session.save(operator1);
        session.close();
    }

    public List listOperator(){
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM Operator");
            List vehicles = qry.list();
            tx.commit();
            return vehicles;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

    public void blockOperator(int id, boolean blocked){
        Session session = factory.openSession();
        Query query = session.createQuery("update Operator set blocked =:isBlocked where id = :id ");
        query.setBoolean("blocked", blocked);
        query.setInteger("id", id);
        int result = query.executeUpdate();
        session.close();
    }

    public void addSparePart(SpareParts spareParts){
        Session session = factory.openSession();
        Transaction tx = null;
        tx = session.beginTransaction();
        SpareParts spareParts1 = new SpareParts();
        spareParts1.setNumbers(spareParts.getNumbers());
        spareParts1.setPrice(spareParts.getPrice());
        spareParts1.setTax(spareParts.getTax());
        spareParts1.setSparepart_ID(spareParts.getSparepart_ID());
        spareParts1.setSparepartName(spareParts.getSparepartName());
        spareParts1.setVehicle_model(spareParts.getVehicle_model());
        session.save(spareParts1);
        session.close();
    }

    public List listSparePart(){
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM SpareParts");
            List vehicles = qry.list();
            tx.commit();
            return vehicles;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

    public void addOrder(Orders orders){
        Session session = factory.openSession();
        Transaction tx = null;
        tx = session.beginTransaction();
        Orders orders1 = new Orders();
        orders1.setOrderedBy(orders.getOrderedBy());
        orders1.setVehicleModel(orders.getVehicleModel());
        orders1.setSparePartId(orders.getSparePartId());
        orders1.setSparePartName(orders.getSparePartName());
        orders1.setOperation(orders.getOperation());
        orders1.setNumbers(orders.getNumbers());
        orders1.setPrice(orders.getPrice());
        orders1.setTax(orders.getTax());
        orders1.setDate(orders.getDate());
        session.save(orders1);
        session.close();
    }

    public List listOrders(){
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query qry = session.createQuery("FROM Orders");
            List vehicles = qry.list();
            tx.commit();
            return vehicles;
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return null;
    }

    public boolean validateAdmin(Admin admin){
        Session session = factory.openSession();
        Query q = session.createQuery("from Admin where username = :username");
        q.setParameter("username", admin.getUserName());
        if(q.uniqueResult() == null){
            session.close();
            return false;
        }
        else{
            Admin tempAdmin = (Admin) q.uniqueResult();
            session.close();
            return (tempAdmin.getPassword().equals(admin.getPassword()));
        }
    }

    public boolean validateOperator(Operator operator){
        Session session = factory.openSession();
        Query q = session.createQuery("from Operator where userName = :username");
        q.setParameter("username", operator.getUserName());

        if(q.uniqueResult() == null){
            session.close();
            return false;
        }
        else{
            Operator operator1 = (Operator) q.uniqueResult();
            session.close();
            return (operator1.getPassword().equals(operator.getPassword()));
        }
    }

    public boolean validateUser(User user){
        Session session = factory.openSession();
        Query q = session.createQuery("from User where username = :username");
        q.setParameter("username", user.getUsername());
        if(q.uniqueResult() == null){
            session.close();
            return false;
        }
        else{
            User user1 = (User) q.uniqueResult();
            session.close();
            return (user1.getPassword().equals(user.getPassword()));
        }
    }

    public Vehicle findVehicle(String vehicleModel){
        Session session = factory.openSession();
        Query q = session.createQuery("from Vehicle where vehicle_model = :vehicleModel");
        q.setParameter("vehicleModel", vehicleModel);
        if(q.uniqueResult() == null){
            return null;
        }
        return (Vehicle) q.uniqueResult();
    }

    public SpareParts findSparePart(String sparepartID){
        Session session = factory.openSession();
        Criteria criteria = session.createCriteria(SpareParts.class);
        SpareParts yourObject = (SpareParts) criteria.add(Restrictions.eq("sparepart_ID", sparepartID))
                .uniqueResult();

        if(yourObject == null){
            return null;
        }
        return yourObject;
    }

    public void updateSparePart(SpareParts sp) {
        Session session = factory.openSession();
        Object o = session.load(SpareParts.class, sp.getId());
        SpareParts spareParts1 = (SpareParts) o;
        Transaction tx = session.beginTransaction();
        spareParts1.setNumbers(sp.getNumbers());
        tx.commit();
        session.close();
    }

    public void updateVehicle(Vehicle vehicle) {
        Session session = factory.openSession();
        Object o = session.load(Vehicle.class, vehicle.getId());
        Vehicle vehicle1 = (Vehicle) o;
        Transaction tx = session.beginTransaction();
        vehicle1.setNumber(vehicle.getNumber());
        tx.commit();
        session.close();
    }
}
