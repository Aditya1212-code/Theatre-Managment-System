// Function to handle the mobile menu toggle
function myMenuFunction() {
    var i = document.getElementById("navMenu");

    if (i.className === "nav-menu") {
        i.className += " responsive";
    } else {
        i.className = "nav-menu";
    }
}

// Get elements for login and register buttons, and form containers
var loginBtn = document.getElementById("loginBtn");
var registerBtn = document.getElementById("registerBtn");
var loginForm = document.getElementById("login");
var registerForm = document.getElementById("register");

// Function to switch to the login form
function login() {
    loginForm.style.left = "4px";
    registerForm.style.right = "-520px";
    loginBtn.className += " white-btn";
    registerBtn.className = "btn";
    loginForm.style.opacity = 1;
    registerForm.style.opacity = 0;
}

// Function to switch to the registration form
function register() {
    loginForm.style.left = "-510px";
    registerForm.style.right = "5px";
    loginBtn.className = "btn";
    registerBtn.className += " white-btn";
    loginForm.style.opacity = 0;
    registerForm.style.opacity = 1;
}
