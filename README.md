# README

An app for tracking our puppy Oscar's dietary and financial needs!

- - -

## Ruby version

I set this up with `2.7.2p137`

## Database creation

```
rails db:create
```

I noticed that if `DATABASE_URL` is set prior to setting up the Database, then it will fail to create the development database because it treats the `DATABASE_URL` as a remote location, which it cannot use locally. Such an error may appear like...

```
PG::ConnectionBad: could not translate host name "jeffkamo" to address: nodename nor servname provided, or not known
```

If this happens, run `unset DATABASE_URL` and try creating the database again (ex. `rails db:create`).

## Database initialization

Run the Postgres desktop app on Mac OS.

## Deployment instructions

Automatically deploys to Heroku using Github actions. Just push or merge to `main` branch to trigger the deployment process.

## Hosting Info

Hosted on Heroku in my personal account in a project called `oscar-tracker`.

https://oscar-tracker.herokuapp.com/
