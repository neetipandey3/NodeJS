var net = require('net') 
var port = process.argv[2]



var server = net.createServer(function (socket){
    var date = new Date()
    month = date.getMonth() < 10 ? "0" + (date.getMonth() + 1) : (date.getMonth() + 1)
    day = date.getDate() < 10 ? ("0" + date.getDate()) : date.getDate()
    hour = date.getHours() < 10 ? ("0" + date.getHours()) : date.getHours()
    minute = date.getMinutes() < 10 ? ("0" + date.getMinutes()) : date.getMinutes()
    data = date.getFullYear() + "-" + month + "-"   + day + " "  + hour + ":" + minute + "\n"
    //data =  date.toISOString().substring(0, 10)+ " "  + date.getHours() + ":" + date.getMinutes + "\n"
    socket.end(data) //instead of using socket.write(data), socket.end()
})

server.listen(port)  
