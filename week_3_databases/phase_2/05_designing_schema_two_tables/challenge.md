# Two Tables Design Recipe Template

_Copy this recipe template to design and create two related database tables from a specification._

## 1. Extract nouns from the user stories or specification

```
# EXAMPLE USER STORY:
# (analyse only the relevant part - here the final line).

As a blogger
So I can write interesting stuff
I want to write posts having a title.

As a blogger
So I can write interesting stuff
I want to write posts having a content.

As a blogger
So I can let people comment on interesting stuff
I want to allow comments on my posts.

As a blogger
So I can let people comment on interesting stuff
I want the comments to have a content.

As a blogger
So I can let people comment on interesting stuff
I want the author to include their name in comments.
```

```
Nouns:

post, title, content, comment, content, name
```

## 2. Infer the Table Name and Columns

Put the different nouns in this table. Replace the example with your own nouns.

| Record                | Properties          |
| --------------------- | ------------------  |
| post                   | title, content
| comment                | name, content

1. Name of the first table (always plural): `posts` 

    Column names: `title`, `content`

2. Name of the second table (always plural): `comment` 

    Column names: `name`, `content`

## 3. Decide the column types.

[Here's a full documentation of PostgreSQL data types](https://www.postgresql.org/docs/current/datatype.html).

Most of the time, you'll need either `text`, `int`, `bigint`, `numeric`, or `boolean`. If you're in doubt, do some research or ask your peers.

Remember to **always** have the primary key `id` as a first column. Its type will always be `SERIAL`.

```
# EXAMPLE:

Table: albums
id: SERIAL
title: text
content: text

Table: artists
id: SERIAL
name: text
content: text
```

## 4. Decide on The Tables Relationship


Posts can have many comments. Foreign key is on comments.

## 4. Write the SQL.

```sql

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  name text,
  content text
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title text,
  content int,

  comment_id int,
  constraint fk_comment foreign key(comment_id) references comments(id) on delete cascade
);

```

## 5. Create the tables.

```bash
psql -h 127.0.0.1 database_name < albums_table.sql
```

