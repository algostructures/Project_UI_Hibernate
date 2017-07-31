package DAO;

import Hibernate.HQLManage;
import entities.Operator;
import java.util.List;

/**
 * Created by prajapas on 7/13/2017.
 */
public class OperatorDaoImpl implements OperatorDao{

    public List<Operator> getAllOperators() {
        HQLManage hqlManage = new HQLManage();
        return hqlManage.listOperator();
    }

    public void addOpertor(Operator operator) {
        HQLManage hqlManage = new HQLManage();
        hqlManage.addOperator(operator);
    }

    public void blockOperator(int id, boolean blocked) {
       HQLManage hqlManage = new HQLManage();
       hqlManage.blockOperator(id, blocked);
    }

    public boolean validate(Operator operator) {
        HQLManage hqlManage = new HQLManage();
        return hqlManage.validateOperator(operator);
    }
}
