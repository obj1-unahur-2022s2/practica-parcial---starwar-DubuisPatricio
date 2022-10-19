import personas.*
class Planeta {
	const habitantes= #{}
	var museos=0
	var murallas=0
	
	method delegacionDiplomatica(){return habitantes.filter({h=>h.esDestacada()})}
	
	method valorInicialDefensa(){return habitantes.count({h=>h.potencia()>=30})}
	
	method esCulto(){return museos>=2 and self.habitantesTienenInteligenciaMayorA(10)}
	
	method habitantesTienenInteligenciaMayorA(nivelInt){return habitantes.all({h=>h.inteligencia()>=nivelInt})}
	
	method potenciaReal(){return habitantes.sum({h=>h.potencia()})}
	
	method agregarHabitante(habitante){habitantes.add(habitante)}
	
	method construirMurallas(cantAConstruir){murallas+=cantAConstruir}
	
	method fundarMuseo(){museos++}
	
	method potenciaAparente()=return self.habitanteConMasPotencia().potencia() * self.cantHabitantes()
	
	method habitanteConMasPotencia()= habitantes.max({h=>h.potencia()})
	
	method cantHabitantes()=habitantes.size()
	
	method necesitaReforsar()= self.potenciaAparente()>=(self.potenciaReal()*2)
	
	method recibirTributo(){habitantes.foreach({h=>h.darTributo(self)})}
	
	method HabitantesValiosos()=habitantes.filter({h=>h.valor()>=40})
	
	method apaciguarOtroPlaneta(unPlaneta){
		self.HabitantesValiosos().forech({h=>h.darTibuto(unPlaneta)})
	}
}
