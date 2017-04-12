-module('base64conversion').

-include_lib("eunit/include/eunit.hrl").

-export([string_to_hex/1, hex_to_base64/1, base64_to_hex/1]).


hex_to_base64(_Input) ->
	io:format("converting...").

hex_to_base64_test_() ->
	"SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t" = hex_to_base64("49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d").




base64_to_hex(_Input) ->
	io:format("converting...").

base64_to_hex_test_() ->
	"49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d" = base64_to_hex("SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t").

string_to_hex(Input) ->
	string_to_hex(Input, <<>>).

string_to_hex([], Acc) ->
	Acc;

string_to_hex(["a" | Rest], Acc) ->
	string_to_hex(Rest, <<10, Acc>>);
string_to_hex(["b" | Rest], Acc) ->
	string_to_hex(Rest, <<11, Acc>>);
string_to_hex(["c" | Rest], Acc) ->
	string_to_hex(Rest, <<12, Acc>>);
string_to_hex(["d" | Rest], Acc) ->
	string_to_hex(Rest, <<13, Acc>>);
string_to_hex(["e" | Rest], Acc) ->
	string_to_hex(Rest, <<14, Acc>>);
string_to_hex(["f" | Rest], Acc) ->
	string_to_hex(Rest, <<15, Acc>>);
string_to_hex([Int | Rest], Acc) ->
	ParsedInt = string:to_integer(Int),
	ReturnAcc = << ParsedInt, Acc/binary >>,
	string_to_hex(Rest, ReturnAcc ).





