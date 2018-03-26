var error = false;


function isString(id, message) {
    try {
        var regRex = /^[a-zA-Z\s]*$/;
        ValidateRegExp(id, regRex, message);
        return error;
    }
    catch (e) {

    }
}

function isNumeric(id, message) {
    try {
        error = isNaN(document.getElementById(id).value)
        addError(error, id, message);
        return error;
    }
    catch (e) { return false; }
}

function isEmail(id, message) {
    var regRex = /^(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$/;
    ValidateRegExp(id, regRex, message);
    return error;
}

function isPhone(id, message) {
    try {
        var regRex = /^\d{10}$/;
        ValidateRegExp(id, regRex, message);
        return error;
    }
    catch (e) {

    }
}


function isMatchpassword(id1,id2,message) {
    try {
        if (document.getElementById(id1).value == '') {
            error = false
        } else {
            error = !(document.getElementById(id1).value == document.getElementById(id2).value);
            addError(error, id1, message);
        }

        return error;
    }
    catch (e) {
        return false;
    }
}
function ValidateRegExp(id, regRex, message) {
    try {
        if (document.getElementById(id).value == '') {
            error = false
        } else {
            var re = new RegExp(regRex);
            error = !document.getElementById(id).value.match(re);
            addError(error, id, message);
        }

        return error;
    }
    catch (e) { return false; }
}

function addError(error, id, message) {
    if (error) {
        var lblid = document.getElementById(id).nextElementSibling.id;
        document.getElementById(lblid).innerText = message;
        document.getElementById(lblid).style.visibility = true;
        document.getElementById(id).style.backgroundColor = "pink";
        valid = false;
    }
}

function ClearError(id) {
    var lblid = document.getElementById(id).nextElementSibling.id;
    document.getElementById(lblid).innerText = "";
    document.getElementById(lblid).style.visibility = false;
    document.getElementById(id).style.backgroundColor = "white";
    valid = true;
}
