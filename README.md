# README

https://aqueous-hollows-46233.herokuapp.com/

## How it works

### Web interface
Enter the target url to be shortened
[[https://github.com/dcampoy/shorten-url/blob/master/doc/step-1.png|alt=homepage]]

And copy the shortened link
[[https://github.com/dcampoy/shorten-url/blob/master/doc/step-2.png|alt=infopage]]

Come back to this page to know how many hits the link had
[[https://github.com/dcampoy/shorten-url/blob/master/doc/step-3.png|alt=stats]]

### Command line interface (local)

Create a new link

```bash
$ rails shorten:create[http://google.com]
Code: D7HOoP0
```

Show information

```bash
$ rails shorten:info[D7HOoP0]
Id: 23
Original URL: http://google.com
Hits: 0
```

## Development

### How to run the service

```bash
$ rails server
```

### How to run tests

```bash
$ rails test
```

### How to deploy
NOTE: requires a [heroku account](https://signup.heroku.com/)

```bash
$ git push heroku master
```

## Bugs and tech debt

1. The only stats implemented is total hits. Unique users and invalid hits are pending.
2. There is not way to return to a shorten url page.
3. Only tested in last version of Chrome and Firefox.
