import Kitura
import SwiftyJSON

// Create a new router
let router = Router()

router.all("/", middleware: BodyParser())

router.post("/") { request, response, next in
  guard let parsedBody = request.body?.asJSON else {
        next()
        return
    }
    
/** 
 * Your Code Goes Here                 
 */   
    next()
}

router.get("/info") {
    _, response, next in
    response.status(.OK).send(json: JSON([]))
}

// Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: 8080, with: router)

// Start the Kitura runloop (this call never returns)
Kitura.run()

