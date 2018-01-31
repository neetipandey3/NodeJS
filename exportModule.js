var fs = require("fs")
var path = require('path');

module.exports = function (mypath, myextension, callback) { 

    var filelist = new Array()
    fs.readdir(mypath, function(err, files){
        if (err){
            return callback(err)
        }
        files.forEach(function (fileName){
        if (path.extname(fileName) == '.' + myextension){
            filelist.push(fileName)
        }
    })

    callback(null, filelist)

    })
    
}
