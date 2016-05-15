package usermanager.service;

import org.springframework.beans.support.PagedListHolder;
import usermanager.model.User;

import java.util.List;

public interface IUserService {
void addUser(User user);



    void removeUser(int id);

     User getUserById(int id);

    PagedListHolder<User> listUsers(int page);
    List<User> getUsersByName(String userName);









}
