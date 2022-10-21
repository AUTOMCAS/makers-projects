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


//const mockedApi = {
//    fetchRepositoryData: (repoName, callback) => {
//     callback({
//       name: 'sinatra/sinatra',
//       description: 'Some fake description'
//     });
//   }
// }

const api = new GithubApi();
const github = new Github(api)
github.fetch('sinatra/sinatra');
github.getRepoData()
debugger;