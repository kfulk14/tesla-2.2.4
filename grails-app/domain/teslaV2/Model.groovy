package teslaV2



class Model {
	
	String name
	BigDecimal startingCost
	
	 static hasMany = [modelSpecs: ModelSpec]

    static constraints = {
    }
}
