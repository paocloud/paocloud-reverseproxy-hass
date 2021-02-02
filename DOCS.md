# Home Assistant Add-on: Reverse Proxy By PaOCLOUD CO., LTD..

## Configuration
This is example of configuration.
```
tunnel_host: <tunnel_server>
port: <port>
username: <username>
secret: <password>
```
You must add this configuration into "Configuration" tab.

```
http:
  use_x_forwarded_for: true
  trusted_proxies: 
    - 10.1.255.255
```
You must add this configuration into "main configuration" for see real-user IP.
