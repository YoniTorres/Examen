
package service;

import dao.UsuarioDao;
import modelo.Usuario;

/**
 *
 * @author YONI
 */
public class Acceso {
 
    public Boolean autentificar(String username, String password){
        Boolean respuesta;
        UsuarioDao dao = new UsuarioDao();
        
            Usuario miUsuario = dao.getUsuarioByUsername(username);
        
        if(password.equals(miUsuario.getPassword())){
            
            respuesta = true;
        }else{
            respuesta =false;
        }
        return respuesta;
    }
}
