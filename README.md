# MyDairy
My Diary is an online journal where users can pen down their thoughts and feelings.


## Features
* HTML
* CSS

### Live Demo
[myDiary/UI link]( )

---------------------------------------------------------------------

### Built With

- Ruby
- Rails
- JWT
- Bcrypt


## API ENDPOINTS

| Ressource URL | Methods  | Description  |
| ------- | --- | --- |
| /api/v1/entries| POST | posting an entry |
| /api/v1/entries| GET | Getting all entries|
| /api/v1/entries/:id| GET | Getting an entry by ID |
| /api/v1/entries/:id | DELETE | deleting a specific entry |
| /api/v1/entries/:id | PUT| Get the user to modify an entry  |


### Deployment
```
Heroku
```
### Heroku link Example
[myDiary heroku link]()


## Getting Started

### Prerequisites

To get this project up and running locally, you must already have ruby and necessary gems installed on your computer

To get this project set up on your local machine, follow these simple steps:

- Open terminal
- Clone the repository ``` https://github.com/DeliceLydia/my_diary.git```
- Cd in the project ``` my_dairy ```
- Run ``` bundle install ```
- Run ``` rails db:create ```
- Run ``` rails db:migrate ```
- Install webpacker by running ``` bundle exec rails webpacker:install ```
- Seed the database by running ``` rails db:seed ```
- Start your server ``` rails server ```
- Run the app ``` http://localhost:3000/ ```

## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/DeliceLydia/online-class-reservation-apis/issues).

## Author

👤 **Delice Lydia**
  - GitHub: [Delice Lydia](https://github.com/DeliceLydia)
  - Twitter: [Delice](https://twitter.com/IngabireLydia)
  - LinkedIn: [Delice Lydia](https://www.linkedin.com/in/delice-lydia/)

## Show your support

Give a ⭐️ if you like this project!


# License
​
This project is [MIT](https://github.com/DeliceLydia/online-class-reservation-apis/blob/master/LICENSE) licensed.
