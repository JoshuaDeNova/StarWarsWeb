/* global localstorage */
$('#LOGGIN .msjError').text("");

function iniciaSesion() {
    $('#LOGGIN .msjError').text("");
    var email = $('#EMAIL').val();
    var pass = $('#PASS').val();
    if (email !== "" && pass !== "") {
        $.ajax({
            url: 'Controller',
            data: {
                ACTION: 'USUARIO.LOGGIN',
                EMAIL: email,
                PASSWORD: pass
            },
            dataType: 'json',
            success: function (responseText) {
                if (responseText.length === 0) {
                    $('#LOGGIN').css('display', 'block');
                    $('#LOGGIN').append('<div class="msjError">Ese usuario no esta registrado</div>');
                } else {
                    localStorage.setItem("USUARIO", responseText[0].nombre);
                    $('#NAMEUSUARIO').text("");
                    $('body').css('background-image', 'url("images/fondoDos.jpg")');
                    $('#MENU').css('display', 'block');
                    $('#HOME').css('display', 'block');
                    $('#LOGGIN').css('display', 'none');
                    $('#REGISTRO').css('display', 'none');
                    $('#NAMEUSUARIO').append("Bienvenido '" + responseText[0].nombre + "'");
                }
            }
        });
    }else{
        $('#LOGGIN').append('<div class="msjError" >Debe introducir datos correctos</div>');
    }
}

function registrarse() {
    $('#REGISTRO .msjError').text("");
    var nombre = $('#NOMBREREG').val();
    var email = $('#EMAILREG').val();
    var pass = $('#PASSREG').val();
    if (email !== "" && pass !== "" && pass !== "") {
        $.ajax({
            url: 'Controller',
            data: {
                ACTION: 'USUARIO.ADD',
                NAME: nombre,
                CORREO: email,
                CONTRASENA: pass
            },
            dataType: 'text',
            success: function (responseText) {
                if (responseText === "este usuario ya esta registrado") {
                    $('#REGISTRO').append('<div class="msjError" >Ese usuario esta registrado</div>');
                } else {
                    $('#HOME').css('display', 'none');
                    $('#LOGGIN').css('display', 'block');
                    $('#REGISTRO').css('display', 'none');
                }
            }
        });
    } else {
        $('#REGISTRO').append('<div class="msjError" >Debe introducir datos</div>');
    }
}

function pulsaRegistrar() {
    $('#LOGGIN').css('display', 'none');
    $('#REGISTRO').css('display', 'block');
}

function cancelaRegistro(){
    $('#LOGGIN').css('display', 'block');
    $('#REGISTRO').css('display', 'none');
}

function compurebaSesion(){
    if (localStorage.getItem("USUARIO") !== null) {
        var nombre = localStorage.getItem("USUARIO");
        $('body').css('background-image', 'url("images/fondoDos.jpg")');
        $('#MENU').css('display', 'block');
        $('#HOME').css('display', 'block');
        $('#LOGGIN').css('display', 'none');
        $('#NAMEUSUARIO').append("Bienvenido '" + nombre + "'");
    } else {
        $('#LOGGIN').css('display', 'block');
    }
}

function cerrarSesion() {
    localStorage.clear();
    $('#MENU').css('display', 'none');
    $('#HOME').css('display', 'none');
    $('#LOGGIN').css('display', 'block');
    $('#REGISTRO').css('display', 'none');
    $('#INFO').css('display','none');
    $('#EVENTOS').css('display','none');
    $('#PERSONAJEBYEVENTO').css('display','none');
    $('#BUTTON').css('display', 'none');
    $('#INFORMACIONPJ').css('display','none');
    $('body').css('background-image', 'url("images/fondo.jpg")');
}

function pulsaHome(){
    $('#MENU').css('display', 'block');
    $('#HOME').css('display', 'block');
    $('#REGISTRO').css('display', 'none');
    $('#INFO').css('display','none');
    $('#EVENTOS').css('display','none');
    $('#PERSONAJEBYEVENTO').css('display','none');
    $('#BUTTON').css('display', 'none');
    $('#INFORMACIONPJ').css('display','none');
}

