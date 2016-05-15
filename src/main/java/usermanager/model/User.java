package usermanager.model;

import javax.persistence.*;
import java.sql.Timestamp;


@Entity
@Table(name = "USERS")
public class User{
    private int id;
    private String name;
    private int age;
    private boolean admin;
    private Timestamp createdDate;

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "id", nullable = false)

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 25)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "age", nullable = false, length = 3)
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Basic
    @Column(name = "isAdmin")
    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    @Basic
    @Column(name = "createdDate", nullable = false)
    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;

        User user = (User) o;

        if (getId() != user.getId()) return false;
        if (getAge() != user.getAge()) return false;
        if (isAdmin() != user.isAdmin()) return false;
        if (!getName().equals(user.getName())) return false;
        return getCreatedDate().equals(user.getCreatedDate());

    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + getName().hashCode();
        result = 31 * result + getAge();
        result = 31 * result + (isAdmin() ? 1 : 0);
        result = 31 * result + getCreatedDate().hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", admin=" + admin +
                ", createdDate=" + createdDate +
                '}';
    }
}
