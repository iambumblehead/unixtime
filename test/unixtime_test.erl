-module(unixtime_test).
-author('bumblehead <chris@bumblehead.com>').

-include_lib("eunit/include/eunit.hrl").

%% is_output_test() ->
%%     io:format(user, "output this to eunit console ~w", [{this}]).

is_ret_timestamp_test() ->
    Timestamp = unixtime:gettime(),
    ?assert(length(integer_to_list(Timestamp)) =:= 13).

is_ret_timestamp_number_test() ->
    Timestamp = unixtime:gettime(),
    ?assert(is_number(Timestamp)).
