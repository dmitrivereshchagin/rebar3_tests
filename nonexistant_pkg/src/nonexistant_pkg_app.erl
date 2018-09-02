%%%-------------------------------------------------------------------
%% @doc nonexistant_pkg public API
%% @end
%%%-------------------------------------------------------------------

-module(nonexistant_pkg_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    nonexistant_pkg_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================