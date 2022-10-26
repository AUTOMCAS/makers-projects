/**
 * @jest-environment jsdom
 */

 const fs = require('fs');
 const GithubModel = require('./githubModel');
 const GithubView = require('./githubView');
 const GithubClient = require('./githubClient');
 
 describe('GithubView', () => {
   describe('display()', () => {
     it('displays the name of the repo on click', () => {
       document.body.innerHTML = fs.readFileSync('./index.html');
       const githubModel = new GithubModel();
       const githubClient = new GithubClient();
       const githubView = new GithubView(githubModel, githubClient);
 
       const buttonEl = document.querySelector('#submit-button');
       const inputEl = document.querySelector('#repo-name-input');
       inputEl.value = 'sinatra/sinatra';
       buttonEl.click();
 
       const repoNameEl = document.querySelector('#repo-name');
       expect(repoNameEl.textContent).toEqual('sinatra');
     });
   });
 });
 
