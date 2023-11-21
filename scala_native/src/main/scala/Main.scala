import upickle.*
import upickle.default.*
import os._
import scala.collection.mutable.*

case class Post(_id: String, title: String, tags: Array[String])
object Post {
  implicit val rw: ReadWriter[Post] = upickle.default.macroRW
}
case class RelatedPost(_id: String, tags: Array[String], related: Array[Post])
object RelatedPost {
  implicit val rw: ReadWriter[RelatedPost] = upickle.default.macroRW
}

val TopN = 5

@main
def main(): Unit =
  val jsonContent = os.read(os.pwd / os.up / "posts.json")

  val posts = upickle.default.read[Array[Post]](jsonContent)

  val start = System.currentTimeMillis()

  val postsCount = posts.length

  var range = 0 until postsCount

  val tagMapTemp = Map[String, Buffer[Int]]()

  for (i <- range) {
    val post = posts(i)
    for (tag <- post.tags) {
      tagMapTemp.getOrElseUpdate(tag, Buffer()) += i
    }
  }

  // for faster access
  val tagMap = tagMapTemp.map { case (tag, indexes) =>
    tag -> indexes.toArray
  }

  val taggedPostCountTemp = Array.fill(postsCount)(0)
  val topNTemp = Array.fill(TopN * 2)(0)

  val allRelatedPosts = Array.tabulate(postsCount) { i =>
    val post = posts(i)

    // faster than allocating new array and mapInplace
    val taggedPostCount = taggedPostCountTemp.clone()

    for (tag <- post.tags) {
      for (index <- tagMap(tag)) {
        taggedPostCount(index) += 1
      }
    }

    taggedPostCount(i) = 0

    val top5 = topNTemp.clone()
    var minTags = 0

    for (j <- range) {
      val count = taggedPostCount(j)
      if (count > minTags) {
        var upperBound = (TopN - 2) * 2

        while (upperBound >= 0 && count > top5(upperBound)) {
          top5(upperBound + 2) = top5(upperBound)
          top5(upperBound + 3) = top5(upperBound + 1)
          upperBound -= 2
        }

        val insertPos = upperBound + 2
        top5(insertPos) = count
        top5(insertPos + 1) = j

        minTags = top5(TopN * 2 - 2)
      }
    }

    val topPosts = Array.tabulate(TopN)(i => posts(top5(i * 2 + 1)))

    RelatedPost(post._id, post.tags, topPosts)
  }

  val end = System.currentTimeMillis()
  println(s"Processing time (w/o IO): ${end - start}ms")

  val relatedJson = upickle.default.write(allRelatedPosts)
  os.write.over(os.pwd / os.up / "related_posts_scala.json", relatedJson)
