FROM ubuntu:24.04
# The above versions should be automatically updated by dependabot
FROM phihos/sssd-krb5-ldap:latest

COPY --from=phihos/sssd-krb5-ldap:latest entrypoint.sh /original-entrypoint.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
