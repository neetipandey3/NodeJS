/** 
 * LEEVEL ME UP SCOTTY!!
 * 3 of 12
 * Basics: GET
*/
var level = require('level')
databaseDir = process.argv[2]
module.exports = function (databaseDir, callback) {  
    var result = []  
    // your code... 
    var leveldb = level(databaseDir)
    for ( var i=0; i<=100; i++){

        leveldb.get('key'+i, function (error, value){
            if(error){
                return
                //return console.log("Key not found", error)
            } else {
                result.push(value)  
            }          
        })
    }
    // more code...  
    leveldb.close()
    callback(null, result)  
  } 