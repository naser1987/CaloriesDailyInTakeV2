<%-- 
    Document   : FruitDetails
    Created on : Dec 19, 2022, 6:56:04 PM
    Author     : Naser
--%>

<%@page import="model.Fruit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fruit Details</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="Css/css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            Fruit fruit = (Fruit) request.getAttribute("fruit");
        %>
     
        <div class="fdetail">
           
            <table class="table table-hover table-dark">
                <tr>
                    <td colspan="2">
                        <img src="images\<%=fruit.image%>" width="100%" height="150px"/>
                    </td>
                </tr>
                <tr>
                    <th>Id</th>
                    <td><%= fruit.id%></td>
                </tr>
                <tr>
                    <th>Fruit Name</th>
                    <td><%= fruit.fruitName%></td>
                </tr>
                <tr>
                    <th>Gram</th>
                    <td><%= fruit.gram%></td>
                </tr>
                <tr>
                    <th>Calories</th>
                    <td><%= fruit.Calories%></td>
                </tr>
                <tr>
                    <th>Calories From Fat</th>
                    <td><%= fruit.CaloriesfromFat%></td>
                </tr>
                <tr>
                    <th>Total Fat_g</th>
                    <td><%= fruit.TotalFat_g%></td>
                </tr>
                <tr>
                    <th>Sodium_mg</th>
                    <td><%= fruit.Sodium_mg%></td>
                </tr>
                <tr>
                    <th>Potassium_mg</th>
                    <td><%= fruit.Potassium_mg%></td>
                </tr>
                <tr>
                    <th>Total Carb_g</th>
                    <td><%= fruit.TotalCarb_g%></td>
                </tr>
                <tr>
                    <th>Dietary Fiber_g</th>
                    <td><%= fruit.DietaryFiber_g%></td>
                </tr>
                <tr>
                    <th>Sugars_g</th>
                    <td><%= fruit.Sugars_g%></td>
                </tr>
                <tr>
                    <th>Protein_g</th>
                    <td><%= fruit.Protein_g%></td>
                </tr>
                <tr>
                    <th>Vitamin A_DV</th>
                    <td><%= fruit.VitaminA_DV%></td>
                </tr>
                <tr>
                    <th>Vitamin C_DV</th>
                    <td><%= fruit.VitaminC_DV%></td>
                </tr>
                <tr>
                    <th>Calcum DV</th>
                    <td><%= fruit.Calcum_DV%></td>
                </tr>
                <tr>
                    <th>Iron DV</th>
                    <td><%= fruit.Iron_DV%></td>
                </tr>
                <tr>
                    <td><a href ='Control?cmd=Fruits'>Back</a></td> 
                    <td><a href ='Control?cmd=FruitAS&id=<%=fruit.id%>'> Add To List</a></td>
                </tr>

            </table>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
