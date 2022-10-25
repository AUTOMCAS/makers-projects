class View {
  constructor() {
    this.mainContainerEl = document.querySelector('#main-container');

    console.log(this.mainContainerEl);
  }

  addParagraph () {
    const addParagraphEl = document.createElement("p");

    addParagraphEl.textContent = 'This paragraph has been dynamically added'

    const body = document.querySelector('body')
    body.append(addParagraphEl)

  }

  clearParagraphs () {
    const paragraphEls = document.querySelectorAll('p')

    console.log(paragraphEls)

    paragraphEls.forEach((paragraph) => { 
      paragraph.remove()
    })
  }
}

module.exports = View;