/** 
 * LEVEL ME UP SCOTTY!!
 * Multilevel (Exercise 12 of 12)
 * 
 * 
 *         Write a module that uses multilevel to fetch a value from a server running  
  on your computer.  
   
  Create a TCP connection with the core net module to port 4545 on  
  localhost. Pipe this connection through a multilevel RPC stream and back  
  to the connection. 
  You will then have a db object that you can interact with like a LevelUP  
  object.  
  Fetch the value from the data store with the key multilevelmeup and return  
  it to the provided callback.  
 * 
*/

var multilevel = require('multilevel')  
var net = require('net')  
  
module.exports = function (callback) {  
  var db = multilevel.client()  
  var connection = net.connect(4545)
  var value  
  connection.pipe(db.createRpcStream()).pipe(connection)  
  
  // your code ...  
  db.get('multilevelmeup', function(err, data) {
        if (err){
            callback(err)
        }
        connection.end(function () {
            callback(null, data) 
    }) 
  })
  
}  