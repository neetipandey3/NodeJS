var http = require("http")
var bl = require("bl")

var req = http.get(process.argv[2], function(response) {
    response.pipe(bl(function (err, data) {
        if (err){
            console.error(err)
        }
        content = data.toString()
        console.log(content.length)
        console.log(content)
    }))


  });

