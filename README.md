# Weekly holiday calendar

## Current status
- The app generates the days for a given week
- Default day is always current week's Monday
- **ISSUE:** SQL data is retrieved, but not properly handled
	- Array data is shown earlier than the requested data from backend
	- Requested data does not change on week change, unlike everything else
- Expect no styling until all the intended functionality is finished

Due to the issue, I am unable to continue my work on the exercise and will continue only after a better understanding of what should be done to resolve the issue mentioned above.

## Current stack
- **PHP** backend
- **MySQL** database
- **ReactJS** frontend

## Prerequisites
A PHP and MySQL environment. I recommend using **[XAMPP](https://www.apachefriends.org/download.html)**.

**NB!:** If XAMPP doesn't work from the get go, change main Apache port settings in **httpd.conf** at ```Listen 80``` and ```ServerName localhost:80``` from **80** to something else, like **8080**.
**Tip:** To check if a port is open - open **cmd** and run ```netstat -ano | find ":***"``` where ```***``` is the port number

## Setting up
- Place the whole thing where you host your PHP apps from
- Create a database and execute the query from **db-dump.sql**
- Make appropriarte access localization changes in **/php/Config/database.php**
- Make appropriarte request localization changes in **/js/Components/day.component.js**

Simply run **index.html**

**NB!:** ReactJS dependencies are fetched from a CDN. If you wish to go offline, uncomment the offline scripts and comment out the online scripts in **index.html**. There is no difference between the contents of the scripts.

## TODO-s
- **CORE:** Fix data retrieval in the day component
- **CORE:** Add Redux
- Style some with Sass, make it responsive
- Add some extra features
	- A reset/default button for the selected week
	- Separate table in the DB for holiday types
