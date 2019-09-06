# Docker environment skeleton for PHP projects

This is a Docker skeleton for getting any PHP project up and running and running in a Docker environment.

## Usage

 - ```bash <(curl -Ss https://raw.githubusercontent.com/rendler-denis/docker-project-skeleton/master/install.bash)```  or ```git clone https://github.com/rendler-denis/docker-project-skeleton.git .```
 - update ```docker-compose.override.yml``` as needed by adding or updating existing services
 - add any SQL files that might be needed for first time database creation under ```.docker/{dev|prod}/db/scripts/```
 - update the domain for Nginx under ```.docker/{dev|prod}/nginx/etc/conf.d/default.conf```
 - if any changes to the environment variables is required copy .docker.env.dist to .docker.env and update as required 
 - run ```docker-compose up -d```

## Features
 - fix user permissions when running on linux hosts
 - automatically run database scripts on database creation
 - PHP's Xdebug automatically added and configured for development

## Services defined

- **Web server**: nginx at latest version
- **Database server**: PostgreSQL at latest version
- **PHP**: by default, it is PHP 7.3 FPM version, but it can be easily changed by changing the ```VERSION```  build argument

## License

Copyright 2019  Denis-Florin Rendler

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
