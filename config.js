var path = require('path');

var VIMDIR = path.join(process.env.HOME, '.vim');

module.exports = {
    paths: {
        VIMDIR: VIMDIR,
        AUTOLOADDIR: path.join(VIMDIR, 'autoload'),
        BUNDLEDIR: path.join(VIMDIR, 'bundle'),
        COLORSDIR: path.join(VIMDIR, 'colors')
    },
    permissionsToSet: '0755'
};

