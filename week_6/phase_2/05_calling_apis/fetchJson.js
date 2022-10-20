const got = require('got');

const fetchJson = (url, callbackFunction) => {
  got(url).then((callbackFunction) => {
    const responseObject = JSON.parse(callbackFunction.body);
    console.log(responseObject);
  })
}

module.exports = fetchJson