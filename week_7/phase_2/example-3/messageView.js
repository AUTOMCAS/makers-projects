class MessageView {
  constructor() {
    this.buttonEl = document.querySelector('#show-message-button');

    this.buttonEl.addEventListener('click', () => {
       this.displayMessage();
    });
  }

  displayMessage() {
    const newDivEl = document.createElement('div')

    newDivEl.setAttribute('id', 'message')
    newDivEl.textContent = 'This message displayed by JavaScript'

    document.body.append(newDivEl)

    console.log('Thanks for clicking me!');
  }
}

module.exports = MessageView;