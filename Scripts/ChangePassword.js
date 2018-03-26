function PasswordValidate() {
    var b = true;
    //if (!ValidateOldPassword()) {
    //    b = false;
    //}
    if (!ValidateNewPassword()) {
        b = false;
    }
    if (!ValidateConfirmPassword()) {
        b = false;
    }
    return b;
}


$(document).ready(function () {
    $('#txtOldPassword').change(function (event) {
        if(!ValidateOldPassword()){
            $('#lblOldPasswordValidator').show();
            event.preventDefault();
        }
        else {     
            $('#lblOldPasswordValidator').hide();
        }
    });
});

function ValidateNewPassword() {
    ClearError('txtNewPassword');
    valid = !isEmpty('txtNewPassword', BLANK_MESSAGE) && valid;
    valid = !isValidpassword('txtNewPassword', FORMAT_MESSAGE) && valid;
    return valid;
}

function ValidateConfirmPassword() {
    ClearError('txtConfirmPassword');
    valid = !isEmpty('txtConfirmPassword', BLANK_MESSAGE) && valid;
    valid = !isMatchpassword('txtConfirmPassword','txtNewPassword', '* password Not Matched') && valid;
    return valid;
}

//function ValidateOldPassword() {
//    var data = $('#txtOldPassword').val();
//    var b = false;
//    var len = data.length;
//    if (len < 1) {
//        $('#lblOldPasswordValidator').text(BLANK_MESSAGE);
//        b = false;
//    }
//    else {
//        if (len < 8) {
//            $('#lblOldPasswordValidator').text(LENGTH_CHAR);
//            b = false;
//        }
//        else {
//            b = true;;
//        }
//    }
//    return b;
//}

