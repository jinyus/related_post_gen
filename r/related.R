load.lib <- c("jsonlite", "fastmap")
install.lib <- load.lib[!load.lib %in% installed.packages()]
for(lib in install.lib) install.packages(lib, repos="https://cloud.r-project.org", quiet = TRUE, dependencies=TRUE)

library(jsonlite)
library(fastmap)

TopN <- 5

putTag <- function(i) {
  for(tag in jsonText$tags[[i]]) {
    m$set(key = tag, value = c(m$get(tag), i))
  }
}

getRelatedPosts <- function(idx) {
  tagged_post_count = rep(0, posts_length)
  
  for(tag in jsonText$tags[[idx]]) {
    for(index in m$get(tag)) {
      tagged_post_count[index] <- tagged_post_count[index] + 1
    }
  }
  tagged_post_count[idx] <- 0
  
  top5 <- vector(mode = "list", TopN)
  min_tag <- 0
  for (i in 1:TopN) {
    top5[[i]] <- c(postId = 0, sharedTag = 0)
  }
  for (i in 1:posts_length) {
    cnt <- tagged_post_count[[i]]
    if (cnt > min_tag) {
      upper_b <- TopN - 1
      while (cnt > top5[[upper_b]][["sharedTag"]]) {
        top5[[upper_b + 1]] <- top5[[upper_b]]
        upper_b <- upper_b - 1
        if (upper_b == 0) {
          break
        }
      }
      top5[[upper_b + 1]] <- c(postId = i, sharedTag = cnt)
      min_tag <- top5[[TopN]][["sharedTag"]]
    }
  }
  top_indices <- c()
  for (i in 1:TopN) {
    top_indices <- c(top_indices, top5[[i]][["postId"]])
  }
  
  #top_indices <- order(-tagged_post_count)[1:TopN]
  
  top_related <- jsonText[top_indices,]
  
  return(list("_id" = jsonText$`_id`[[idx]], "tags" = jsonText$tags[[idx]], "related" = top_related))
}

jsonText <- fromJSON("../posts.json")

start_time <- as.numeric(Sys.time())

m <- fastmap()
posts_length <- length(jsonText$tags)

sapply(1:posts_length, putTag)
all_related_posts <- lapply(1:posts_length, getRelatedPosts)

end_time <- as.numeric(Sys.time())

cat("Processing time (w/o IO): :", round(end_time - start_time, 1), "s\n")
write(toJSON(all_related_posts, pretty = TRUE, auto_unbox = TRUE), "related_posts_r.json")
