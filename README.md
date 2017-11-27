Generate tag names
==================

The idea is to generate unique tag names for conferences to improve social networking.

Thus, the unique tags will be generated from a list of animal (mythical creatures) names and adjectives.

Members that want to play it better should try to create a story backing up the tag name and also try to blend in the character.

E.g the "hysterical piggy" may sometimes be hysterical,

Creation of the sqlite table:

```
CREATE TABLE names (id integer PRIMARY KEY, name_m text UNIQUE, name_f text UNIQUE);
```

The names.csv table is a mirror of the names table in the db.

```
sqlite3 -separator $'\t' -header db.sqlite "SELECT name_m, name_f FROM names" > names.csv
```
