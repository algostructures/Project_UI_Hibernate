package Helpers;

import DAO.AdminDaoImpl;
import DAO.OperatorDaoImpl;
import entities.Admin;

/**
 * Created by prajapas on 7/24/2017.
 */
public class Validation {
    public static int login(String username, String password) {
        AdminDaoImpl admin = new AdminDaoImpl();
        OperatorDaoImpl operator = new OperatorDaoImpl();
        if(admin.validate(new Admin(username, password))) {
            return 1;
        }
        // if(operator.validate()){
          //  return 2;
        //}
        else {
            return 0;
        }
    }
}
