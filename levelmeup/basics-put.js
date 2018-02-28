/** 
 * LEEVEL ME UP SCOTTY!!
 * Basics: PUT (Exercise 4 of 12)
*/

var level = require('level')

module.exports = function (databaseDir, obj, callback) {  
    // your code...  
    var leveldb = level(databaseDir)  
    var error
    for (var key in obj) {
        leveldb.put(key, obj[key])
    }
    leveldb.on('error', function (err) {
        error = err
      })
    leveldb.close(function (err) {
        callback(error || err)
      })
    }


