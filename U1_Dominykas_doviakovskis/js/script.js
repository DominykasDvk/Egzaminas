function validateForm() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var message = document.getElementById("pranesimas");
  
    if (!name || !email) {
      alert("Būtina užpildyti visus laukus!");
    } else {
      message.classList.remove("visually-hidden");
      setTimeout(function () 
      {
        message.classList.add("visually-hidden");
      }, 6000);
    }
  }