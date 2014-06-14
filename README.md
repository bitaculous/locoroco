[LOCOROCO](http://bitaculous.github.io/locoroco)
================================================

**Ready-to-Deploy [LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails") package.**

[![Travis CI Status](https://travis-ci.org/bitaculous/locoroco.svg)](http://travis-ci.org/bitaculous/locoroco) [![Gemnasium Status](https://gemnasium.com/bitaculous/locoroco.svg)](https://gemnasium.com/bitaculous/locoroco)

Requirements
------------

At [Bitaculous](http://bitaculous.com "It's all about the bits, baby!") we use the following stack to run
[LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails"), that's why this package is made for:

* [Nginx](http://nginx.org "A free, open-source, high-performance HTTP server and reverse proxy")
* [Unicorn](http://unicorn.bogomips.org "Rack HTTP server for fast clients and Unix")
* [RVM](https://rvm.io "Ruby Version Manager")

If you want to run [LocomotiveCMS](http://locomotivecms.com "An open source CMS for Rails") without setting up a server,
check out [LocomotiveHosting](https://locomotivehosting.com "Host your LocomotiveCMS website here."), from the team
behind LocomotiveCMS.

Installation
------------

1. Clone repository

    ```
    $ git co git@github.com:bitaculous/locoroco.git
    ```

2. Install dependencies with [Bundler](http://bundler.io "The best way to manage a Ruby application's gems")

    ```
    $ cd locoroco
    $ bundle install
    ```

3. Copy `config/sample.yml` to `config/application.yml` and adjust properly

Deployment
----------

### First deployment

1. Create deploy configuration

    Copy `config/deploy/sample.rb` to `config/deploy/<stage>.rb` and adjust properly

2. Setup shared and release directories

    ```
    $ cap <stage> deploy:check:directories
    ```

3. Copy configurations to server

    Copy `config/sample.yml` to `~/shared/config/application.yml` and adjust properly

    Copy `config/unicorn/sample.rb` to `~/shared/config/unicorn/<stage>.rb` and adjust properly

4. Check required files and directories exist

    ```
    $ cap <stage> deploy:check
    ```

### Regular deployment

```
$ cap <stage> deploy
```

Unicorn
-------

Start Unicorn

```
$ cap <stage> unicorn:start
```

Stop Unicorn (QUIT)

```
$ cap <stage> unicorn:stop
```

Restart Unicorn (USR2 + QUIT); use this when `preload_app true`

```
$ cap <stage> unicorn:restart
```

License
-------

Locoroco is released under the MIT License (MIT), see [LICENSE](https://raw.githubusercontent.com/bitaculous/locoroco/master/LICENSE "License").