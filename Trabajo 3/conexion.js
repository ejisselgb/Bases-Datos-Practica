const mongoose = require('mongoose');

mongoose.connect('', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});

module.exports = mongoose;
