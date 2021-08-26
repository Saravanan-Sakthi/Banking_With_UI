<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Customer</title>
</head>
<body>
<center>
    <img src="https://www.zoho.com/branding/images/zoho-logo.png" height="50" width="150" style="align:center">
<form action="welcome" method="post">
<input type="hidden" name="option" value="AddCustomerToApplication">
    <table>
<br>
    <tr>
        <td><label>Name</label></td>
        <td><input type="text" name="name" size="20" placeholder="name" required></td>
    </tr>

    <tr>
        <td><label>Email</label></td>
        <td><input type="text" name="email" placeholder="Email" size="20"></td>
    </tr>
    
        <tr>
        <td><label>Mobile</label></td>
        <td><input type="number" name="mobile" placeholder="Mobile" size="20"></td>
    </tr>

    <tr>
        <td><label>City</label></td>
        <td><input type="text" name="city" placeholder="City" size="20"></td>
    </tr>
    
    <tr>
        <td><label>Initial Deposit</label></td>
        <td><input type="number" name="deposit" placeholder="Initial deposit" size="20"></td>
    </tr>
    
        <tr>
        <td><label>Branch</label></td>
        <td><input type="text" name="branch" placeholder="Branch" size="20"></td>
    </tr>
    
</table>
        <button type="submit">Submit</button>
            <button type="reset">Reset</button>
</form>
</center>
</body>
</html>