# README

This is a blog site for a test task.

# Installation

To get started with this project, you'll need to have on your machine 
* Docker: https://docs.docker.com/get-docker/ 
* Docker Compose: https://docs.docker.com/compose/install/ 

Clone this repository to your local machine:
```
git clone https://github.com/Monorall/Blog
```
Then, navigate into the project directory:
```
cd Blog
```
Open a terminal in the project folder and start containerizing with the command:
```
sudo docker-compose build
```
run docker with command:
```
sudo docker-compose up
```
Once containerization is complete, go to: http://localhost:3000/. There will be an error on the page about the lack of migration: ![image](https://github.com/Monorall/Blog/assets/115776857/8f860991-e0d1-4016-858c-4ccf366e0cea)

If you want to populate the database in a terminal window run the command:
```
sudo docker-compose run app rake db:seed
```
this command will populate the database with ten users and twenty posts and add an admin.

To go to the admin section, go to: http://localhost:3000/admin/login
* login: admin@gmail.com
* password: password

# After all the steps, the application is ready to go!
