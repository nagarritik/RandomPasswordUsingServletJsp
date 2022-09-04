<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Random Password Generator</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Georgia, 'Times New Roman', Times, serif;
        }

        body {
            background-color: aquamarine;
        }

        .main {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        button{
            background-color: transparent;
            padding: 5px 7px;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div class="main">
        <%
            if(session.getAttribute("generatedPassword")!=null){
                %>
                    <h1><%=session.getAttribute("generatedPassword")%></h1>
                <%
            }else{
                %>
                    <h1>No Password Generated Yet</h1>
                <%
            }
        %>
        <a href="index.jsp"><button>Generate New Password</button></a>
    </div>
</body>

</html>