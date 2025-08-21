# StudentDBApp

A simple **Java Servlet + JSP + MySQL** web application to manage student records.  
You can **add students** and **list all students** using this app.  

---

## 🚀 Features
- Add new students with `name` and `age`
- List all students in a table
- Validations for missing/invalid inputs
- Uses **JDBC + MySQL** for persistence
- Built using **Maven** (WAR packaging)
- Deployable on **Apache Tomcat**

---

## 🛠️ Tech Stack
- Java 17  
- JSP + Servlets  
- Apache Tomcat 9+  
- MySQL 8  
- Maven  

---

## 📂 Project Structure
studentdbapp/
├── src/main/java/com/example/
│ ├── AddStudentServlet.java
│ ├── ListStudentsServlet.java
│ ├── Student.java
│ └── StudentDAO.java
├── src/main/webapp/
│ ├── index.jsp
│ ├── addStudent.jsp
│ ├── listStudents.jsp
│ └── WEB-INF/web.xml
├── pom.xml
└── README.md


---

## ⚙️ Setup Instructions

### 1. Clone the repository

git clone https://github.com/yourusername/studentdbapp.git
cd studentdbapp

2. Configure Database
CREATE DATABASE tests;
USE tests;

CREATE TABLE Students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  age INT NOT NULL
);


Update DB credentials in StudentDAO.java if needed:

private static final String URL  = "jdbc:mysql://localhost:3306/tests";
private static final String USER = "root";
private static final String PASS = "your_password";

3. Build the project
mvn clean package

4. Deploy on Tomcat

Copy target/studentdbapp.war to TOMCAT_HOME/webapps/

Start Tomcat:

$CATALINA_HOME/bin/startup.sh   # Linux/macOS
$CATALINA_HOME/bin/startup.bat  # Windows

5. Access the App
http://localhost:8080/studentdbapp/

---

🔎 Endpoints

/ → Home page

/addStudent.jsp → Add student form

/students/add → POST request to add student

/students → List all students

---

📖 Example Usage

Go to Home → Click Add → Enter student details

Submit form → Student saved in DB

Go back to View → See list of students

---

✅ Notes

Uses PRG pattern (Post/Redirect/Get)

Works on Tomcat 9+ (Servlet 4.0 API)

Tested with MySQL 8.0.33

---

🧑‍💻 Author

Rohini M
