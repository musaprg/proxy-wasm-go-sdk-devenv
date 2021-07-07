# proxy-wasm-go-sdk-devenv

This docker environment makes it easier to run e2e test of [proxy-wasm-go-sdk](https://github.com/tetratelabs/proxy-wasm-go-sdk).

## Prerequisite

This project requires the hierarchy below,

```
- /proxy-wasm-go-sdk <- tetratelabs/proxy-wasm-go-sdk
- /proxy-wasm-go-sdk-devenv <- this project
```

## Usage

Let's check Makefile!

```
make test.e2e
```
