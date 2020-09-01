function listarEventos() {
    $.ajax({
        url: 'Controller',
        data: {
            ACTION: 'EVENTO.FIND_ALL'
        },
        dataType: 'json',
        success: function (responseText) {
            $('#HOME').css('display', 'none');
            $('#EVENTOS').css('display', 'block');
            $('#INFO').css('display', 'block');
            $('#NOMBREEVENTO').css('display', 'block');
            $('#DESCRIPCIONEVENTO').css('display', 'block');

            $('#BUTTON').html('');
            $('#BUTTON').css('display', 'block');
            var guardaId = responseText[0].id_evento;
            var funcion = "mostrarPersonajesPorEpoca(" + guardaId + ")";
            $('#BUTTON').append('<button id="BOTONVERPJ" class="text-center" onclick="' + funcion + '">Personajes</button>');

            $('#BUTTONDESCRIPCION').html('');
            $('#BUTTONDESCRIPCION').css('display', 'block');
            $('#BUTTONDESCRIPCION').append('<button id="BOTONVERPJ" class="text-center" onclick="descripcion()">Descripcion</button>');

            $('#NOMBREEVENTO').html(responseText[0].nombre);
            $('#DESCRIPCIONEVENTO').html(responseText[0].descripcion);

            var oldCells = document.getElementsByClassName("carousel-cell");
            $('.main-carousel').flickity('remove', oldCells);

            $('.main-carousel').flickity({
                autoplay: true,
                freeScroll: true,
                imagesLoaded: true,
                wrapAround: true,
                groupCells: true,
                cellAlign: 'left',
                contain: true
            });

            for (var contador in responseText) {
                var guardaId = parseInt(responseText[contador].id_evento);
                var funcion = "infoEventos(" + guardaId + ")";
                var celdaElemento = $('<div class="carousel-cell"><img onclick="' + funcion + '" style="min-width: 420px" src="images/' + responseText[contador].imgEvento + '.jpg"/></div>');
                $('.main-carousel').flickity('append', celdaElemento);
            }
        }
    });
}

function infoEventos(guardaId) {
    $('#NAMECHARACTER').text('');
    $('#DESCRIPCIONPJS').text('');
    $('#IMGCHARACTER').text('');
    $('#BUTTON').text('');
    $('#INFORMACIONPJ').css('display', 'none');
    $('#BUTTON').css('display', 'block');
    $('#BUTTONDESCRIPCION').css('display', 'block');
    $('#NOMBREEVENTO').css('display', 'block');
    $('#DESCRIPCIONEVENTO').css('display', 'block');
    $('#PERSONAJEBYEVENTO').css('display', 'none');
    $('#BOTONBACK').css('display', 'none');
    console.log(guardaId);
    $.ajax({
        url: 'Controller',
        data: {
            ACTION: 'EVENTO.FIND_ALL',
            EVENTO: guardaId
        },
        dataType: 'json',
        success: function (responseText) {
            var guardaId = responseText[0].id_evento;
            var funcion = "mostrarPersonajesPorEpoca(" + guardaId + ")";
            $('#NOMBREEVENTO').text("");
            $('#DESCRIPCIONEVENTO').text("");
            var name = responseText[0].nombre;
            var descripcion = responseText[0].descripcion;
            $('#INFO').css('display', 'block');
            $('#NOMBREEVENTO').append(name);
            $('#DESCRIPCIONEVENTO').append(descripcion);
            $('#BUTTON').append('<button id="BOTONVERPJ" class="text-center" onclick="' + funcion + '">Personajes</button>');
        }
    });
}

function mostrarPersonajesPorEpoca(id) {
    $('#PERSONAJEBYEVENTO').css('display', 'none');
    $('#INFORMACIONPJ').css('display', 'none');
    $('#BOTONBACK').css('display', 'none');
    $('#PERSONAJEBYEVENTO .row').text("");
    $('#BUTTON').css('display', 'block');
    $('#BUTTONDESCRIPCION').css('display', 'block');
    $('#NOMBREEVENTO').css('display', 'none');
    $('#DESCRIPCIONEVENTO').css('display', 'none');
    $('#PERSONAJEBYEVENTO').css('display', 'block');
    $.ajax({
        url: 'Controller',
        data: {
            ACTION: 'PJSEVENTO.FINDBYEVENTO',
            EPOCA: id
        },
        dataType: 'json',
        success: function (responseText) {
            for (var contador in responseText) {
                var guardaIdPersonaje = parseInt(responseText[contador].ID_Personaje);
                var funcion = "infoPersonaje(" + guardaIdPersonaje + ")";
                var resumen = responseText[contador].descripcion;
                resumen = resumen.substring(0, 50) + "...";
                $('#DESCRIPCIONEVENTO').css('display', 'none');
                $('#PERSONAJEBYEVENTO').css('display', 'block');
                var cad = "";
                cad += '<div class="col-lg-3 col-xs-8 col-md-4 align-items-stretch d-flex">';
                cad += '<div class="card mr-4">';
                cad += '<img class="card-img-top img-fluid" src="pjImage/' + responseText[contador].personajeImg + '.png">';
                cad += '<div class="card-body">';
                cad += '<h5 class="card-title">' + responseText[contador].nombre + '</h5>';
                cad += '<p class="card-text">' + resumen + '</p>';
                cad += '<button onclick="' + funcion + '">ver Ficha</button>';
                cad += '</div>';
                cad += '</div>';
                cad += '</div>';
                $('#PERSONAJEBYEVENTO .row').append(cad);
            }
        }
    });
}

function infoPersonaje(idPersonaje) {
    $('#NAMECHARACTER').text('');
    $('#IMGCHARACTER').text('');
    $('#DESCRIPCIONPJS').text('');
    $('#BOTONBACK').text('');
    $.ajax({
        url: 'Controller',
        data: {
            ACTION: 'PERSONAJE.FIND_ALL',
            INFOPERSONAJE: idPersonaje
        },
        dataType: 'json',
        success: function (responseText) {
            $('#PERSONAJEBYEVENTO').css('display', 'none');
            $('#INFORMACIONPJ').css('display', 'block');
            $('#NAMECHARACTER').append(responseText[0].nombre);
            $('#IMGCHARACTER').append('<img class="img-fluid" src="pjImage/' + responseText[0].personajeImg + '.png"/>');
            $('#DESCRIPCIONPJS').append(responseText[0].descripcion);
        }
    });
}

function descripcion() {
    $('#NAMECHARACTER').text('');
    $('#DESCRIPCIONPJS').text('');
    $('#IMGCHARACTER').text('');
    $('#INFORMACIONPJ').css('display', 'none');
    $('#BUTTON').css('display', 'block');
    $('#BUTTONDESCRIPCION').css('display', 'block');
    $('#NOMBREEVENTO').css('display', 'block');
    $('#DESCRIPCIONEVENTO').css('display', 'block');
    $('#PERSONAJEBYEVENTO').css('display', 'none');
    $('#BOTONBACK').css('display', 'none');
}

