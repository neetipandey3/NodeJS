//import { Buffer } from 'buffer';

var fs = require('fs') 
str = fs.readFileSync(process.argv[2]).toString()
var lines = str.split("\n")


console.log(lines.length - 1)


