# MySQL mTLS

1. `./generate.sh` need openssl >= 3
2. `docker build -t mysql-mtls .`
3. `docker-compose up -d`
4. `mysql -h 127.0.0.1 -P 3306 -u user -p123456 --ssl-mode=VERIFY_IDENTITY --ssl-ca=certs/ca.crt --ssl-cert=certs/client.crt --ssl-key=certs/client.key`
