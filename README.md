# win-acme-cloudflare-dns-validation-wildcard-letsencrypt-ssl-certificate
Generate wildcard SSL certificates by using cloudflare dns validation. I have provided all .bat files in order to create or delete dns text record in Cloudflare.


# What are the Benefits & Advantages of using this command line scripts?
 - You can Generate Wildcard SSL certificate using Let's Encrypt and CloudFlare API 
 - You do not need to open 80 port for http validation. it is done by DNS validation. This is useful for local development or The place where data security matters.
 - You are able to use unlimited subdomain and you do not need to generate certificate for each one in future. Do it once and forget !
 - You are able export pfx certificate by password to any location in your drive. 
 - You are also able to deploy your pfx certificate to IIS Server automatically
 
 
# How to use this script?
 - Update create.bat, delete.bat and sslrun.bat with your Cloudflare Api credentials and your domain name address.
 - As for scheduling Let's Encrypt certificate generation. Point Windows Task Scheduling command to C:/yourdir/sslrun.bat file and set dir to C:/yourdir/. I added example task scheduling xml file
