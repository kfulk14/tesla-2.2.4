package teslaV2



class Model {
	
	String name
	BigDecimal startingCost
	String imageUrl
	
	 static hasMany = [modelSpecs: ModelSpec]

    static constraints = {
		imageUrl nullable: true
    }
}
