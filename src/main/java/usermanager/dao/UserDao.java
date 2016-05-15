package usermanager.dao;




import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Repository;
import usermanager.model.User;
import java.sql.Timestamp;
import java.util.List;



@Repository
public class UserDao implements IUserDao {
    private static final org.slf4j.Logger logger= LoggerFactory.getLogger(User.class);
    private Session session;

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void removeUser(int id) {
        session = sessionFactory.getCurrentSession();

        User user=(User)session.load(User.class,id);

        if(user!=null){
            session.delete(user);
        }
        logger.info("User successfully removed. User details: " + user);

    }
    @Override
    public User getUserById(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, id);
        logger.info("User successfully loaded. User details: " + user);
        return user;
    }

    @Override
    public PagedListHolder<User> listUsers(int page) {
         session=sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User ");
        List<User> list = query.list();
        PagedListHolder<User> pagedListHolder=new PagedListHolder(list);
        pagedListHolder.setPageSize(15);
        pagedListHolder.setPage(page);
        logger.info("User list successfully obtained");
        return pagedListHolder;
    }

    @Override
    public List<User> getUsersByName(String userName) {
        session=sessionFactory.openSession();
        Query query = session.createQuery("from User u where u.name = :userName ");
        query.setParameter("userName",userName);
        List<User> list = query.list();
        logger.info("User list by name successfully obtained");
        return list;
    }

    @Override
    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        user.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        if(!user.getName().equals(""))
        session.save(user);
        logger.info("User successfully saved. User details: " + user);
    }

    @Override
    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        if(!user.getName().equals(""))
        session.update(user);
        logger.info("User successfully updated. User details: " + user);
    }

}
