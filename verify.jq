# https://www.rosettacode.org/wiki/Set#Finite_Sets_of_JSON_Entities
def intersection($A;$B):
  def pop:
    .[0] as $i
    | .[1] as $j
    | if $i == ($A|length) or $j == ($B|length) then empty
      elif $A[$i] == $B[$j] then $A[$i], ([$i+1, $j+1] | pop)
      elif $A[$i] <  $B[$j] then [$i+1, $j] | pop
      else [$i, $j+1] | pop
      end;
  [[0,0] | pop];

map({_id, tags, related})
  | reduce .[] as $post
    ({}; .[$post._id] = ($post.related | map({tags})
  | reduce .[] as $related_post
    (0; . + (intersection($post.tags; $related_post.tags) | length))))
