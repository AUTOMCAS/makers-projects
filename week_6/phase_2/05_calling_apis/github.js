// const api = require('./githubApi')

class Github {
  constructor(api) {
    this.api = api;
    this.apiObject;
  }

  fetch(repo) {
    this.api.fetchRepositoryData(repo, (repositoryData) => {
      this.apiObject = repositoryData});
    debugger;
  }

  getRepoData() {
    debugger;
    return this.apiObject
  }
}

module.exports = Github;


const mockedApi = {
   fetchRepositoryData: (repoName, callback) => {
    callback({
      name: 'sinatra/sinatra',
      description: 'Some fake description'
    });
  }
}

// const github = new Github(mockedApi)

// github.fetch('sinatra/sinatra');

// github.getRepoData()
