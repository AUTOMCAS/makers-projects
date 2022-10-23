const GithubApi = require('./githubApi');

class Github {
  constructor(api) {
    this.api = api;
    this.apiObject;
  }

  fetch(repo) {
    this.api.fetchRepositoryData(repo, (repositoryData) => {
      this.apiObject = repositoryData});
  }

  getRepoData() {
    debugger;
    return this.apiObject
  }
}

module.exports = Github;

// const api = new GithubApi();
// const github = new Github(api)
// github.fetch('sinatra/sinatra');
// github.getRepoData()
