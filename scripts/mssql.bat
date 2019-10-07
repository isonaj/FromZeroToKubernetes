docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=P@55word!' -p 5433:1433 -v c:\data:/var/opt/mssql mcr.microsoft.com/mssql/server:2017-latest-ubuntu
