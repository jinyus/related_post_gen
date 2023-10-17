-module(related_erl).
-mode(compile).

%% API exports
-export([main/1]).

-define(IN_JSON, "../posts.json").
-define(OUT_JSON, "../related_posts_erlang.json").
-define(TOP_N, 5).

%%====================================================================
%% API functions
%%====================================================================
main(_) ->
    {ok, BData} = file:read_file(?IN_JSON),
    Posts0 = jsone:decode(BData, [{keys, atom}]),

    T1 = erlang:system_time(nanosecond),
    Posts1 = add_related(Posts0),
    T2 = erlang:system_time(nanosecond),
    file:write_file(?OUT_JSON, jsone:encode(Posts1)),

    io:format("Processing time (w/o IO): ~f s~n", [(T2-T1) / 1000000000]),
    erlang:halt(0).

%%====================================================================
%% Internal functions
%%====================================================================
add_related(Posts0) ->
    Posts = list_to_tuple(Posts0),
    NPosts = tuple_size(Posts),
    TagsMap = build_tag_idx(NPosts, Posts, #{}),
    [P#{related => [element(I, Posts) || I <- top5_related_idx(Idx, P, TagsMap, NPosts)]} || {Idx, P} <- lists:enumerate(Posts0)].

build_tag_idx(0, _, Acc) ->
    Acc;
build_tag_idx(Idx, Posts, Acc) ->
    #{tags := Tags} = element(Idx, Posts),
    build_tag_idx(Idx-1, Posts, collect_tags(Idx, Tags, Acc)).

collect_tags(_, [], Acc) ->
    Acc;
collect_tags(Idx, [Tag | Rest], Acc) ->
    case Acc of
        #{Tag := Ids} ->
            collect_tags(Idx, Rest, Acc#{Tag := [Idx | Ids]});
        _ ->
            collect_tags(Idx, Rest, Acc#{Tag => [Idx]})
    end.

top5_related_idx(SelfIdx, #{tags := Tags}, TagsMap, Len) ->
    Cnt = counters:new(Len, []),
    _ = [counters:add(Cnt, Idx, 1) || Tag <- Tags, Idx <- map_get(Tag, TagsMap)],
    counters:put(Cnt, SelfIdx, 0),
    top5(Len, Cnt).

top5(N, Cnt) ->
    top5(N, Cnt, {dummy_ordset(?TOP_N), 0}).

top5(0, _, {Set, _}) ->
    lists:reverse([Idx || {_, Idx} <- Set]);
top5(N, Cnt, {Set, Min} = Acc) ->
    V = counters:get(Cnt, N),
    case V > Min of
        true ->
            Set1 = tl(ordsets:add_element({V,N}, Set)),
            top5(N-1, Cnt, {Set1, element(1, hd(Set1))});
        false ->
            top5(N-1, Cnt, Acc)
    end.


dummy_ordset(Size) ->
    [{0,0} || _ <- lists:seq(1, Size)].
