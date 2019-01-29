package com.javax.services;

public class StudentServiceImplementationProxy implements com.javax.services.StudentServiceImplementation {
  private String _endpoint = null;
  private com.javax.services.StudentServiceImplementation studentServiceImplementation = null;
  
  public StudentServiceImplementationProxy() {
    _initStudentServiceImplementationProxy();
  }
  
  public StudentServiceImplementationProxy(String endpoint) {
    _endpoint = endpoint;
    _initStudentServiceImplementationProxy();
  }
  
  private void _initStudentServiceImplementationProxy() {
    try {
      studentServiceImplementation = (new com.javax.services.StudentServiceImplementationServiceLocator()).getStudentServiceImplementation();
      if (studentServiceImplementation != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)studentServiceImplementation)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)studentServiceImplementation)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (studentServiceImplementation != null)
      ((javax.xml.rpc.Stub)studentServiceImplementation)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public com.javax.services.StudentServiceImplementation getStudentServiceImplementation() {
    if (studentServiceImplementation == null)
      _initStudentServiceImplementationProxy();
    return studentServiceImplementation;
  }
  
  public boolean deleteStudent(int id) throws java.rmi.RemoteException{
    if (studentServiceImplementation == null)
      _initStudentServiceImplementationProxy();
    return studentServiceImplementation.deleteStudent(id);
  }
  
  public com.javax.beans.Student getStudent(int id) throws java.rmi.RemoteException{
    if (studentServiceImplementation == null)
      _initStudentServiceImplementationProxy();
    return studentServiceImplementation.getStudent(id);
  }
  
  public boolean addStudent(com.javax.beans.Student p) throws java.rmi.RemoteException{
    if (studentServiceImplementation == null)
      _initStudentServiceImplementationProxy();
    return studentServiceImplementation.addStudent(p);
  }
  
  public com.javax.beans.Student[] getAllStudents() throws java.rmi.RemoteException{
    if (studentServiceImplementation == null)
      _initStudentServiceImplementationProxy();
    return studentServiceImplementation.getAllStudents();
  }
  
  
}