-module(related_erl).
-mode(compile).

%% API exports
-export([main/1]).

-define(IN_JSON, "../posts.json").
-define(OUT_JSON, "../related_posts_erlang.json").

%%====================================================================
%% API functions
%%====================================================================
main(_) ->
    {ok, BData} = file:read_file(?IN_JSON),
    Posts0 = lists:enumerate(jsone:decode(BData)),

    T1 = erlang:system_time(nanosecond),
    Posts1 = add_related(Posts0),
    T2 = erlang:system_time(nanosecond),

    file:write_file(?OUT_JSON, jsone:encode(Posts1)),

    io:format("Processing time (w/o IO): ~f s~n", [(T2-T1) / 1000000000]),
    erlang:halt(0).

%%====================================================================
%% Internal functions
%%====================================================================
build_tag_idx({Idx, #{<<"tags">> := List}}, Acc) ->
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
    [P#{<<"related">> => [map_get(I, PostsM) || I <- top5_related_idx(Idx, P, TagsMap)]} || {Idx, P} <- Posts].

top5_related_idx(SelfIdx, #{<<"tags">> := Tags}, TagsMap) ->
    Idxs = [Idx || Tag <- Tags, Idx <- map_get(Tag, TagsMap), Idx /= SelfIdx],
    Related0 = lists:foldl(fun(Idx, Acc) -> Acc#{Idx => maps:get(Idx, Acc, 0) + 1} end, #{}, Idxs),
    lists:reverse(stalin_sort(5, maps:to_list(Related0))).

%% stalin_sort(N, [{V,K}]) == topN([K])
%% e.g. swap key-value->sort->take 5 biggest -> [values]
stalin_sort(TopN, List) ->
    Res = stalin_sort(TopN, List, gb_trees:empty()),
    [V || {_, V} <- gb_trees:keys(Res)].

%% Init state - fill Acc with first N elements
stalin_sort(_TopN, [], Acc) -> %less then N elements, just return
    Acc;
stalin_sort(0, List, Acc) ->
    {{Min, _}, _} = gb_trees:smallest(Acc),
    stalin_sort_(List, Acc, Min);
stalin_sort(TopN, [{V, K} | Rest], Acc0) ->
    Acc1 = gb_trees:insert({K, V}, true, Acc0),
    stalin_sort(TopN - 1, Rest, Acc1).

%% sort state
stalin_sort_([{_V, K} | Rest], Acc, Min) when K < Min -> %skip
    stalin_sort_(Rest, Acc, Min);
stalin_sort_([], Acc, _Min) ->
    Acc;
stalin_sort_([{V, K} | Rest], Acc, _Min) ->
    Acc1 = gb_trees:insert({K, V}, true, Acc),  %insert new val
    {_,_, Acc2} = gb_trees:take_smallest(Acc1), %and drop smallest
    {{NewMin, _}, _} = gb_trees:smallest(Acc2), %find new smallest
    stalin_sort_(Rest, Acc2, NewMin).
