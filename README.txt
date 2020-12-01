There are five zsh scripts in this directory:

   00-common.zsh
      This is a shared script (it is loaded by the other four scripts),
      it just creates a function for connecting to the mysql server.

   01-create.zsh
      Create a table named "cities".

   02-populate.zsh
      Populate the "cities" table.

   03-all-cities.zsh
      Run a query against the database.

   04-texas.zsh
      Run another query against the database.

Create a CI job to create and populate the database, and run the two
queries.

You will need a GitLab CI services:

   - https://docs.gitlab.com/ee/ci/services/

that is, a separate docker image which runs in parallel to your job
providing some service; in this case, running a MySQL server.

Use the image:

   - mysql:5.7

Do not use "mysql:latest".
