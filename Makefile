.PHONY: generate
generate: 
		buf generate
.PHONY: user
user:
		protoc -I userpb userpb/user.proto -Ithird_party --go_out=./userpb/go --go-grpc_out=./userpb/go --grpc-gateway_out=.

DEFAULT_GOAL := generate

