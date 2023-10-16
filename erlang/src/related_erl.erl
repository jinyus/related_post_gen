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
    Posts0 = lists:enumerate(jsone:decode(BData, [{keys, atom}])),

    T1 = erlang:system_time(nanosecond),
    Posts1 = add_related(Posts0),
    T2 = erlang:system_time(nanosecond),

    file:write_file(?OUT_JSON, jsone:encode(Posts1)),

    io:format("Processing time (w/o IO): ~f s~n", [(T2-T1) / 1000000000]),
    erlang:halt(0).

%%====================================================================
%% Internal functions
%%====================================================================
build_tag_idx({Idx, #{tags := List}}, Acc) ->
    build_tag_idx(Idx, List, Acc).

build_tag_idx(_Idx, [], Acc) ->
    Acc;
build_tag_idx(Idx, [Tag | Rest], Acc) ->
    case Acc of
        #{Tag := Ids} ->
            build_tag_idx(Idx, Rest, Acc#{Tag := [Idx | Ids]});
        _ ->
            build_tag_idx(Idx, Rest, Acc#{Tag => [Idx]})
    end.


add_related(Posts) ->
    TagsMap = lists:foldl(fun build_tag_idx/2, #{}, Posts),
    PostsM = maps:from_list(Posts),
    Len = map_size(PostsM),
    [P#{related => [map_get(I, PostsM) || I <- top5_related_idx(Idx, P, TagsMap, Len)]} || {Idx, P} <- Posts].

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
