package entities;

/**
 * Created by prajapas on 7/13/2017.
 */
public class Operator {
    int id;
    private String userName;
    private String name;
    private String password;
    private boolean blocked;

    public Operator() {

    }

    public Operator(String userName, String name, String password, boolean blocked) {
        this.userName = userName;
        this.name = name;
        this.password = password;
        this.blocked = blocked;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setBlocked(boolean blocked) {
        this.blocked = blocked;
    }

    public boolean getBlocked() {
        return blocked;
    }
}
