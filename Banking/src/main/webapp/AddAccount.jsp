<!DOCTYPE html>
<html lang="en">
<!--<style>
    table{
    width: 50%;
    spacing:50%
    }
</style>-->
<!-- <style>
input[type=text]:focus {
  border-bottom: 1px solid blue;
color: blue;
  font-weight: italic;
}
input[type=password]:focus {
  border-bottom: 1px solid blue;
  color:blue;
  font-weight: italic;
}
input[type=number]:focus {
  border-bottom: 1px solid blue;
  color:blue;
  font-weight: italic;
}
input[type=text]{
  border: 0px solid;
  outline:none;
  border-bottom: 1px solid grey;
}
input[type=password]{
  border: 0px solid;
  outline:none;
  border-bottom: 1px solid grey;
}
input[type=number]{
border: none;
  outline: none;
  border-bottom: 1px solid grey;
}
input[type=date]{
  border: none;
  border-bottom: 1px solid grey;
}
input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
  -webkit-appearance: none;
}
button{
  border: 1px solid blue;
  border-bottom: 1px solid grey;
}
button:focus{
outline:none;
  border: 1px solid blue;
  border-bottom: 1px solid grey;
}

input[type=number] {
  -moz-appearance: textfield;
}
      table {
      height: 600px;
        border-collapse: separate;
        border-spacing: 0 15px;
      }
      th,
      td {
        width: 200px;
        text-align: left;
        border: 1px solid black;
        padding: 5px;
      }
    </style> -->
<head>
    <meta charset="UTF-8">
    <title>Add Account</title>
</head>
<body>
<center>
    <img src="https://www.zoho.com/branding/images/zoho-logo.png" height="50" width="150" style="align:center">
<form action="welcome" method="post">
<input type="hidden" name="option" value="AddAccount">
    <table>
<br>
    <tr>
        <td><label>Customer ID</label></td>
        <td><input type="number" name="id" size="20" placeholder="Customer ID" required></td>
    </tr>

    <tr>
        <td><label>Branch</label></td>
        <td><input type="text" name="branch" placeholder="Branch" size="20"></td>
    </tr>

    <tr>
        <td><label>Initial Deposit</label></td>
        <td><input type="number" name="deposit" placeholder="Initial deposit" size="20"></td>
    </tr>
</table>
        <button type="submit">Submit</button>
            <button type="reset">Reset</button>
</form>
</center>
</body>
</html>