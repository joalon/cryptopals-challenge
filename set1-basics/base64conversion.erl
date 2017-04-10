-module('base64conversion').

-include_lib("eunit/include/eunit.hrl").

-export([hex_to_base64/1, base64_to_hex/1]).


hex_to_base64(_Input) ->
	io:format("converting...").

hex_to_base64_test_() ->
	"SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t" = hex_to_base64("49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d").




base64_to_hex(_Input) ->
	io:format("converting...").

base64_to_hex_test_() ->
	"49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d" = base64_to_hex("SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t").

