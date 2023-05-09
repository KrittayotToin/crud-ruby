//url
const url = "https://reqres.in/api/users?page=2";

//JQUERY GET
$.ajax({
  url: url,
  method: "GET",
}).done(function (data) {
    console.log(data);
  for (let i = 0; i < data.data.length; i++) {
    let user = data.data[i];
    let html = `
      <tr>
        <td>${user.id}</td>
        <td>${user.email}</td>
        <td>${user.first_name}</td>
        <td>${user.last_name}</td>
        <td><img src="${user.avatar}" /></td>
      </tr>
    `;
    $("#user-list").append(html);
  }
}).fail(function (jqXHR, textStatus) {
  // error log
  console.log("Request failed: " + textStatus);
});
