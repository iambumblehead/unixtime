-module(unixtime).
-author('bumblehead <chris@bumblehead.com>').

-export([gettime/1]).
-export([gettime/0]).

-type erlangtime() :: {number(), number(), number()}.

%% @doc Returns erlang timestamp tuple as a 13-digit timestamp.
-spec gettime(erlangtime()) -> number().
gettime({Mega, Sec, Micro}) ->
    (Mega * 1000000 + Sec) * 1000 + round(Micro / 1000).    

%% @doc Returns current date as a 13-digit timestamp.
-spec gettime() -> number().
gettime() ->
    gettime(os:timestamp()).
