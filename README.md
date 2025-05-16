# Project Title: Clinic booking System
The Clinic Booking System is a relational database designed to efficiently manage patients, doctors, appointments, and prescriptions within a medical clinic. It ensures streamlined scheduling, prescription tracking, and doctor-patient interactions.

## Table of Contents
- [About the Project](#about-the-project)
- [Database Structure](#database-structure)
- [Setup Instructions](#setup-instructions)

## About the Project
The **Clinic Booking System** is a relational database designed to manage:
- Patient records
- Doctor information
- Appointment scheduling
- Prescription tracking

Built entirely using **MySQL**, it ensures efficient medical data handling.
## Database Structure
This system consists of four tables:
1. **Patients** - Stores patient details.
2. **Doctors** - Maintains doctor records.
3. **Appointments** - Links patients and doctors.
4. **Prescriptions** - Stores medication details.

### Relationships:
- One patient can book multiple appointments.
- One doctor can have multiple appointments.
- Each patient can receive multiple prescriptions.

- ## Setup Instructions
### **Prerequisites**
- Install **MySQL Server** ([Download](https://dev.mysql.com/downloads/))
- Install **MySQL Workbench** (Optional)

## Run Locally

Clone the project

```bash
  git clone https://github.com/patmbugus/DBweek8final-project.git
```

Go to the project directory

```bash
  cd DBweek8final-project
```

Restore database

```bash
  mysql -u root -p < answers.sql
```





## Entity Relationship Diagram (ERD)

<img width="655" alt="erd" src="https://github.com/user-attachments/assets/86424993-e16a-45f0-92f7-517cd6c589ce" />

# Next Steps
Now that your Clinic Booking System is set up: ✅ You can modify the database structure. ✅ You can add new features like medical history or billing. ✅ You can connect it to a frontend (e.g., PHP, Python).




