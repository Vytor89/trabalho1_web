<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="trabalho01.Model.LoanDTO" %> 
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Empr�stimos</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h1>Lista de Empr�stimos</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Livro</th>
            <th>Usu�rio</th>
            <th>Data do Empr�stimo</th>
            <th>Status</th>
            <th>A��es</th>
        </tr>
        <%
            // Recupera a lista de empr�stimos passada pelo Servlet
            List<LoanDTO> loans = (List<LoanDTO>) request.getAttribute("loans");
            
            // Verifica se a lista de empr�stimos n�o est� vazia
            if (loans != null && !loans.isEmpty()) {
                // Itera sobre a lista de empr�stimos
                for (LoanDTO loan : loans) {
        %>
                    <tr>
                        <td><%= loan.getId() %></td>
                        <td><%= loan.getBookName() %></td>
                        <td><%= loan.getUserName() %></td>
                        <td><%= loan.getLoanDate() %></td>
                        <td><%= loan.isReturned() ? "Devolvido" : "Em andamento" %></td>
                        <td>
							<% if (!loan.isReturned()) { %>
							    <a href="editLoan?loanId=<%= loan.getId() %>&action=updateStatus">Atualizar Status</a>
							<% } %>                     
						</td>
                    </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="6">Nenhum empr�stimo encontrado.</td>
            </tr>
        <%  
            }
        %>
    </table>
</body>
</html>
