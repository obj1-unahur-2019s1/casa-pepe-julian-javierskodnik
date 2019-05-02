import cosas.* 

object casaDePepeYJulian {
	var cosas = [heladera, cama, tiraDeAsado, paqueteDeFideos, plancha]
	//var tieneComida = false


method comprar(cosa){
	cosas.add(cosa)
}

method cantidadDeCosasCompradas(){
	return cosas.size {}
}


method tieneComida(){
	return cosas.any{cadaCosa => cadaCosa.esComida()}
	
}

method vieneDeEquiparse(){
	const ultimaCosa = cosas.last()
	return ultimaCosa.esElectrodomestico() or ultimaCosa.precio() > 5000
	
}

method esDerrochona(){
	return cosas.sum {cadaCosa => cadaCosa.precio()} >= 9000
	
}

method compraMasCara(){
	return cosas.max {cadaCosa => cadaCosa.precio()}
		
}
	
method electrodomesticosComprados(){
	return cosas.filter {cadaCosa => cadaCosa.esElectrodomestico()}
	
}	

method malaEpoca(){
	return cosas.all {cadaCosa => cadaCosa.esComida()}
	
	
}

method queFaltaComprar(lista){
	return lista.asSet().difference(cosas.asSet())
	
}

method faltaComida(){
	return cosas.count { cadaCosa => cadaCosa.esComida() } < 2
}
	
}
	











