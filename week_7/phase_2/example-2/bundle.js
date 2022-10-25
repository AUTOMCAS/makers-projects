(() => {
  var __commonJS = (cb, mod) => function __require() {
    return mod || (0, cb[Object.keys(cb)[0]])((mod = { exports: {} }).exports, mod), mod.exports;
  };

  // view.js
  var require_view = __commonJS({
    "view.js"(exports, module) {
      var View2 = class {
        constructor() {
          this.mainContainerEl = document.querySelector("#main-container");
          console.log(this.mainContainerEl);
        }
        addParagraph() {
          const addParagraphEl = document.createElement("p");
          addParagraphEl.textContent = "This paragraph has been dynamically added";
          const body = document.querySelector("body");
          body.append(addParagraphEl);
        }
        clearParagraphs() {
          const paragraphEls = document.querySelectorAll("p");
          console.log(paragraphEls);
          paragraphEls.forEach((paragraph) => {
            paragraph.remove();
          });
        }
      };
      module.exports = View2;
    }
  });

  // index.js
  var View = require_view();
  var view = new View();
  view.addParagraph();
  view.clearParagraphs();
})();
