# VitePress

```
     server {
            listen       80;
            server_name  alemonjs.com;

            location / {
                return 301 https://$host$request_uri;
            }
      }
```

```
     server {
         listen       443 ssl;
         server_name  localhost;

         ssl_certificate /usr/local/nginx/alemonjs.com_nginx/alemonjs.com_bundle.crt;
         ssl_certificate_key /usr/local/nginx/alemonjs.com_nginx/alemonjs.com.key;

         location /alemon {
            alias   alemon;
            try_files $uri $uri/ alemon/index.html;
            index  index.html index.htm;
         }

         location / {
             rewrite ^/$ /alemon permanent;
         }

     }
```