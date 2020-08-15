@echo off
SET RecordName=%3
SET TxtValue=%4
SET EMAIL="X-Auth-Email: Your Cloudflare Email Here"
SET APIKEY="X-Auth-Key: Your Cloudflare API KEY Here "
SET DOMAIN=yourdomain.com
SET ZONEID=Your Cloudflare ZONE ID
SET DNSRECORDID=""

REM FIND DNS RECORD ID FOR DELETE AND UPDATE OPERATION
curl -s -X GET "https://api.cloudflare.com/client/v4/zones/%ZONEID%/dns_records?type=TXT&name=%RecordName%&content=%TxtValue%" -H %EMAIL% -H %APIKEY% -H "Content-Type:application/json"  | jq -r ."result"[].id > DNSRECORDID.txt

set /p DNSRECORDID=< DNSRECORDID.txt

del DNSRECORDID.txt

echo %DNSRECORDID% >> log.txt
REM DNS TXT RECORD DELETE
curl -s -X  DELETE "https://api.cloudflare.com/client/v4/zones/%ZONEID%/dns_records/%DNSRECORDID%" -H %EMAIL% -H %APIKEY% -H "Content-Type:application/json" 


exit