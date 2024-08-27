**Prerequisites:**

- **Git:** Ensure you have Git installed on your system. You can download it from [https://git-scm.com/](https://git-scm.com/).
- **Python 3:** Verify you have Python 3 installed. Check by running `python3 --version` or `python --version` (if Python 3 is the default) in your terminal. If not, download it from [https://www.python.org/](https://www.python.org/).

**Steps:**

1. **Clone the Project:**

   ```bash
   git clone https://github.com/exewhyz/Face-Recognition-Attandance.git
   ```

   This downloads the project files from the GitHub repository to your local machine.

2. **Navigate to the Project Directory:**

   ```bash
   cd Face-Recognition-Attendance-System
   ```

   This changes your terminal's working directory to the project folder.

3. **Create a Virtual Environment (Linux/macOS):**

   ```bash
   python3 -m venv .venv
   ```

   This creates a virtual environment named `.venv` in the current directory. It isolates the project's dependencies from your system's global Python environment.

**Windows Users:**

Create a `.venv` folder and run the following command from your project directory (replace Python path if necessary):

```bash
py -3 -m venv .venv
```

4. **Activate the Virtual Environment (Linux/macOS):**

   ```bash
   source .venv/bin/activate
   ```

   This activates the virtual environment. You'll see `(.venv)` prefixed to your terminal prompt, indicating it's active.

**Windows Users:**

```bash
.venv\Scripts\activate
```

5. **Install Dependencies:**

   ```bash
   pip install -r requirements.txt
   ```

   This command installs the required libraries listed in the `requirements.txt` file. Use `pip3 install -r requirements.txt` if you have multiple Python versions.

6. **Move `.env.example` to `.env` (if exists):**

   ```bash
   mv .env.example .env
   ```

   This copies the template environment variable file if it exists.

7. **Set Up MySql Database:**

   - Download and install MySQL Workbench ([https://dev.mysql.com/downloads/workbench/](https://dev.mysql.com/downloads/workbench/)) or use a cloud MySQL instance.
   - Connect to your MySQL server
   - Create a new database named `face_recognition` by executing the provided SQL queries within MySQL to create the tables for the database schema. You might need to modify the queries based on your specific MySQL setup.

   ```bash
   CREATE DATABASE face_recognition;
   USE face_recognition;
   CREATE TABLE `regteach` (
   `fname` varchar(255) NOT NULL,
   `lname` varchar(45) NOT NULL,
   `cnum` varchar(255) NOT NULL,
   `email` varchar(255) NOT NULL,
   `s_que` varchar(255) NOT NULL,
   `s_ans` varchar(255) NOT NULL,
   `pwd` varchar(255) NOT NULL,
   PRIMARY KEY (`email`),
   UNIQUE KEY `email_UNIQUE` (`email`)
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
   
   CREATE TABLE `stdattendance` (
   `std_id` int NOT NULL,
   `std_roll_no` varchar(45) NOT NULL,
   `std_name` varchar(45) NOT NULL,
   `std_time` varchar(45) NOT NULL,
   `std_date` varchar(45) NOT NULL,
   `std_attendance` varchar(45) NOT NULL,
   PRIMARY KEY (std_id, std_time, std_date)
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
   
   CREATE TABLE `student` (
   `Student_ID` int NOT NULL,
   `Name` varchar(45) NOT NULL,
   `Department` varchar(45) NOT NULL,
   `course` varchar(45) NOT NULL,
   `Year` varchar(45) NOT NULL,
   `Semester` varchar(45) NOT NULL,
   `Division` varchar(45) NOT NULL,
   `Gender` varchar(45) NOT NULL,
   `DOB` varchar(45) NOT NULL,
   `Mobile_No` varchar(45) NOT NULL,
   `Address` varchar(45) NOT NULL,
   `Roll_No` varchar(45) NOT NULL,
   `Email` varchar(45) NOT NULL,
   `Teacher_Name` varchar(45) NOT NULL,
   `PhotoSample` varchar(45) NOT NULL,
   PRIMARY KEY (`Student_ID`),
   UNIQUE KEY `std_id_UNIQUE` (`Student_ID`),
   UNIQUE KEY `roll_UNIQUE` (`Roll_No`)
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
   ````

8. **Set Environment Variables (in `.env` file):**

Open the `.env` file (if it was copied) and fill in the necessary environment variables according to your database and project configuration. Refer to the project documentation or the repository's README file for guidance.

9. **Start Your Project:**

```bash
python login.py
````
This command launches the project's main script, typically a login interface
