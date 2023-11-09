%%%-------------------------------------------------------------------
%% @doc etcd_provider public API
%% @end
%%%-------------------------------------------------------------------

-module(lgh_web_provider_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    lgh_web_provider_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
