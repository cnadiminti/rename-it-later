# self-extractable-installer-example

This example shows how to build a self-extractable Installer on Linux.

```
├── app               <== The app directory containing the original contents
│   └── run_app.sh   <== The entrypoint of our app
├── app_stub.sh       <== The stub responsible for extracting and running the app
├── build.sh          <== Build helper
├── Makefile          <== Makefile for build automation
└── README.md         <== Documentation of this repo
```

## Build

`./build.sh` or `make build`

### What does it do?

- Creates `app.tar.gz` from the app directory, and
- Creates `selfextract_app.bin` from `app_stub.sh` and `app.tar.gz` in that order

## Run

`sh selfextract_app.bin`

### How does it work?

- Extracts app from `app.tar.gz` into a TEMP directory, and
- Runs `run_app.sh`
