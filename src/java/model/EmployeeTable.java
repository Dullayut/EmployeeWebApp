/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Vector;
import javax.persistence.EntityManager;

/**
 *
 * @author thead
 */
public class EmployeeTable {
    public static Vector<Employee> findAllEmployee(EntityManager em) {
        Vector<Employee> empList = null;
        try {
            empList = (Vector<Employee>) em.createNamedQuery("Employee.findAll").getResultList();
            //em.close();
            
        } catch (Exception e) {
            //Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
        return empList;
    }
    public static Employee findEmployeeById(EntityManager em, int id) {
        Employee emp = null;
        try {
            emp = em.find(Employee.class, id);
            //em.close();
            
        } catch (Exception e) {
            //Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
        return emp;
    }
    //public static int updateEmployee(EntityManager em, 
    //        UserTransaction utx, Employee emp) {
    public static int updateEmployee(EntityManager em, Employee emp) {
        try {
            em.getTransaction().begin();
            Employee target = em.find(Employee.class, emp.getId());
            if (target == null) {
                return 0;
            }
            target.setName(emp.getName());
            target.setSalary(emp.getSalary());
            em.persist(target);
            em.getTransaction().commit();
        } catch (Exception e) {
            //Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
            
        }
        return 1;
        
    }
    public static int removeEmployee(EntityManager em, int id) {
        try {
            em.getTransaction().begin();
            Employee target = em.find(Employee.class, id);
            if (target == null) {
                return 0;
            }
            em.remove(target);
            em.getTransaction().commit();
        } catch (Exception e) {
            //Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
            
        }
        return 1;
    }
    
    public static int insertEmployee(EntityManager em, Employee emp) {
        try {
            em.getTransaction().begin();
            Employee target = em.find(Employee.class, emp.getId());
            if (target != null) {
                return 0;
            }
            em.persist(emp);
            em.getTransaction().commit();
        } catch (Exception e) {
            //Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
            
        }
        return 1;
    }
}
