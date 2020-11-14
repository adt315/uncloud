$(document).ready(() => {
// Getting references to our form and input
const headingInput = $("input#heading-input");
const bodyInput = $("input#body-input");
const imgInput = $("input#imgurl");
const createArticleForm = $("form.createarticle");

createArticleForm.on("submit", event => {
    event.preventDefault();
    let articleData = {
        article: headingInput.val(),
        body: bodyInput.val(),
        imgurl: imgInput.val()
    }; createArticle();
});

function createArticle(email, password) {
    $.post("/create", {
      email: email,
      password: password
    })
      .then(() => {
        window.location.replace("/home");
      })
      .catch(handleLoginErr);
  }
});