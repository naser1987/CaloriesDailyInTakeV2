<%-- 
    Document   : fruitList
    Created on : Dec 19, 2022, 12:31:06 PM
    Author     : Naser
--%>

<%@page import="controller.Control"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Fruit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fruit List</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="Css/css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            ArrayList<Fruit> fruits = (ArrayList<Fruit>) request.getAttribute("fList");
        %>
        <div class="parent">
            <div class="conatiner">
                <h1>Fruit list to choose</h1>
                <table class="table table-hover table-dark">
                    <%
                        if (fruits != null) {
                    %>
                    <tr>
                        <th>Id</th>
                        <th>Fruit Name</th>
                    </tr>
                    <%
                        for (Fruit f : fruits) {
                    %>
                    <tr>
                        <td><%= f.id%></td>
                        <td><a href="Control?cmd=OneFruit&id=<%=f.id%>"><%= f.fruitName%></a></td>
                    </tr>
                    <%
                            }
                        }
                    %>

                </table>
            </div>
                    
            <div class="conatiner">
                <h1>My daily calories intake</h1>
                <%
                    int count = 1;
                    int tgrm = 0;
                    float tcal = 0;
                    ArrayList<Fruit> flTotake = (ArrayList<Fruit>) request.getSession().getAttribute("flTotake");
                %>
                <table class="table table-hover table-dark">
                    <tr>
                        <th>No.</th>
                        <th>Fruit name</th>
                        <th>Grams</th>
                        <th>calories</th>
                        <th></th>
                    </tr>
                    <%
                        if (flTotake != null) {
                            for (Fruit fu : flTotake) {
                    %>
                    <tr>
                        <td><%=count%></td>
                        <td><%= fu.fruitName%></td>
                        <td><%=fu.gram%></td>
                        <td><%=fu.Calories%></td>
                        <td><a href="Control?cmd=FruitDS&id=<%=count%>">Delete</a></td>
                    </tr>

                    <%
                                tgrm = tgrm + fu.gram;
                                tcal = tcal + fu.Calories;
                                count++;
                            }
                        }
                    %>
                    <tr>
                        <td colspan="2" >Totals</td>
                        <td><%=tgrm%></td>
                        <td><%=tcal%></td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
