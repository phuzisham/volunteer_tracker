# _Volunteer Tracker_

#### _A program that allows a user to add and track projects and volunteers. Last Modified: 09.24.2017_

#### By _David Hale_

## Description

_After volunteers and projects are added they can then be managed in a database._

## Specs

| Description        | Input           | Output  |
| ------------- |:-------------:| -----:|
| User can add a project to the database. | 'Teach JavaScript' | New project created with the title 'Teach Javascript'. |
| User can click on project to see it's details and edit it. | Click On Project Link | Project detail page. |
| User can add volunteers to project. | 'Kyle Smith' | 'Kyle Smith' is added to the project. |
| User can rename project. | 'Teach Ruby' | Current project title changed to 'Teach Ruby' |
| User can delete project. | Click on 'Delete Project' button. | Project is removed from the database. |
| User can click on volunteer link to see their detail page. | Click on volunteer link. | Volunteer detail page. |
| User can rename volunteer. | 'Kayla Smith' | Current volunteer's name changed to 'Kayla Smith' |
| User can delete volunteer. | Click on 'Delete Volunteer' button. | Volunteer is removed from the database. |
| Deployable with Heroku. | https://glacial-wave-41656.herokuapp.com | Opens page from Heroku. |


## Setup/Installation Requirements

1. _Download files [here](https://github.com/phuzisham/volunteer_tracker.git)._

2. _In terminal run 'bundle'._

3. _In terminal run 'postrgres'._

4. _In terminal run 'createdb volunteer_tracker'._

5. _In terminal run 'psql volunteer_tracker < my_database.sql'._

6. _In terminal run 'ruby app.rb'._

7. _Use page in browser._

_Or use Heroku link: https://glacial-wave-41656.herokuapp.com_

## Support and contact details

_If you have questions or run into any issues email me at: david.hale7@gmail.com_

_Instructions on how to set up a Heroku database can be found [here](https://github.com/CodingTea17/viper-volunteers)._

## Technologies Used

_Ruby, HTML, CSS, Bootstrap, Heroku, Sinatra, Postgres, SQL._

### License

*MIT License*

Copyright (c) 2017 **_David Hale_**
