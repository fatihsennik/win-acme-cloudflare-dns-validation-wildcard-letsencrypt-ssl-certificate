@echo off
SET RecordName=%3
SET TxtValue=%4
SET EMAIL="X-Auth-Email:Your Cloudflare Email Here"
SET APIKEY="X-Auth-Key:Your Cloudflare API KEY Here"
SET DOMAIN=yourdomain.com
SET ZONEID=Your Cloudflare Zone ID 


REM DNS TXT RECORD ADD
curl -s -X  POST "https://api.cloudflare.com/client/v4/zones/%ZONEID%/dns_records" -H %EMAIL% -H %APIKEY% -H "Content-Type:application/json" --data "{\"type\":\"TXT\",\"name\":\"%RecordName%\",\"content\":\"%TxtValue%\",\"ttl\":1,\"proxied\":false}" >> log.txt


exit