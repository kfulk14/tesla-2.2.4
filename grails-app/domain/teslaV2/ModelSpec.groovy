package teslaV2

class ModelSpec {
	
	String name
	String powerOutlet
	String trimLevel
	String distanceRange
	String additionalCost
	
	
	static hasMany = [models:Model]

    static constraints = {
    }
}
