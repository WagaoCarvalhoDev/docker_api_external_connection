# Use latest stable channel SDK.
FROM dart:2.19

# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

# Copy app source code (except anything in .dockerignore) and AOT compile app.
COPY . .
RUN dart compile exe bin/server.dart -o bin/server


# Start server.
EXPOSE 3000
CMD ["/app/bin/server"]
