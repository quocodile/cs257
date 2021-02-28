CREATE TABLE Users (
    user_id text,
    username text,
    hashed_password text
);

CREATE TABLE Watchlist (
    user_id text,
    anime_id text
);

CREATE TABLE Animes (
    anime_id text,
    anime_name text,
    num_episodes text,
    genre text,
    mal_rating text
);

CREATE TABLE Reviews (
    review_id text,
    anime_id text,
    review_text text
);

CREATE TABLE Our_ratings (
    rating_id text,
    anime_id text,
    rating_score text
);

CREATE TABLE User_reviews_link (
    user_id text,
    review_id text
);

CREATE TABLE User_ratings_link (
    user_id text,
    rating_id text
);
