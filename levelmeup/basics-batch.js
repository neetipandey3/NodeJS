/** 
 * LEEVEL ME UP SCOTTY!!
 * Basics: BATCH (Exercise 5 of 12)
*/
var level = require('level')
module.exports = function (databaseDir, changes, callback) {  
    // your code...  
    var leveldb = level(databaseDir)  
    var error
    delArrray = changes.del
    putObject = changes.put
    
    leveldb.on('error', function (err) {
        error = err
        })

    /** 
     * Queue put and del operations
     * At the end, try to execute the entire batch by calling the batch.write.
    */
   
    var operations =  delArrray.map(function (key){  
        return {
            type: 'del', key: key
        }
      }).concat(Object.keys(putObject).map(function(key) {
        return {
             type: 'put', key: key, value: putObject[key] 
        }
    }))

    leveldb.batch(operations, function(err) {  
        if (err) {
          error = err
        }
    })
   
    leveldb.close(function (err) {
    callback(error || err)
  })

}

 