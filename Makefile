.DEFAULT: all

all: impl

impl: impl/rust

impl/rust: impl/rust/crates

impl/rust/crates: impl/rust/crates/pseudo-social

impl/rust/crates/pseudo-social: impl/rust/crates/pseudo-social/target

impl/rust/crates/pseudo-social/target: impl/rust/crates/pseudo-social/target/debug impl/rust/crates/pseudo-social/target/release

impl/rust/crates/pseudo-social/target/debug: impl/rust/crates/pseudo-social/target/debug/pseudo-social

impl/rust/crates/pseudo-social/target/release: impl/rust/crates/pseudo-social/target/release/pseudo-social

impl/rust/crates/pseudo-social/target/debug/pseudo-social: impl/rust/crates/pseudo-social/src/*.rs
	cargo build --manifest-path impl/rust/crates/pseudo-social/Cargo.toml

impl/rust/crates/pseudo-social/target/release/pseudo-social: impl/rust/crates/pseudo-social/src/*.rs
	cargo build --release --manifest-path impl/rust/crates/pseudo-social/Cargo.toml
