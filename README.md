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
 - Create letencrypt dir in your C drive and upload all files in this repo to C:/letencrypt dir
 - As for scheduling Let's Encrypt certificate generation. Point Windows Task Scheduling command to C:/letencrypt/sslrun.bat file and set dir to C:/letencrypt/. I added example task scheduling xml file

# Used Libs
 - Win-Acme [Win-acme](https://www.win-acme.com/)!
 - jq is a lightweight and flexible command-line JSON processor [JQ EXE](https://stedolan.github.io/jq/)!
 - Cloudflare API [CLOUDFLARE](https://www.cloudflare.com/)!


# Author

* **Fatih Şennik**

License
----
MIT License

Copyright (c) 2020 Fatih Şennik

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

**Free Software [Senniksoft.com](http://www.senniksoft.com/)**
