# What is this?

It's a skeleton for a kitura project that you can fork
and use to build servies.


# How do I do that?

  1) fork this repo
  2) clone it on your machine
  3) Change the name in `Package.swift`
  4) run `swift fetch`
  5) run `swift build`
  6) run the app (it'll be in `.build`

# Then to dockerize?

Change the name in the `Dockerfile` for the resultant binary.
Then run `docker build . -t YOUR_TAG_NAME`

