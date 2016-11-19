#nginx-consul-template

##Description

This is simple docker image provided with nginx and consul-template in one container.

##Configuration

You can configure some paths and net addresses by docker environments (**-e or --env** option) variables

Envs:

* NGINX_TMPL_PATH - path in container where is template (*default: /tmp/nginx.ctmpl*)
* NGINX_CONF_PATH - where consul-template should put config (*defaut: /etc/nginx/conf.d/generated.conf*)
* CONSUL_SERVER - consul server address (*default: consul:8500*)

##How to use
For example you have consul container that is named 'another-consul' at the same machine where you want to run this image. 
Also you've got your template in /home/user/my_super_nginx.ctmpl and you want to put it in /usr/etc/nginx instead of standard nginx.conf.

```
docker run -d -v /home/user/my_super_nginx.ctmpl:/ --env NGINX_TMPL_PATH=/my_super_nginx.ctmpl --env NGINX_CONF_PATH=/usr/etc/nginx/nginx.conf --env CONSUL_SERVER=consul-server:8500 --link another-consul:consul-server ket4yii/nginx-consul-template
```
