# TFTPD-HPA
TFTP server to serve boot files for atom z3735f SoC's.

## Run
`docker run -p 0.0.0.0:69:69/udp -v /opt/tftpd:/data -i -t stoxygen/tftpd-hpa:v1.0.0`
