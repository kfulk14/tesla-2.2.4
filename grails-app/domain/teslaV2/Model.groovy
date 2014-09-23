package teslaV2



class Model {
	
	String name
	BigDecimal startingCost
	
	static belongsTo = [modelSpecs:ModelSpec]

    static constraints = {
    }
}
