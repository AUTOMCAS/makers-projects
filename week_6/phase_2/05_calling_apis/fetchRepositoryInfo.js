const got = require('got');

const fetchRepositoryInfo = (repo, receivedResponse) => {
  const url = ('https://api.github.com/repos/' + repo)
  got(url).then((receivedResponse) => {
    const responseObject = JSON.parse(receivedResponse.body)
    console.log(responseObject)
  })
}

module.exports = fetchRepositoryInfo


// const fetchRepositoryInfo = require('./fetchRepositoryInfo');
// fetchRepositoryInfo('sinatra/sinatra', (receivedResponse) => {
//   console.log(receivedResponse);
// });
