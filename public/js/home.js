$(document).ready(() => {
  const createPost = $("#create-btn");
  // This file just does a GET request to figure out which user is logged in
  // and updates the HTML on the page
  $.get("/api/user_data").then(data => {
    $(".member-name").text(data.username);
  });
  
  $.get("/api/create", function(data) {
    title.append(newArticle.post_name);
    username.append(newArticle.username_author);
    post.append(newArticle.post_body);
  });

  // Event handlers
  createPost.on("click", createPostRoute);

  // Create post route function
  function createPostRoute() {
    window.location.replace("/create");
    console.log("clicked");
  };
});


