package DAO;

import Hibernate.HQLManage;
import entities.SpareParts;
import java.util.List;

/**
 * Created by prajapas on 7/13/2017.
 */
public class SparePartsDaoImpl implements SparePartsDao {

    public List<SpareParts> getAllSpareParts() {
        HQLManage hqlManage = new HQLManage();
        return hqlManage.listSparePart();
    }

    public boolean addSparePart(SpareParts sparePart) {
        HQLManage hqlManage = new HQLManage();
        if(hqlManage.findSparePart(sparePart.getSparepart_ID()) == null){
            hqlManage.addSparePart(sparePart);
        }
        else{
            SpareParts sp = hqlManage.findSparePart(sparePart.getSparepart_ID());
            sp.setNumbers(sp.getNumbers()+sparePart.getNumbers());
            hqlManage.updateSparePart(sp);
        }
        return true;
    }

    public boolean removeSpareParts(SpareParts id, int number) {

        return false;
    }

    public SpareParts findSparePart(String sparePartId) {
        HQLManage hqlManage = new HQLManage();
        return hqlManage.findSparePart(sparePartId);
    }
}
