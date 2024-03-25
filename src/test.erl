-module(test).

-export([on_load/0]).
-export([hello/0]).

-on_load(on_load/0).

on_load() ->
    ok  = erlang:load_nif(atom_to_list(?MODULE), 0).

hello() -> hello_nif().

hello_nif() ->
    erlang:nif_error("NIF library not loaded").
