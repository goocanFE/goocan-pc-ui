var fs = require('fs');
var path = require('path');
var version = process.env.VERSION || require('../../package.json').version;
var content = { '2.15.14': '2.15' };
if (!content[version]) content[version] = '2.16';
fs.writeFileSync(path.resolve(__dirname, '../../examples/versions.json'), JSON.stringify(content));
