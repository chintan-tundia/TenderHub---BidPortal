package com.tenderhub.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import com.tenderhub.model.ContactUsModel;

public interface TenderHubDAO {

   public boolean insertContact(ContactUsModel model) throws SQLException;
  // public boolean update(Book bk) throws SQLException;
  // public Book findByID(String id) throws SQLException;
  // public boolean delete(String isbn) throws SQLException;
  // public ArrayList<Book> getAll() throws SQLException;
    
}
