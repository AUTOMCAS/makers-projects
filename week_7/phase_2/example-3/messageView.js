class MessageView {
  constructor() {
    this.buttonEl = document.querySelector('#show-message-button');

    this.buttonEl.addEventListener('click', () => {
       this.displayMessage();
    });

    this.hideButtonEl = document.querySelector('#hide-message-button');

    this.hideButtonEl.addEventListener('click', () => {this.hideMessage()})

    this.inputEl = document.querySelector('#message-input');

  }

  displayMessage () {
    const newDivEl = document.createElement('div')

    newDivEl.setAttribute('id', 'message')
    newDivEl.textContent = this.inputEl.value

    document.body.append(newDivEl)
  }

  hideMessage () {
    const removeDivEl = document.querySelector('#message');
   
    removeDivEl.remove()
    
  }


}

module.exports = MessageView;