# Rails_backend_api

> Its a simple Rails API app built for a thecnical test. Teh API return the users in JSON:API format. 

## Built With

- Ruby v3.0.1
- Ruby on Rails v6.1.4
- Rspec for testing
- PostgreSQL

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/downloads/)
- [Rails](http://railsinstaller.org/en)
- [Postgres](https://www.postgresql.org/download/)

### Setup

Clone the repository

```
git clone https://github.com/ricardomonte/rails_backend_api.git
```

Install gems with:

```
bundle install
```

Setup database with:

```
Open the file database.yml inside of config folder and replace username and password

    username: "Your_username"
    password: "Your_password"
    

Then run in terminal:

    rails db:create
    rails db:migrate
    rails db:seed

```

Finally:

```
Create a .env file in the root folder and add

    PORT=4000

```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:4000/` in your browser.

### Run tests

```
    rspec --format documentation
```

## Authors

👤 **Ricardo Montenegro**

- Github: [@ricardomonte](https://github.com/ricardomonte)
- Twitter: [@ramnkco](https://twitter.com/ramnkco)
- LinkedIn: [Ricardo Montenegro](https://www.linkedin.com/in/ricantomontenegro/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!
Feel free to check the issues page.

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT licensed](LICENSE).