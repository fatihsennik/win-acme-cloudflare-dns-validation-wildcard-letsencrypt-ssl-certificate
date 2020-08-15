@echo off
SET PEMEXPORT_PATH="C:\YOURDESKTOP\LETSENCRYPT-SSL-"
rem -- GENERATE SERTIFICATE FOR Wildcard Domain
SET HOST=*.YOURDOMAIN.COM
SET EMAIL=INFO@YOURDOMAIN.COM
rem --installation iis
rem --store pemfiles --pemfilespath %PEMEXPORT_PATH%
rem --test --verbose

wacs --notaskscheduler --store centralssl --centralsslstore %PEMEXPORT_PATH% --target manual --host %HOST%  --validationmode dns-01 --validation dnsscript --dnscreatescript create.bat --dnsdeletescript delete.bat --force --emailaddress %EMAIL% --accepttos --installation script --script restartiis.bat

exit