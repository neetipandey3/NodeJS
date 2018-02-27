var level = require('level')

module.exports = function (databaseDir, key, callback) {  
    // your code...  
    var leveldb = level(databaseDir)
    leveldb.get(key, function (error, value){
        if(error){
            return console.log("Key not found", error)
        }
        leveldb.close()
        callback(error, value)  

    })
}
    
    
  

