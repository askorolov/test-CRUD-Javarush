package usermanager.dao;


import org.springframework.beans.support.PagedListHolder;
import usermanager.model.User;

import java.util.List;

public interface IUserDao {
    void removeUser(int id);
    User getUserById(int id);
    PagedListHolder<User> listUsers(int page);
    List<User> getUsersByName(String userName);
    void addUser(User user);
    void updateUser(User user);








}
