
FROM fischerscode/flutter:stable AS build

WORKDIR /app

USER flutter

COPY --chown=flutter:flutter . .

RUN flutter pub get

RUN flutter build web --release

FROM nginx:latest

COPY --from=build /app/build/web /usr/share/nginx/html
