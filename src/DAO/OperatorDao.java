package DAO;

import entities.Operator;

import java.util.List;

/**
 * Created by prajapas on 7/13/2017.
 */
public interface OperatorDao {
    public List<Operator> getAllOperators();
    public void addOpertor(Operator o);
    public void blockOperator(int id, boolean blocked);
    public boolean validate(Operator operator);
}
