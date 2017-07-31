package DAO;

import Hibernate.HQLManage;
import entities.Admin;

/**
 * Created by prajapas on 7/30/2017.
 */
public class AdminDaoImpl implements AdminDao {

    public boolean validate(Admin admin) {
        HQLManage hqlManage = new HQLManage();
        return hqlManage.validateAdmin(admin);
    }

    public boolean addAdmin(Admin a) {
        return false;
    }
}
