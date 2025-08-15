# Quiz Application

Quiz Application is a full-stack web application designed to provide users with an interactive platform for taking quizzes. The system is built with a RESTful API using Spring Boot, a MySQL database for data persistence, and a React-based frontend. This project incorporates a database schema for quizzes, questions, and user history, with the intention of being hosted on AWS Elastic Beanstalk and an integrated database on AWS RDS.

## Features

- ✅ Displays a list of available quizzes, broken down by subject.
- ✅ Normalized MySQL database schema for `quizzes`, `questions`, `answers`, `users`, and `quiz_history`.
- ✅ `schema.sql` for table creation and `data.sql` for reproducible test data.
- ✅ Backend API provides endpoints for retrieving quizzes and submitting answers.
- ✅ Grading logic is handled on the backend to keep correct answers secure.
- ✅ Custom database schema to track user attempts and scores in a `quiz_history` table.
- ✅ Supports multiple question types (e.g., multiple-choice) with a `type` column in the `questions` table.
- ✅ Backend built with Java and Spring Boot.
- ✅ Planned deployment to **AWS Elastic Beanstalk** with an integrated database on **AWS RDS**.
- ✅ Frontend built with React, TypeScript, HTML, and CSS.

## How to Use

1.  **Create a MySQL schema named `quiz_application`**.
2.  **Run `schema.sql`** to set up the database tables.
3.  **Run `data.sql`** to seed the database with test quiz data.
4.  **Configure the `application.properties`** file with your MySQL database credentials.
5.  **Run the Spring Boot application** via your IDE or `mvn spring-boot:run`.
6.  **Access backend endpoints locally** at `http://localhost:8080`.
7.  **Run the frontend application** to interact with the backend API.

## API & Frontend Documentation

* **API Endpoints:** Detailed below, the backend API serves as the communication layer between the frontend and the database.
* **Frontend Homepage:** A single-page application built with React to provide a seamless user experience.

## API Endpoints for Quizzes

| Endpoint | Method | Status | Description |
|---|---|---|---|
| `/api/quizzes` | GET | ✅ Done | Retrieves a list of all quizzes. |
| `/api/quizzes/{id}` | GET | ✅ Done | Retrieves a specific quiz by its ID. |
| `/api/quizzes/submit` | POST | ✅ Done | Submits a user's quiz attempt and returns the final score. |

## Tech Stack

- **Backend**: Spring Boot
- **Database**: MySQL
- **Frontend**: React (with TypeScript, HTML, and CSS)
- **Deployment**: AWS Elastic Beanstalk and AWS RDS
- **Tools**: Maven, Spring Data JPA, Lombok

## Coming Soon

- **AWS Deployment**: Deploying the application to AWS Elastic Beanstalk.
- **CI/CD Pipeline**: Setting up a continuous integration/continuous deployment pipeline.
- **Timer for Quizzes**: Adding a timer to each quiz attempt.
- **User Authentication**: Implementing full user login and registration functionality.
- **Quiz History Page**: A dedicated page for users to view their past quiz scores.
- **Multiple Question Types**: Expanding question types beyond multiple-choice.

## Author

**Jeff Sherwood**