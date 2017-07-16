# nginx-consul-template

## Description

This is simple docker image provided with nginx and consul-template in one container.

## Configuration

You can configure some paths and net addresses by docker environments (**-e or --env** option) variables

Envs:

* NGINX_TMPL_PATH - path in container where is template (*default: /tmp/nginx.ctmpl*)
* NGINX_CONF_PATH - where consul-template should put config (*defaut: /etc/nginx/conf.d/generated.conf*)
* CONSUL_SERVER - consul server address (*default: consul:8500*)

## How to use
For example you have consul container that is named 'another-consul' at the same machine where you want to run this image. 
Also you've got your template in /home/user/my_super_nginx.ctmpl and you want to put it in /usr/etc/nginx instead of standard nginx.conf.

```
docker run --name nginx -d -v $(pwd)/my.ctmpl:/my_super_nginx.ctmpl --env NGINX_TMPL_PATH=/my_super_nginx.ctmpl --env NGINX_CONF_PATH=/etc/nginx/conf.d/default.conf --env CONSUL_SERVER=10.0.30.10:8500 ket4yii/nginx-consul-template
```
