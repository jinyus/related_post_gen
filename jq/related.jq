(   
    to_entries
    | map({key, tag:.value.tags[]})
    | group_by(.tag)
    | map({key: (.[0].tag), value: [.[].key] })
    | from_entries
) as $tag_to_k
| . as $posts
| to_entries
| map (
    del(.value.title)
    | .key as $k
    | .value.related = (
        [$tag_to_k[.value.tags[]]]
        | flatten
        | map(select(.!=$k))
        | group_by(.)
        | map( {k: .[0], common_tags: length } )
        | sort_by(-.common_tags)
        | [.[:5].[].k]
        | map($posts[.])
    )
    | .value
)