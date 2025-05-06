# Rails CRUD Application

This is a Ruby on Rails CRUD application with user authentication using Devise and MySQL as the database.

## Prerequisites

- Ruby 3.x
- Rails 7.x
- MySQL 8
- Node.js and Yarn (for asset compilation)
- Docker and Docker Compose (optional, for containerized setup)

## Installation

### Clone the repository

```bash
git clone <repository-url>
cd rails-crud
```

### Install dependencies

```bash
bundle install
```

## Database Setup

1. Start the MySQL container:

```bash
docker-compose up -d
```

2. Initialize the database:

```bash
rails db:create db:migrate
```

## Running the Application

### Start the Rails server:

```bash
rails server
# or
rails s
```

The application will be available at http://localhost:3000

## Running Tests

```bash
rails test
# or for system tests
rails test:system
```
