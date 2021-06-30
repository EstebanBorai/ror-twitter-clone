# Twitter Clone
> A Ruby on Rails joruney building a Twitter Clone

## Development

Theres two ways you can run this Ruby on Rails project

### Locally

You will need:

- [Ruby](https://guides.rubyonrails.org/getting_started.html#installing-ruby)
- SQLite3 (This may come already included in your system if you are using a Unix based system)
- [Node.js](https://nodejs.org/)
- Yarn (You can install `yarn` by executing `npm i -g yarn`)

With _Ruby_ installed, install Rails by doing:

```bash
gem install rails
```

Make sure rails is installed by checking on the binary version

```bash
rails --version
```

Install Node.js dependencies using _yarn_:

```bash
yarn install
```

Step into the project directory and execute Rails server:

```bash
bin/rails server
```

### Docker

> You will need Docker installed in your system

```bash
docker-compose up --build
```