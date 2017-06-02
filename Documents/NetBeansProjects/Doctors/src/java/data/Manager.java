/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import entities.Schedule;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Maks
 */
public class Manager {

    Session session;

    public Manager() {
        this.session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List getSchedule(String groupId) {
        Transaction tx = this.session.beginTransaction();
        List<Schedule> ListedSchedule = null;
        try {
            Query query = session.createQuery("from Schedule where groupId = " + groupId + " or -1 = " + groupId);
            ListedSchedule = (List<Schedule>) query.list();
            tx.commit();
        } catch (HibernateException ex) {
            ex.printStackTrace();
            tx.rollback();
        }
        return ListedSchedule;
    }
}
