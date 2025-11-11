# School-Mini-ERP-

This project is a Student Management and Reservation System designed to help educational institutions efficiently manage students, teachers, classes, and academic activities.
It provides a structured database schema for handling student enrollment, class scheduling, attendance, exams, assignments, and performance ranking.

-- Key Features

Student Registration & Profile Management:
Stores detailed information for each student, including personal data, educational base (grade), and field of study.

Student Reservation & Ranking System:
Supports automatic reservation and ranking of students based on their previous academic grade or score.

Attendance Tracking:
Records student attendance on a daily basis per class and educational level.

Class and Teacher Management:
Links classes, teachers, and educational bases for clear structure and easy scheduling.

Assignments and Submissions:
Teachers can create assignments; students submit their work with grading and feedback tracking.

Exam Management:
Handles exam creation, question banks, choices, and student exam submissions — including answer validation.

Warning and Behavior Tracking:
Allows recording of student warnings with optional parent involvement.

User Roles and Authentication:
Supports multiple user roles (e.g., admin, teacher, student) with secure user management and password hashing.

-- Database Overview

The schema includes the following main entities:

Table	Description
std	Student master table storing personal and educational details.
edu_base	Defines educational levels or grades.
std_field	Student field or major (e.g., Science, Arts).
classes	Class definitions with teacher and student links.
std_classes	Tracks student enrollment per class.
teachers	Teacher profiles and qualifications.
teacher_classes	Links teachers to their assigned classes and educational bases.
lessons	Course or subject definitions.
assignments / assignments_submission	Handles homework, submission tracking, and grading.
exams / exam_submission	Manages exams, questions, answers, and results.
question_bank / question_choices	Stores exam questions and possible choices.
std_attendance	Tracks attendance by date and class.
std_warns	Records disciplinary warnings.
users / role	Authentication and authorization structure.

-- Technologies

Database: Oracle Database

Framework: Oracle APEX (compatible with APEX 24.1 and above)

Language: SQL / PL/SQL

Purpose: Educational institutions, academies, and schools that need a centralized system for student management and academic performance tracking.
