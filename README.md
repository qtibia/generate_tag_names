Generate tag names
==================

The idea is to generate unique tag names for conferences to improve social networking.

Thus, the unique tags will be generated from a list of animal (mythical creatures) names and adjectives.

Creation of the sqlite table:

```
CREATE TABLE animal_names (id integer PRIMARY KEY, animal_m text UNIQUE, animal_f text UNIQUE);
```
