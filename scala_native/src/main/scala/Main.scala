import upickle.*
import upickle.default.*
import os._
import scala.collection.mutable.*

case class Post(_id: String, title: String, tags: Array[String])
object Post {
  implicit val rw: ReadWriter[Post] = upickle.default.macroRW
}
case class RelatedPost(
    _id: String,
    tags: Array[String],
    related: ArrayBuffer[Post]
)
object RelatedPost {
  implicit val rw: ReadWriter[RelatedPost] = upickle.default.macroRW
}

object Main {
  val TopN = 5

  def main(args: Array[String]): Unit =
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
    val topNTemp = ArrayBuffer.fill(TopN)((0, 0))

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

      // Custom priority queue logic
      for (idx <- range) {
        val count = taggedPostCount(idx)
        if (count > minTags) {
          var pos = 3

          while (pos >= 0 && top5(pos)._2 < count) {
            pos -= 1
          }
          pos += 1

          if (pos <= 4) {
            top5.insert(
              pos,
              (idx, count)
            )
            top5.remove(TopN)
            minTags = top5.last._2
          }
        }
      }

      val topPosts = top5.map { case (idx, _) => posts(idx) }

      RelatedPost(post._id, post.tags, topPosts)
    }

    val end = System.currentTimeMillis()
    println(s"Processing time (w/o IO): ${end - start}ms")

    val relatedJson = upickle.default.write(allRelatedPosts)
    os.write.over(os.pwd / os.up / "related_posts_scala.json", relatedJson)
}
