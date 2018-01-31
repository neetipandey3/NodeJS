
var mymodule = require('./exportModule.js')

var myPath = process.argv[2]
var myExtension = process.argv[3]




mymodule(myPath, myExtension, function(err, filelist) {
    if (err){
        throw err
    }
    else {
        filelist.forEach(function (filename){
            console.log(filename)
        })
            
    }
    
})
