## Installations

Make sure you have the following already installed.

### Installing Ruby

Check to see if you have Ruby version 2.5.0 or later.

```bash
$ ruby --version
ruby 2.5.0
```

If not, look through [hw-setup](http://www.cs.columbia.edu/~junfeng/21sp-w4156/assignments.html#hw-setup) for help installing Ruby.

### Installing SQLite3

You will also need an installation of the SQLite3 database. Verify that it is correctly installed, as the program should report its version.

```bash
$ sqlite3 --version
```

If not, look at the [SQLite3 website](https://www.sqlite.org/) to find installation instructions.

### Installing Node.js and Yarn

Finally, you'll need Node.js and Yarn installed to manage your application's JavaScript.

Find the installation instructions at the [Node.js website](https://nodejs.org/en/download/) and verify it's installed correctly.

```bash
$ node --version
```

The version of your Node.js runtime should be printed out. Make sure it's greater than 8.16.0.

To install Yarn, follow the installation instructions at the [Yarn website](https://classic.yarnpkg.com/en/docs/install).

Running the following command should print out Yarn version.

```bash
$ yarn --version
```

If it says something like "1.22.0", Yarn has been installed correctly.

## Starting up the Web Server

Run the following command in the `nooks` directory, open a browser window, and navigate to http://localhost:3000.

```bash
$ bin/rails server
```
