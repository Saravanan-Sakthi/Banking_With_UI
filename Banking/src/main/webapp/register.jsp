<!DOCTYPE html>
<html lang="en">
<!--<style>
    table{
    width: 50%;
    spacing:50%
    }
</style>-->
<style>
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
<!--        border: 1px solid black;-->
        padding: 5px;
      }
    </style>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
</head>
<body>
<center>
    <img src="https://www.zoho.com/branding/images/zoho-logo.png" height="50" width="150" style="align:center">
<form action="Banker" method="post">
    <table>
<br>
    <tr>
        <td><label>User Name</label></td>
        <td><input type="text" name="user" size="20" placeholder="Name" required></td>
    </tr>

    <tr>
        <td><label>Password</label></td>
        <td><input type="password" name="password" placeholder="Password" size="20"></td>
    </tr>

    <tr>
        <td><label>Confirm Password</label></td>
        <td><input type="password" name="confirmpassword" placeholder="Confirm Password" size="20"></td>
    </tr>

    <tr>
        <td><label>Email ID</label></td>
        <td><input type="text" name="email" placeholder="Email ID" size="20"></td>
    </tr>

    <tr>
        <td><label>Mobile number</label></td>
        <td><input type="number" name="mobile" placeholder="Mobile number" size="20"></td>
    </tr>

    <tr>
        <td><label>Date Of Birth</label></td>
        <td><input type="date" name="dob" size="20"></td>
    </tr>

    <tr>
        <td><label>Gender</label></td>
        <td>
            <input type="radio" name="gender" >Male
            <input type="radio" name="gender" >Female
            <input type="radio" name="gender" >Others
        </td>
    </tr>

    <tr>
        <td><label>Hobbies</label></td>
        <td><textarea name="hobbies"></textarea></td>
    </tr>

    <tr>
        <td>
            <label>State</label>
        </td>
        <td>
            <select size="1">
                <option name="state">Tamil Nadu</option>
                <option name="state">Kerala</option>
                <option name="state">Kashmir</option>
                <option name="state">Delhi</option>
            </select><br>
        </td>
    </tr>

    <tr>
        <td><label>Country</label></td>
        <td>
            <select size="1">
            <option name="country">India</option>
            <option name="country">Japan</option>
            <option name="country">Korea</option>
            <option name="country">Australia</option>
        </select>
        </td>
    </tr>

    <tr>
        <td><label>Comments</label></td>
        <td><textarea name="comments" placeholder="Please enter your valuable comments"></textarea><br></td>
    </tr>



</table>

            <input type="checkbox" name="accepted" required > <a href="https://www.google.com/search?q=terms+and+conditions&oq=terms+and+&aqs=chrome.0.0i433i512j0i512j69i57j0i512l5j46i512j0i512.1906j0j7&sourceid=chrome&ie=UTF-8">Terms and conditions</a>
        <br><br>
        <button type="submit">Submit</button>
            <button type="reset">Reset</button>
</form>
</center>
</body>
</html>