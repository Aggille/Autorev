del %1_privada.txt
del %1_publica.txt
openssl pkcs12 -in %1 -nokeys -out %1_publica.txt
openssl pkcs12 -in %1 -nodes -nocerts -out %1_privada.txt
openssl rsa -in %1_privada.txt -check -out %1_privada.txt


