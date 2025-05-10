function validateForm() {
    const username = document.getElementById("username").value.trim();
    const email = document.getElementById("email").value.trim();
    const age = document.getElementById("age").value.trim();

    let errors = [];

    // Перевірка поля "Username"
    if (username === "") {
        errors.push("Username is required.");
    }

    // Перевірка поля "Email"
    if (!email.includes("@")) {
        errors.push("Email must contain '@'.");
    }

    // Перевірка поля "Age"
    if (isNaN(age) || age <= 0) {
        errors.push("Age must be a number greater than 0.");
    }

    // Виведення повідомлень про помилки
    if (errors.length > 0) {
        alert(errors.join("\n"));
    } else {
        alert("Form submitted!");
    }
}
