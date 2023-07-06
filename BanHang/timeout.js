function logout_User() {
    PageMethods.MyLogOut(goback, errorgoback);
}

function goback(res) {
    if (res == "") {
        alert(res);
    }
    window.location = "bh7.aspx";
}

function errorgoback(res) {
    alert(res);
}             
