$(document).ready(() => {
$("#create").on("click", function(event) {
  event.preventDefault();

  let newArticle = {
    createdAt: new Date(),
    post_name: $("#title").val().trim(),
    post_body: $("#write-post").val().trim(),
  };

  console.log(newArticle);
  $.post("/api/create", newArticle)
  .then(function() {
    title.append(newArticle.post_name);
    username.append(newArticle.username_author);
    post.append(newArticle.post_body);
  }); changePage();
});

  function changePage() {
    window.location.replace("/home");
  };
});