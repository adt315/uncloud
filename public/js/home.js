$(document).ready(() => {
  const createPost = $("#create");
  // This file just does a GET request to figure out which user is logged in
  // and updates the HTML on the page
  $.get("/api/user_data").then(data => {
    $(".member-name").text(data.email);
  });
  
  // Event handlers
  createPost.on("click", createPostRoute);

  // Create post route function
  function createPostRoute() {
    window.location.replace("/create");
    console.log("clicked");
  };
});


