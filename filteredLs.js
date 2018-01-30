var fs = require("fs")
var path = require('path');

var myPath = process.argv[2]
var myExtension = process.argv[3]

fs.readdir(myPath, function(err, files){
    if (err){
        throw err
    }
    files.forEach(function (fileName){
    if (path.extname(fileName) == '.' + myExtension){
        console.log(fileName)
    }
})

})

