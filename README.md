# Student-Result-Management-Portal
A Student Result Management Portal is a digital platform that stores, manages, and displays students’ academic results, allowing administrators to update marks and students to view their grades easily and securely. 
We used HTML, Java Script, CSS and SQL.

## Description of the ER Diagram
- Admin: Stores login credentials for administrative access
- Student: Contains student details and links to branch and semester
- Branch: Represents academic departments (e.g., CSE, ECE)
- Semester: Represents academic levels (e.g., 1st Sem, 2nd Sem)
- Subject: Contains subject details
- sub_com: Connects subjects to branches and semesters
- Result: Stores marks associated with a student and subject

## Relational Model (Tables)
- admin(admin_id, username, password)
- branch(branch_id, branch)
- semester(sem_id, semester)
- student(reg_id, Name, Roll_No, Email, Gender, branch_id, sem_id, Reg_date, status)
- subjects(subj_id, subj_name, subj_code, status)
- sub_com(comb_id, branch_id, sem_id, subj_id, status)
- results(result_id, roll_no, branch_id, sem_id, subj_id, marks)

## Description of Tables
- admin: Stores admin credentials
- branch: Stores names of departments
- semester: Stores semester info
- student: Stores student details and their academic info
- subjects: Stores information about subjects
- sub_comb: Maps subjects to their respective branch and semester
- results: Stores marks of students for each subject

Here is the ER Diagram for reference.
<img width="1680" height="1439" alt="image" src="https://github.com/user-attachments/assets/a8f9e13a-87e9-4649-a58a-a7893797c322" />

<img width="1280" height="1168" alt="image" src="https://github.com/user-attachments/assets/fb0c28f7-c9a8-4306-97b7-58c22e7366b0" />




