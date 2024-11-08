<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Empr�stimo</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h1>Cadastro de Empr�stimo</h1>
<form action="/trabalho1/addLoan" method="post">
            <label for="bookId">Nome do Livro:</label>
<input type="text" id="bookName" name="bookName" required>

            <label for="userId">Nome do Usu�rio:</label>
			<input type="text" id="userName" name="userName" required>

            <label for="loanDate">Data de Empr�stimo:</label>
            <input type="date" id="loanDate" name="loanDate" required>

            <label for="returnDate">Data Prevista para Devolu��o:</label>
            <input type="date" id="returnDate" name="returnDate" required>

            <button type="submit">Cadastrar Empr�stimo</button>
        </form>
    </div>
</body>
</html>
