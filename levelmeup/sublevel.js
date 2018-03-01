/** 
 * LEVEL ME UP SCOTTY!!
 * Sublevel (Exercise 11 of 12)
 * 
 * 
 *       Sometimes you just need a clean namespace to fill up with junk without  
  worrying about conflicting with existing keys in use.   
  You can use sublevel for creating clean namespaces!  
   
  You can extend a db handle to use sublevel by doing:  
   
     var db = sub(level(...))  
   
  Then you can call db.sublevel() to make a new sublevel.  
   
  Just call db.sublevel() with a name and you get an object that acts just  
  like a normal db handle except it lives in a namespace:  
   
     var wizards = db.sublevel('wizards')  
   
  To level up on this adventure, you will get a database path as the first  
  module argument. Create 2 sublevels, one called "robots" and the other  
  called "dinosaurs".  
   
  For each sublevel, create a key called "slogan". Set the slogan for the  
  dinosaurs sublevel to 'rawr' and set the slogan for the robots sublevel to  
  'beep boop'.
 * 
*/
var level = require('level')
var sub = require('level-sublevel')
var dbPath = process.argv[2]

module.exports = function (dbPath, callback) {
    var db = sub(level(dbPath))

    var robots = db.sublevel('robots')
    var dinosaurs = db.sublevel('dinosaurs')

    robots.put('slogan', 'beep boop')
    dinosaurs.put('slogan', 'rawr')

    db.close(function (err) {
        callback(err)
    })

}
