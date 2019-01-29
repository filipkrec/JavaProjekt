/**
 * StudentServiceImplementation.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package com.javax.services;

public interface StudentServiceImplementation extends java.rmi.Remote {
    public boolean deleteStudent(int id) throws java.rmi.RemoteException;
    public com.javax.beans.Student getStudent(int id) throws java.rmi.RemoteException;
    public boolean addStudent(com.javax.beans.Student p) throws java.rmi.RemoteException;
    public com.javax.beans.Student[] getAllStudents() throws java.rmi.RemoteException;
}
