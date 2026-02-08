FROM docker.io/dart:3.3
WORKDIR /sdk
COPY . .
RUN dart pub get
CMD ["dart", "run", "ci/smoke_test.dart"]
