class Persona {
	var property edad
	
	method potencia()=20
	method inteligencia(){
		if (edad.between(20,40)){
			return 12
		}
		else{
			return 8
		}
	}
	method esDestacada()= edad==25 or edad==35
	method darTributo(unPlaneta){}
	method valor()= self.potencia() + self.inteligencia()
	
}
class Atleta inherits Persona{
	var masaMuscular=4
	var cantTecnicas=2
	
	override method potencia(){
		return super()+(masaMuscular*cantTecnicas)
	}
	override method esDestacada(){
		return super() or cantTecnicas>5
	}
	method entrenar(dias){
		masaMuscular+= dias.div(5)
	}
	method aprenderTecnica(){cantTecnicas+=1}
	
	override method darTributo(unPlaneta){unPlaneta.construirMurallas(2)}
}
class Docente inherits Persona{
	var cursos=0
	override method inteligencia(){
		return super()+(cursos*2)
	}
	override method esDestacada(){
		return cursos>3
	}
	method darCurso(){cursos++}
	
	override method darTributo(unPlaneta){unPlaneta.fundarMuseo()}
	override method valor()=super()+5
	
}
class Soldado inherits Persona{
	const armas=[]
	
	override method potencia()= super()+ self.PotenciaOtorganArmas()
	
	method PotenciaOtorganArmas()= armas.sum({a=>a.potenciaQueOtorga(self)})
	override method darTributo(unPlaneta){unPlaneta.construirMurallas(5)}
}
class Pistolete{
	var largo
	
	method potenciaQueOtorga(soldado){
		if(soldado.edad()>30){
			return largo*3
		}
		else{
			return largo*2
		}
	}}
class Espadon{
	var peso
	
	method potenciaQueOtorga(soldado){
		if(soldado.edad()<40){
			return peso.div(2)
		}
		else {
			return 6
		}
	}
}