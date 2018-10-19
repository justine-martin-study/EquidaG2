/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import static database.LotDAO.requete;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modele.Lot;
import modele.TypeCheval;

/**
 *
 * @author slam
 */
public class TypeChevalDAO {
    
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    public static TypeCheval getTypeCheval(Connection connection, int idTypeCheval) {
       TypeCheval unTypeCheval = new TypeCheval();
       try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("select * from typecheval WHERE id=?");
            requete.setInt(1, idTypeCheval);
            
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                unTypeCheval.setId(rs.getInt("id"));
                unTypeCheval.setLibelle(rs.getString("libelle"));
                unTypeCheval.setDesc(rs.getString("description"));
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return unTypeCheval;  
    }
    
    public static ArrayList<TypeCheval>  getLesTypeCheval(Connection connection){      
        ArrayList<TypeCheval> lesTypeCheval = new  ArrayList<TypeCheval>();
        try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("select * from typecheval");
            
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                TypeCheval unTypeCheval = new TypeCheval();
                unTypeCheval.setId(rs.getInt("id"));
                unTypeCheval.setLibelle(rs.getString("libelle"));
                unTypeCheval.setDesc(rs.getString("description"));
                
                lesTypeCheval.add(unTypeCheval);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return lesTypeCheval;    
    } 
}
