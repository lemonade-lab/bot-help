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

### alemonjs.com
```
worker_processes  1;

events {
    worker_connections  1024;
}


http {
    include       mime.types;
    default_type  application/octet-stream;


    sendfile        on;

    keepalive_timeout  65;


    server {
        listen       80;
        server_name  alemonjs.com;


        location / {
             return 301 https://$host;
        }

  
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }

    }



     server {
         listen       443 ssl;
         server_name  localhost;

         ssl_certificate /usr/local/nginx/alemonjs.com_nginx/alemonjs.com_bundle.crt;
         ssl_certificate_key /usr/local/nginx/alemonjs.com_nginx/alemonjs.com.key;



         location / {
            root   alemon;
            index  index.html index.htm;
         }

         location /v1 {
            proxy_pass http://localhost:9001/v1;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-Proto $scheme;
          }

         location /v1.1 {
            rewrite ^/v1.1(/.*)?$ / permanent;
         }
  
         location /v1.0 {
            rewrite ^/v1.0(/.*)?$ / permanent;
         }



     }

}
```
