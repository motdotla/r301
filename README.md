# r301

Permanently redirect an entire domain to a new domain.

## Usage

### Production

```
git clone
cd r301
heroku create
git push heroku master
heroku config:set DOMAIN=domain-to-redirect-to.com
```

Finally, make sure you [setup your heroku custom domain settings](https://devcenter.heroku.com/articles/custom-domains) to the old domain.

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


