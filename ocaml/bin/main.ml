open Base

type post =
  { _id : string
  ; title : string
  ; tags : string array
  }
[@@deriving yojson]

type related_posts =
  { _id : string
  ; tags : string array
  ; related : post array
  }
[@@deriving yojson]

type post_array = post array [@@deriving of_yojson]
type related_posts_array = related_posts array [@@deriving to_yojson]

let () =
  let args = Sys.get_argv () in
  Array.sexp_of_t String.sexp_of_t args |> Sexp.to_string |> Stdio.print_endline;
  let source = args.(1) in
  let destination = args.(2) in
  let posts =
    Yojson.Safe.from_file source |> post_array_of_yojson |> Result.ok_or_failwith
  in
  let start = Unix.gettimeofday () in
  let tagPostsTmp = Hashtbl.create (module String) in
  Array.iteri posts ~f:(fun postId post ->
    Array.iter post.tags ~f:(fun tag ->
      match Hashtbl.find tagPostsTmp tag with
      | Some s -> Stack.push s postId
      | None ->
        let newStack = Stack.create () in
        Stack.push newStack postId;
        Hashtbl.set tagPostsTmp ~key:tag ~data:newStack));
  let tagPosts = Hashtbl.map tagPostsTmp ~f:Stack.to_array in
  let topN = 5 in
  let allrelatedPosts =
    Array.mapi posts ~f:(fun postId post ->
      let taggedPostCount = Array.create ~len:(Array.length posts) 0 in
      let top5 = Array.create ~len:(topN * 2) 0 in
      Array.iter post.tags ~f:(fun tagId ->
        Array.iter (Hashtbl.find_exn tagPosts tagId) ~f:(fun relatedPostId ->
          taggedPostCount.(relatedPostId) <- taggedPostCount.(relatedPostId) + 1));
      taggedPostCount.(postId) <- 0;
      let minTags = ref 0 in
      for i = 0 to Array.length taggedPostCount - 1 do
        let count = taggedPostCount.(i) in
        if count > !minTags
        then (
          let upperBound = ref ((topN - 2) * 2) in
          while !upperBound >= 0 && count > top5.(!upperBound) do
            top5.(!upperBound + 2) <- top5.(!upperBound);
            top5.(!upperBound + 3) <- top5.(!upperBound + 1);
            upperBound := !upperBound - 2
          done;
          let insertionPos = !upperBound + 2 in
          top5.(insertionPos) <- count;
          top5.(insertionPos + 1) <- i;
          minTags := top5.((topN * 2) - 2))
      done;
      let related = Array.init topN ~f:(fun i -> posts.(top5.((i * 2) + 1))) in
      { _id = post._id; tags = post.tags; related })
  in
  let elapsedMs = (Unix.gettimeofday () -. start) *. 1000.0 in
  Stdio.printf "Processing time (w/o IO): %1.0fms\n" elapsedMs;
  let json = allrelatedPosts |> related_posts_array_to_yojson in
  Yojson.Safe.to_file destination json
;;
