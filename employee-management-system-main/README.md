# Employee Management System

A full-stack Employee Management System built with React + Vite, Spring Boot, Spring Data JPA, and MySQL. It supports employee create, read, update, and delete operations.

## Project structure

```text
employee-management-system-main/
├── backend/
│   ├── src/main/java/
│   ├── src/main/resources/application.properties
│   ├── pom.xml
│   └── mvnw / mvnw.cmd
├── frontend/
│   ├── src/
│   ├── package.json
│   └── vite.config.js
└── images/
```

## Requirements

- Java 17 or newer
- MySQL 8.x (MySQL Server must be running)
- Node.js 20.19+ or 22.12+
- npm

## 1. Start MySQL

Make sure the MySQL server is running. You do **not** need to manually create `employee_db` when using the default configuration: the JDBC URL contains `createDatabaseIfNotExist=true`.

The default database settings are:

```properties
spring.datasource.username=root
spring.datasource.password=
```

If your MySQL root account has a password, set it before starting the backend. On Windows CMD:

```cmd
set DB_USERNAME=root
set DB_PASSWORD=YOUR_MYSQL_PASSWORD
```

Or edit `backend/src/main/resources/application.properties`.

## 2. Start the backend

Open a terminal in the `backend` folder.

### Windows

```cmd
mvnw.cmd spring-boot:run
```

### macOS/Linux

```bash
./mvnw spring-boot:run
```

The API runs at:

```text
http://localhost:8080
```

Swagger UI is available at:

```text
http://localhost:8080/backend
```

## 3. Start the frontend

Open a **second terminal** in the `frontend` folder:

```bash
npm install
npm start
```

You can also use:

```bash
npm run dev
```

Vite normally opens:

```text
http://localhost:3000
```

## API endpoints

| Method | Endpoint | Purpose |
|---|---|---|
| GET | `/api/v1/employees/employees` | Get all employees |
| GET | `/api/v1/employees/{id}` | Get one employee |
| POST | `/api/v1/employees/add` | Add employee |
| PUT | `/api/v1/employees/update/{id}` | Update employee |
| DELETE | `/api/v1/employees/delete/{id}` | Delete employee |

## Troubleshooting

### `Communications link failure` / cannot connect to MySQL

Start MySQL and verify that it is listening on port 3306. If your MySQL password is not empty, configure `DB_PASSWORD` as described above.

### `Access denied for user 'root'`

Your MySQL credentials are incorrect. Set `DB_USERNAME` and `DB_PASSWORD` to the credentials you use in MySQL.

### Frontend shows a network error

Start the backend first and verify that `http://localhost:8080` is reachable. Then start the frontend.

### Port already in use

The backend uses port `8080`; the frontend uses port `3000`. Stop the process using the port or change the corresponding configuration.
