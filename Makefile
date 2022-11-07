.PHONY: all
all: class-inheritance class struct-protocol-conformance-requirements class-multiple-inheritance final-class struct class-protocol-conformance-empty protocol class-protocol-conformance-requirements struct-protocol-conformance-empty struct-protocol-generics struct-protocol-no-generics class-protocol-no-generics class-protocol-generics

class-inheritance:
	swiftc -emit-sil -O src/class-inheritance.swift > out/class-inheritance.sil

class:
	swiftc -emit-sil -O src/class.swift > out/class.sil

struct-protocol-conformance-requirements:
	swiftc -emit-sil -O src/struct-protocol-conformance-requirements.swift > out/struct-protocol-conformance-requirements.sil

class-multiple-inheritance:
	swiftc -emit-sil -O src/class-multiple-inheritance.swift > out/class-multiple-inheritance.sil

final-class:
	swiftc -emit-sil -O src/final-class.swift > out/final-class.sil

struct:
	swiftc -emit-sil -O src/struct.swift > out/struct.sil

class-protocol-conformance-empty:
	swiftc -emit-sil -O src/class-protocol-conformance-empty.swift > out/class-protocol-conformance-empty.sil

protocol:
	swiftc -emit-sil -O src/protocol.swift > out/protocol.sil

class-protocol-conformance-requirements:
	swiftc -emit-sil -O src/class-protocol-conformance-requirements.swift > out/class-protocol-conformance-requirements.sil

struct-protocol-conformance-empty:
	swiftc -emit-sil -O src/struct-protocol-conformance-empty.swift > out/struct-protocol-conformance-empty.sil

struct-protocol-generics:
	swiftc -emit-sil -O src/struct-protocol-generics.swift > out/struct-protocol-generics.sil

struct-protocol-no-generics:
	swiftc -emit-sil -O src/struct-protocol-no-generics.swift > out/struct-protocol-no-generics.sil

class-protocol-no-generics:
	swiftc -emit-sil -O src/class-protocol-no-generics.swift > out/class-protocol-no-generics.sil

class-protocol-generics:
	swiftc -emit-sil -O src/class-protocol-generics.swift > out/class-protocol-generics.sil
