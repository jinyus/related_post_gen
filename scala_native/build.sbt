scalaVersion := "3.3.1"

enablePlugins(ScalaNativePlugin)

libraryDependencies ++= Seq(
  "com.lihaoyi" %%% "upickle" % "3.1.0",
  "com.lihaoyi" %%% "os-lib" % "0.9.2"
)

// set to Debug for compilation details (Info is default)
logLevel := Level.Info

// import to add Scala Native options
import scala.scalanative.build._

// defaults set with common options shown
nativeConfig ~= { c =>
  c.withLTO(LTO.thin)
    .withMode(Mode.releaseFast)
    .withGC(GC.commix) // commix
}
