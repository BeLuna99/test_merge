FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine3.15

ENV http_proxy http://proxy.hcm.fpt.vn:80
ENV https_proxy http://proxy.hcm.fpt.vn:80

R
    && apk del tzdata

ENV http_proxy ""
ENV https_proxy ""
