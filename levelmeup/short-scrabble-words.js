/** 
 * LEVEL ME UP SCOTTY!!
 * Short Scrabble Words (Exercise 10 of 12)
 * 
 * 
 *     Write a module that stores valid 2, 3 and 4 character Scrabble words and  
  is able to retrieve them according to basic prefix-queries.  
   
  Your module should export an init() function that accepts 3 arguments: a  
  LevelUP db object for an empty database, an array of 2, 3 and 4 character  
  Scrabble words and callback that you must call once you have finished  
  initialising the database.  
   
  Your module should also export a query() method that also accepts 3  
  arguments: a LevelUP db object (the same store that you initialised with  
  init()), a word string containing the query, and a callback that you must  
  call with two arguments. The first argument should be null, or an error  
  object if one occurred. The second argument should be an array of all the  
  words in the database which match the query.
 * 
*/

module.exports.init = function (leveldb, words, callback) {  
    // insert each word in the words array here  
    // then call `callback()` when you are done inserting words  
    var key
    var error
    var operations =  words.map(function (word){  
        //for query by .length
        key = word.length + '!' + word
        return {
            type: 'put', key: key, value: word
        }
    })

    leveldb.batch(operations, callback) 
   
} 

    
  module.exports.query = function (leveldb, word, callback) {  
    // `word` may have '*' chars to denote single-letter wildcards  
    // call callback(err, results) with an array of matching words  
    var words = []
    var error
    var key = word.length + '!' + word.replace(/\*/g, '');
    var resultream = leveldb.createReadStream({start: key, end: key + '\xff'})
    resultream.on('data', function (data) {
            words.push(data.value)
          })
    resultream.on('error', function(err){
            callback(err)
          })
    resultream.on('end', function () {
            callback(null, words)
          })

} 

