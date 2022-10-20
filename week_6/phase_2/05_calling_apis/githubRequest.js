const got = require('got');

const url = 'https://api.github.com/repos/sinatra/sinatra';

got(url)
  .then((response) => {
    const objectResponse = JSON.parse(response.body);
    console.log(objectResponse);
  });

