/** 
 * LEVEL ME UP SCOTTY!!
 * Keywise (Exercise 9 of 12)
 * 
 * 
 *   Write a module that exports a single function that accepts three  
  arguments: an instance of an existing LevelUP database, a file path that  
  points to a JSON file and a callback function.
 * 
*/



var level = require('level')
var databaseDir = process.argv[2]
var jsonPath =  process.argv[3]
module.exports = function (databaseDir, jsonPath, callback) {  
    // .. your code here  
    var leveldb = level(databaseDir, { valueEncoding: 'json' })
    var mappings = require(jsonPath)
    var key
    var error
    var operations =  mappings.map(function (data){  
        if (data.type == 'user'){
            key =  data.name 
        } else if (data.type == 'repo') {
            key = data.user + '!' + data.name
        }
        return {
            type: 'put', key: key, value: data
        }
 
    })

    leveldb.batch(operations, function(err) {  
        if (err) {
          error = err
        }
    })
   
    leveldb.close(function (err) {
    callback(error || err)
  })
}

