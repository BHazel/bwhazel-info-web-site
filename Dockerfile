FROM python:3.9.2 AS dev-env
LABEL maintainer="Benedict W. Hazel"

COPY /src/requirements.txt /tmp/requirements.txt
WORKDIR /tmp
RUN pip install -r requirements.txt

WORKDIR /
EXPOSE 8000

FROM dev-env AS build
ARG azureAppInsightsKey
WORKDIR /src
COPY . .
RUN find . -type f -exec sed -i "s/{{secrets.azureAppInsightsKey}}/${azureAppInsightsKey}/g" {} +
RUN make build

FROM nginx AS publish
COPY --from=build /src/dist /usr/share/nginx/html

FROM nginx AS deploy
COPY dist /usr/share/nginx/html