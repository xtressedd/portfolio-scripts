# portfolio-scripts# Bash Calculator 🖩

A simple yet powerful calculator script written in Bash that allows you to perform basic arithmetic operations directly from the command line. It supports **addition (+)**, **subtraction (-)**, **multiplication (*)**, and **division (/)** for up to 9 numbers.

---

## 📋 Features

- Perform calculations with up to 9 numbers.
- Supports:
  - **Addition**: `+`
  - **Subtraction**: `-`
  - **Multiplication**: `*`
  - **Division**: `/`
- Input validation to handle non-numeric values gracefully.
- Lightweight and runs on any system with Bash.

---

## 🚀 How to Use

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/yourusername/bash-calculator.git
cd bash-calculator

### 2️⃣ Give Execution Permission
bash
chmod 744 calculator.sh


### 3️⃣ Run the Script
Pass the operation as the first argument (+, -, *, /) followed by up to 9 numbers.

Examples:


-Addition:

./calculator.sh + 10 20 30
Output:
Result: 60 


Subtraction:

./calculator.sh - 50 20 10
Output:
Result: 20


Multiplication:

./calculator.sh '*' 5 5 2
Output:
Result: 50


Division:

./calculator.sh / 100 2 5
Output:
Result: 10


🛠️ Requirements
Bash (pre-installed on most Linux and macOS systems)
No additional dependencies required.


📂 Project Structure
bash-calculator/
├── calculator.sh   # Main script
├── README.md       # Documentation


🧠 What I Learned
Handling positional parameters in Bash.
Validating user input using regular expressions.
Using arithmetic expansion for calculations in Bash.
Writing clean and reusable Bash scripts.



🤝 Contributing
Contributions are welcome! If you have ideas to improve this project, feel free to:

Fork the repository.
Create a new branch (git checkout -b feature/new-feature).
Commit your changes (git commit -m "Add new feature").
Push to the branch (git push origin feature/new-feature).
Open a Pull Request.



📜 License
This project is licensed under the MIT License.

