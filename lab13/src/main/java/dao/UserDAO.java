package dao;

import model.User;

import java.util.HashMap;
import java.util.Map;

public class UserDAO {
    private Map<String, User> users = new HashMap<>();

    {
        users.put("james", new User("james", "mypassword"));
        users.put("john", new User("john", "letmein"));
        users.put("peter", new User("peter", "123456"));
    }

    public User getUserByUserName(String username){
        return users.get(username);
    }

    public boolean userExists(String username){
        return users.containsKey(username);
    }

}
