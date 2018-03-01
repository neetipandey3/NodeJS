/** 
 * LEVEL ME UP SCOTTY!!
 * Basics: BATCH (Exercise 5 of 12)
*/

var level = require('level')
var through2 = require('through2')
module.exports = function (databaseDir) {  
    // your code...  
    var leveldb = level(databaseDir)  
    var error
    var resultStream = leveldb.createReadStream(); 
    leveldb.on('error', function (err) {
        error = err
        })
    
    return resultStream.pipe(through2.obj(function (data, encoding, callback) {  
        //console.log('%s=%j', data.key, data.value);
        
        //to queue a new chunk
        this.push(data.key + '=' + data.value) 
        callback()

    }, function(callback) {
        leveldb.close(callback)
    }))
 
}


  
