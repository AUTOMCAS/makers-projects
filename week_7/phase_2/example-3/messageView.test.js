/**
 * @jest-environment jsdom
 */

const fs = require('fs');
const MessageView = require('./messageView');

describe('MessageView', () => {
  it('clicks the "Click me!" button', () => {
    document.body.innerHTML = fs.readFileSync('./index.html');

    const view = new MessageView();

    const buttonEl = document.querySelector('#show-message-button');
    
    const inputEl = document.querySelector('#message-input')
    inputEl.value = "Test message"
    buttonEl.click();

    expect(document.querySelector('#message').textContent).toBe("Test message");
  });

  it('clicks the "Hide message" button', () => {
    document.body.innerHTML = fs.readFileSync('./index.html');

    const view = new MessageView();
    const buttonShowEl = document.querySelector('#show-message-button');
    buttonShowEl.click();

    const buttonHideEl = document.querySelector('#hide-message-button');
    buttonHideEl.click();

    expect(document.querySelector('#message')).toBeNull();
  });
});