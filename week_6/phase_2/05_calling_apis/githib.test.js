const Github = require('./github');
const GithubApi = require('./githubApi');

describe('Github', () => {
  it('gets the repo data fetched by the Api class - mocked', () => {
    const mockedApi = {
      fetchRepositoryData: (repoName, callback) => {
        callback({
          name: 'sinatra/sinatra',
          description: 'Some fake description'
        });
      }
    }
    const github = new Github(mockedApi);
    github.fetch('sinatra/sinatra');
    
    expect(github.getRepoData()).toEqual({
      name: 'sinatra/sinatra',
      description: 'Some fake description'
    })
  });
  
  it('gets the repo data fetched by the Api class', (done) => {
    const api = new GithubApi();
    const github = new Github(api);
    github.fetch('sinatra/sinatra');
    
    setTimeout(() => {
      const repoData = github.getRepoData();
      expect(repoData.full_name).toEqual('sinatra/sinatra');
      done(); 
    }, 1500);
  });

});

