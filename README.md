# MuscleMentor Backend API

Welcome to the Fitness Application Backend API! This API is designed to support the functionality of a fitness application, allowing users to create exercises, design and update routines, and schedule and modify workouts for specific days.

## Getting Started

### Prerequisites

Make sure you have the following installed:

- Ruby
- Ruby on Rails
- PostgreSQL

### Installation

1. Clone the repository: `git clone https://github.com/masonishee/fitness-capstone-api.git`
2. Navigate to the project directory: `cd fitness-capstone-api`
3. Install dependencies: `bundle install`
4. Set up the database: `rails db:create && rails db:migrate`

### Configuration

1. Configure the database connection in `config/database.yml`.
2. API settings can be adjusted in `config/application.rb`.

### Run the Server

Start the Rails server with `rails server`.

## Screenshot

![MuscleMentor Screenshot](![Alt text](<Screenshot 2023-11-12 at 3.09.48 PM.png>))

## API Endpoints

### Exercises

- **GET /exercises**: Retrieve a list of all exercises.
- **GET /exercises/:id**: Retrieve details of a specific exercise.
- **POST /exercises**: Create a new exercise.
- **PUT /exercises/:id**: Update details of a specific exercise.
- **DELETE /exercises/:id**: Delete a specific exercise.

### Routines

- **GET /routines**: Retrieve a list of all routines.
- **GET /routines/:id**: Retrieve details of a specific routine.
- **POST /routines**: Create a new routine.
- **PUT /routines/:id**: Update details of a specific routine.
- **DELETE /routines/:id**: Delete a specific routine.

### Workouts

- **GET /workouts**: Retrieve a list of all workouts.
- **GET /workouts/:id**: Retrieve details of a specific workout.
- **POST /workouts**: Create a new workout.
- **PUT /workouts/:id**: Update details of a specific workout.
- **DELETE /workouts/:id**: Delete a specific workout.
