(() => {
  var __commonJS = (cb, mod) => function __require() {
    return mod || (0, cb[Object.keys(cb)[0]])((mod = { exports: {} }).exports, mod), mod.exports;
  };

  // messageView.js
  var require_messageView = __commonJS({
    "messageView.js"(exports, module) {
      var MessageView2 = class {
        constructor() {
          this.buttonEl = document.querySelector("#show-message-button");
          this.buttonEl.addEventListener("click", () => {
            this.displayMessage();
          });
          this.hideButtonEl = document.querySelector("#hide-message-button");
          this.hideButtonEl.addEventListener("click", () => {
            this.hideMessage();
          });
          this.inputEl = document.querySelector("#message-input");
        }
        displayMessage() {
          const newDivEl = document.createElement("div");
          newDivEl.setAttribute("id", "message");
          newDivEl.textContent = this.inputEl.value;
          document.body.append(newDivEl);
        }
        hideMessage() {
          const removeDivEl = document.querySelector("#message");
          removeDivEl.remove();
        }
      };
      module.exports = MessageView2;
    }
  });

  // index.js
  var MessageView = require_messageView();
  var view = new MessageView();
})();
