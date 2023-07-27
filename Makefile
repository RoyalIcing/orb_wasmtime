.PHONY: force_build
force_build:
	ORB_WASMTIME_BUILD=1 mix compile

.PHONY: cargo_build
cargo_build:
	cd native/orb_wasmtime && cargo build

.PHONY: test
test:
	ORB_WASMTIME_BUILD=1 mix test

.PHONY: rustler_precompiled_download
rustler_precompiled_download:
	mix rustler_precompiled.download OrbWasmtime.Rust --all --print --ignore-unavailable
