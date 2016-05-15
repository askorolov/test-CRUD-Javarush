package usermanager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import usermanager.dao.IUserDao;

import usermanager.model.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService implements IUserService {
   @Autowired
    private IUserDao userDao;

    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional
    public void addUser(User user) {
        this.userDao.addUser(user);
    }



    @Override
    @Transactional
    public void removeUser(int id) {
        this.userDao.removeUser(id);
    }

    @Override
    @Transactional(readOnly = true)
    public User getUserById(int id) {
        return this.userDao.getUserById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public PagedListHolder<User> listUsers(int page) {
        return this.userDao.listUsers(page);
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> getUsersByName(String userName) {
        return this.userDao.getUsersByName(userName);
    }






}
