# README: PostgreSQL Setup and Basic Usage

This README provides a step-by-step guide to install PostgreSQL, set up a basic database environment, create a table, and insert values into it. Follow these instructions to get started with PostgreSQL on your system.

## Prerequisites

Ensure you have administrative access to your system to install packages and services.

## 1. Installing PostgreSQL

### Unix/Linux/Mac:

- **Debian-based (e.g., Ubuntu):**
  ```bash
  sudo apt-get update
  sudo apt-get install postgresql postgresql-contrib
  ```


- **Mac (using Homebrew):**
  ```bash
  brew install postgresql
  ```

### Windows:

- Download the Windows installer from the official PostgreSQL website and follow the installation instructions.

## 2. Starting the PostgreSQL Service

- **Unix/Linux:**
  ```bash
  sudo systemctl start postgresql
  sudo systemctl enable postgresql
  ```

- **Mac:**
  PostgreSQL installed via Homebrew can be started using:
  ```bash
  brew services start postgresql
  ```

- **Windows:**
  The PostgreSQL service should start automatically after installation.

## 3. Using PostgreSQL

### Accessing the PostgreSQL Command Line

- **Unix/Linux/Mac:**
  ```bash
  sudo -u postgres psql
  ```

- **Windows:**
  Use the SQL Shell (psql) from the Start menu.

### Creating a New Database

```sql
CREATE DATABASE exampledb;
```

### Connecting to the Database

```sql
\c exampledb
```

### Creating a Table

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    username TEXT,
    pass TEXT
);
```

### Inserting Values into the Table

```sql
INSERT INTO users (first_name, last_name, username, pass) VALUES ('sahil', 'khan', 'sahilkhan', '123');
```

### Verifying the Insertion

```sql
SELECT * FROM users;
```

### Exiting psql

```sql
\q
```