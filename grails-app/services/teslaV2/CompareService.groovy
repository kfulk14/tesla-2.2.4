package teslaV2

class CompareService {

    def serviceMethod() {

    }
	
	Comparison create(User user, ModelSpec spec){
		Comparison c  = new Comparison(buyer:user, spec:spec)
		c.save()
		return c
	}
	
	
	
	
	
}
