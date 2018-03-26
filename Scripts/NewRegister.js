var valid = true;
function ValidateDetails() {
    var f = 0;
    var b = false;

    if (!ValidateFirstName()) {
        f = 1;
    }
    if (!ValidateLastName()) {
        f = 1;
    }
    if (!ValidateEmail()) {
        f = 1;
    }
    if (!ValidateContactNo()) {
        f = 1;
    }
    if (!ValidateNewPassword()) {
        f = 1;
    }
    if (!ValidateConfirmPassword()) {
        f = 1;
    }
 

    if (f == 0)
    {
        b = true;
        SucessMessage();
    }        
    else 
        b = false;

    return b;
}

$(document).ready(function () {

});


function SucessMessage()
{
    alert("Registration Sucessful");
}


function ValidateFirstName() {
    ClearError('txtFirst');
    //valid = !isEmpty('txtFirst', "Enter Your First Name") && valid;
    valid = !isString('txtFirst', "* Enter A Valid Name") && valid;
    return valid;
}

function ValidateLastName() {
    ClearError('txtLast');
    //valid = !isEmpty('txtLastName', BLANK_MESSAGE) && valid;
    valid = !isString('txtLast', "* Enter A Valid Name ") && valid;
    return valid;
}

function ValidateContactNo() {
    ClearError('txtPhone');
    //valid = !isEmpty('txtContactNo', BLANK_MESSAGE) && valid;
    valid = !isPhone('txtPhone', '* Not A Phone Number ') && valid;
    return valid;
}



function ValidateEmail() {
    ClearError('txtEmail');
    //valid = !isEmpty('txtEmail', BLANK_MESSAGE) && valid;
    valid = !isEmail('txtEmail', "* Enter A Vadil Email Id") && valid;
    return valid;
}


function ValidateNewPassword() {
    ClearError('txtPass');
   // valid = !isEmpty('txtPassword', BLANK_MESSAGE) && valid;
    //valid = !isValidpassword('txtPass', "* Enter A Valid Password") && valid;
    return valid;
}

function ValidateConfirmPassword() {
    ClearError('txtCPassword');
    //valid = !isEmpty('txtConfirmPassword', BLANK_MESSAGE) && valid;
    valid = !isMatchpassword('txtCPassword', 'txtPass', '* Password Not Matched') && valid;
    return valid;
}

function valid_email(email) {
    var pattern = new RegExp(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/);
    return pattern.test(email);
}

