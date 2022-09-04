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

        .main form {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: white;
            padding: 20px 30px;
            border-radius: 10px;
        }

        .main form input {
            padding: 5px 7px;
            border-radius: 10px;
            border: 1px solid gray;
            background-color: transparent;
            margin: 5px 0;
        }
    </style>
</head>

<body>
    <div class="main">
        <h1>Random Password Generator</h1>
        <form action="passwordgenerateservlet" method="post">
            <label for="passwordlength">Password Length</label>
            <input type="number" name="passwordlength" id="passwordlength" placeholder="Enter Length In Number">

            <div class="checkbox">
                <input type="checkbox" name="uppercase" id="uppercase">
                <label for="uppercase">Upper Case</label>
            </div>

            <div class="checkbox">
                <input type="checkbox" name="lowercase" id="lowercase">
                <label for="lowercase">Lower Case</label>
            </div>

            <div class="checkbox">
                <input type="checkbox" name="number" id="number">
                <label for="number">Number</label>
            </div>

            <div class="checkbox">
                <input type="checkbox" name="specialcharacter" id="specialcharacter">
                <label for="specialcharacter">Special Character</label>
            </div>

            <input type="submit" value="Generate">
        </form>
    </div>
</body>

</html>