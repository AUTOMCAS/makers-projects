const got = require('got');

class GithubApi {
  constructor() {}

  fetchRepositoryData(repo, repositoryData) {
    const url = 'https://api.github.com/repos/' + repo;
    got(url).then((response) => {
      const repositoryData = JSON.parse(response.body);
      console.log(repositoryData);
      
    });
  };
}

// const githubApi = new GithubApi;

githubApi.fetchRepositoryData('sinatra/sinatra', (repositoryData) => {
    repositoryData;
  });

// module.exports = GithubApi;

// const GithubApi = require('./githubApi');
// const api = new GithubApi();
// api.fetchRepositoryData('sinatra/sinatra', (repositoryData) => {
//   console.log(repositoryData);
// });
