const got = require('got');

class GithubApi {
  constructor() {}

  fetchRepositoryData(repo, repositoryData) {
    const url = 'https://api.github.com/repos/' + repo;
    got(url).then((response) => {
      repositoryData(JSON.parse(response.body));
    });
  };
}

module.exports = GithubApi;

// const githubApi = new GithubApi;

// githubApi.fetchRepositoryData('sinatra/sinatra', (repositoryData) => {
//     repositoryData;
//   });



// const GithubApi = require('./githubApi');
// const api = new GithubApi();
// api.fetchRepositoryData('sinatra/sinatra', (repositoryData) => {
//   console.log(repositoryData);
// });
