# r301

<img src="https://raw.githubusercontent.com/scottmotte/r301/master/r301.gif" alt="r301" width="270" />

Permanently redirect an entire domain to a new domain. Easy to configure and deploy in just 5 minutes.

## Usage

### Production

Click this button to install to Heroku.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

```
git clone
cd r301
heroku create
git push heroku master
heroku config:set DOMAIN=http://newdomain.com
heroku restart
```

Finally, make sure you [setup your heroku custom domain settings](https://devcenter.heroku.com/articles/custom-domains) for the old domain.

Visit <http://olddomain.com/somewhere> and watch it get 301 redirected to <http://newdomain.com/somewhere>.

### Development

```
cp .env.example .env
```

Edit the contents of .env to the DOMAIN you want to redirect to.

```
bundle
bundle exec foreman start
```

Visit <http://localhost:5000/somewhere> and watch it get 301 redirected to <http://DOMAIN.com/somewhere>.


