# csc340-assignment3

## Installation
- Get the project
    - clone
        ```
      git clone https://github.com/tutruong8/csc340-assignment3.git
        ```
    - OR download zip.
- Open the project in VS Code.
- This project is built to run with jdk 21.
- [Dependencies](https://github.com/csc340-uncg/f25-jpa-crud-api/blob/7142cb123bc1444fb579ece9735062f1c3a15a86/pom.xml#L33) to JPA and Postgres in addition to the usual Spring Web. JPA handles the persistence, Postgresql is the database to be used.
- [`/src/main/resources/application.properties`](https://github.com/tutruong8/csc340-assignment3/blob/main/src/main/resources/application.properties) This file has the configuration for the PostgreSQL database to use for the API.
  - You MUST have the database up and running before running the project!
    - Login to your neon.tech account.
    - Locate your database project.
    - On the project dashboard, click on "Connect" and select Java.
    - Copy the connection string provided.
    - Paste as a value in in 'spring.datasource.url' and remove the part after "postgresql://" where the text is formated as            "username:password@".
    - Take the username part that you removed and put it as value in 'spring.datasource.username' and the password part (without        the @) in 'spring.datasource.password'.
    - Build and run the main class. You should see a new table created in the Neon database.

## Demo
- CRUD API:
  - https://uncg-my.sharepoint.com/:v:/g/personal/tttruong2_uncg_edu/EXMsqrz7_aFNu0LqrUSYjgIBx-xDn1B1kxxiKXD_4SL9DQ?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=0ZxK4P
- MVC APP:
  - https://uncg-my.sharepoint.com/:v:/g/personal/tttruong2_uncg_edu/EatcBjLI9VtFm2T4EDd9eQABJHyR91P09sonDZ12KCB5tw?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=isa3Wn