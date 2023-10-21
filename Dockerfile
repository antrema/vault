FROM hashicorp/vault:1.15.0

COPY antrema-cassl.crt /usr/local/share/ca-certificates/antrema-cassl.crt
COPY antrema-caroot.crt /usr/local/share/ca-certificates/antrema-caroot.crt
COPY antrema-caopenvpn.crt /usr/local/share/ca-certificates/antrema-caopenvpn.crt
COPY antrema-caemail.crt /usr/local/share/ca-certificates/antrema-caemail.crt

RUN update-ca-certificates
