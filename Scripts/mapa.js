/**
 * @author Diego Augusto
 */

var mapa;
var geocodificador;
var marcador;



function inicializa () {
	var coordenadas = pegaCoordenadas();
	geocodificador = new google.maps.Geocoder();
	
	var opcoes = {
		zoom: 20,
		center: coordenadas,
		mapTypeId:google.maps.MapTypeId.ROADMAP
	};
	
    mapa = new google.maps.Map(document.getElementById('container-mapa'), opcoes);
	
} // Fim da função inicializa

function codificaEndereco(){
	
	var endereco = pegaEndereco();
	geocodificador = new google.maps.Geocoder();
	
	if (geocodificador) {
  		geocodificador.geocode( {'address':endereco}, function (resultados, status) {
  		
  		if(status == google.maps.GeocoderStatus.OK){
  			
  			var coordenadas = resultados[0].geometry.location;
  			
  		   
  		   atualizaCoordenadas(coordenadas);
  		   
  		   alert(resultados[0].types.country)
  		   
  		   //document.getElementById('pais').value = resultados[0].types.country;
  			
  			
  			var opcoes = {
				zoom: 25,
				center: resultados[0].geometry.location,
				mapTypeId:google.maps.MapTypeId.ROADMAP
			};
	
    		mapa = new google.maps.Map(document.getElementById('container-mapa'), opcoes);
  			marcador = new google.maps.Marker({ 
  				map:mapa,
  			    draggable: true,
  				position: resultados[0].geometry.location
  			});
  		}
  		else
  		{
  			alert("O geocodificador não completou a requisição devidao o seguinte motivo  " + status);
  		}
  	});
  }
}


function codificaNomeCidade () {

    var endereco = endereco = document.getElementById("nome").value;
    geocodificador = new google.maps.Geocoder();
	
	if (geocodificador) {
  	geocodificador.geocode( {'address':endereco}, function (resultados, status) {

  		if(status == google.maps.GeocoderStatus.OK){

  		   var coordenadas = resultados[0].geometry.location;
  		   
  		 
  		   atualizaCoordenadas(coordenadas);
  		  

			var opcoes = {
				zoom: 25,
				center: resultados[0].geometry.location,
				mapTypeId:google.maps.MapTypeId.ROADMAP
			};
	
    		mapa = new google.maps.Map(document.getElementById('container-mapa'), opcoes);
  			marcador = new google.maps.Marker({ 
  				map:mapa,
  			    draggable: true,
  				position: resultados[0].geometry.location
  			});
  		}
  		else
  		{
  			alert("O geocodificador não completou a requisição devidao o seguinte motivo  " + status);
  		}
  	});
  }
  	
}


function pegaEndereco (argument) {
  	return document.getElementById('endereco').value;
}

function codificaCoordenadas(){
	
	var coordenadas = pegaCoordenadas();
	
	if (geocodificador) {
		geocodificador.geocode({'latLng':coordenadas}, function(resultados, status){
			
			if (status == google.maps.GeocoderStatus.OK) {
				
				if(resultados[1]){
					
					mapa.setZoom(25);
					marcador = new google.maps.Marker({
						position: coordenadas,
						map: mapa
					});
				}
				
			}else{
				alert('O geocodificador falhou devido: ' + status);
			}
		
		});
	}
}


function pegaCoordenadas(){
	var latitude = parseFloat(document.getElementById('latitude').value);
	var longitude = parseFloat(document.getElementById('longitude').value);
	return new google.maps.LatLng(latitude, longitude);
}


function atualizaCoordenadas (coordenadas) {
	latlng = coordenadas.toString().split(",", 2);
    document.getElementById('latitude').value = latlng[0].substring(1);
    document.getElementById('longitude').value = latlng[1].substring(0, latlng[1].length - 1);
}


function atualizaCampos (resultados) {
	
	alert('passei por aqui');
	
	document.getElementById("pais").value = resultados[0].types[3];
  
}




