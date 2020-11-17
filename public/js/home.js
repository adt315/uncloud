$(document).ready(() => {
  // Click event handlers
  $(document).on("click", "button.create", window.location.replace("/create"));
  // This file just does a GET request to figure out which user is logged in
  // and updates the HTML on the page
  $.get("/api/user_data").then(data => {
    $(".member-name").text(data.username);
  });
});
