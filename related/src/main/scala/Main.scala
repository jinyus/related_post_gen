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

object Main {
  val TopN = 5

  def main(args: Array[String]): Unit =
    val jsonContent = os.read(os.pwd / os.up / "posts.json")

    val posts = upickle.default.read[Array[Post]](jsonContent)

    val start = System.currentTimeMillis()

    val postsWithIndex = posts.zipWithIndex

    val postsCount = posts.length

    val tagMap = Map[String, Array[Int]]()

    postsWithIndex.foreach { case (post, i) =>
      post.tags.foreach { tag =>
        tagMap.get(tag) match {
          case Some(indexes) => tagMap(tag) = indexes :+ i
          case None          => tagMap(tag) = Array(i)
        }
      }
    }

    val allRelatedPosts = postsWithIndex.map { case (post, i) =>
      val taggedPostCount = Array.fill(postsCount)(0)

      post.tags.foreach { tag =>
        tagMap(tag).foreach { index =>
          taggedPostCount(index) += 1
        }
      }

      taggedPostCount(i) = 0

      val topIndexes = taggedPostCount.zipWithIndex
        .filter(_._1 > 0)
        .sortInPlaceBy(-_._1)
        .take(TopN)
        .map(_._2)

      val topPosts = topIndexes.map(posts)

      RelatedPost(post._id, post.tags, topPosts.toArray)
    }

    val end = System.currentTimeMillis()
    println(s"Processing time (w/o IO): ${end - start}ms")

    val relatedJson = upickle.default.write(allRelatedPosts)
    os.write(os.pwd / os.up / "related_posts_scala.json", relatedJson)
}
