var http = require('http') 
var fs = require('fs') 
var port = process.argv[2]
var map = require('through2-map')


var server = http.createServer(function (req, res){   
    /*
    Nodeschool code: if (req.method !== 'POST') {
        return res.end('send me a POST\n')
    } 
    */
    req.pipe(map(function (chunk) {  
      return chunk.toString().toUpperCase()
    })).pipe(res)  

})

server.listen(port)  
