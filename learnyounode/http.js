var http = require("http")

var req = http.get(process.argv[2], function(response) {
    response.setEncoding('utf8');
    response.on('data', function (data) {
      console.log(data);
    });
  });

