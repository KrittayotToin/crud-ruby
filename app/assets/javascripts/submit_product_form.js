$(document).ready(function() {
    $("#new-product-form").submit(function(e) {
      e.preventDefault(); // prevent the form from submitting normally
  
      // serialize the form data into a JavaScript object
      var formData = $(this).serializeArray().reduce(function(obj, item) {
        obj[item.name] = item.value;
        return obj;
      }, {});
  
      // submit the form data via Ajax
      $.ajax({
        url: "/products/new",
        type: "POST",
        data: formData,
        success: function(response) {
          console.log(response);
        },
        error: function(response) {
          // handle error response
        }
      });
    });
  });
  