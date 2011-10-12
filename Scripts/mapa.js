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
		zoom: 5,
		center: coordenadas,
		mapTypeId:google.maps.mapTypeId.ROADMAP
	};
	
    mapa = new google.maps.Map(document.getElementById('container-mapa'), opcoes);
	
} // Fim da função inicializa

function codificaEndereco(){
	
	
	alert('passei por aqui');
	var endereco = document.getElementById("endereco").value;
	
	if (geocodificador) {
  	geocodificador.geocode( {'address':endereco}, function (resultados, status) {
  		
  		if(status == google.maps.GeocoderStatus.OK){
  			
  			atualizaCampos(resultados);

  			mapa.setCenter(resultados[0].geometry.location);
  			mapa.setZoom(25);
  			marcador = new google.maps.Marker({ 
  				map:mapa,
  			    draggable: true,
  				position: resultados[0].geometry.location
  			});
  		}
  		else
  		{
  			alert("O geocodificador não completou a requisição devidao o seguinte motivo" + status);
  		}
  	});
  }
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
	var latitude = document.getElementById('latitude').value;
	var longitude = document.getElementById('longitude').value;
	return new google.maps.LatLng(latitude, longitude);
}



function atualizaCampos (resultados) {
	
	document.getElementById("pais").value = resultados[0].types[3];
  
}




