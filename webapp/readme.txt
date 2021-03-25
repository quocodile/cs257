How to run:

1. Install PostgresSQL on your computer(via Homebrew or directly from website)

2. After cloning the repo, cd into "webapp" and run the following command: "psql -U yourUsername yourDatabaseName < data.sql". "yourDatabaseName" is the name of the Postgres database that you have created and want to dump the data into.

3. Create a file called "config.py" within "webapp" as follows:
    
    username = "yourUsername"
    password = "yourPassword"
    database = "yourDatabaseName"
    
4. Run the following command: python3 app.py localhost 5000

5. Go to http://localhost:5000 to see the website!

_______________________________________________________________________________

AUTHORS: Kevin Chen, James Marlin, Quoc Nguyen

DATA: A dataset consisting of animes that contains the anime's rating, name, # of episodes, etc

Copyright info: CC0: Public Domain
Link for DATA: https://www.kaggle.com/CooperUnion/anime-recommendations-database?select=anime.csv

STATUS:

Functional Features...
- Search anime by title or genre.
- Write a review for an anime.
- Add/remove anime from watchlist
- Signup/Login
- Browse various anime by genre on home page.
- Help page


Nonfunctional Features...
- We had wanted to recommend 
  users animes based off of their
  watchlist but deemed that bottom 
  priority on our list of things to do

