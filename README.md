# masterbuilders

A Ruby on Rails app to track LEGO sets that have been built by users ("Master Builders") and their associated Theme (LEGO City, Star Wars, Space, Pirates, etc.). Masterbuilders tracks the following for each completed set - price, number of pieces, and reccomended age. Support for Google based OAuth is included. Editing of LEGO sets is restricted to only the user that created/built the set. 

## Installation
To install the program, run the following:

```bash
git clone git@github.com:kjoos22/masterbuilders.git
```
## Configurating database
To configure the database, run the following:

```bash
rails db:migrate
```

## Launching the program
Once installed, navigate to the appropriate directory and launch the program via:

```bash
rails s
```

This will then display a localhost url that you can navigate to via your browser to use the program.

## Contributing
Pull requests are welcome. To propose substantial changes please open an issue.

## Future Features
1. Age attribute for users
2. "Difficult sets" for users, or sets where age > user age
3. Connect to Rebrickable (LEGO API) to allow adding of official LEGO sets and automatically assign attributes
4. Formatting

## License
https://github.com/kjoos22/masterbuilders/blob/main/LICENSE.txt

