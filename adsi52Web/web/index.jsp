<%-- 
    Document   : index
    Created on : 20/08/2019, 02:29:49 PM
    Author     : RICARDO
--%>

<%@page import="java.util.List"%>
<%@page import="com.adsi.modelo.Aprendiz"%>
<%@page import="java.util.LinkedList"%>
<%@page import="com.adsi.controlador.Controlador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hola Mundo JPS</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <h1> Prueba de JSP</h1>
        
        <%
          Controlador controlador = new Controlador();
          
          controlador.conectar();
          
           
          List<Aprendiz> lista = controlador.findAllAprendices();
          
          
          
        %>
        <br>
        
        La tabla de Aprendices tiene <%=lista.size() %> Registros.
      
        <div class="container">
            
       <table class="table table-dark">
           <thead>
               <tr>
                   <th scope="col">Nombre Completo Aprendiz</th>
               </tr>
           </thead>
           <tbody>

               <%
                   for (Aprendiz item : lista) {
               %>
               <tr>
                   <td><%=item.getNombres() + " " + item.getApellido1() + " " + item.getApellido2()%> </td>
               </tr> 
               <%
                   }
               %>


           </tbody>
        
        
       </table>
        
        </div>        
        
        
        
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 
        
        
    </body>
</html>
