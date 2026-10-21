scalaVersion := "3.3.8"

enablePlugins(ScalaNativePlugin)

libraryDependencies ++= Seq(
  "com.lihaoyi" %%% "upickle" % "4.4.3",
  "com.lihaoyi" %%% "os-lib" % "0.11.8"
)

// set to Debug for compilation details (Info is default)
logLevel := Level.Info

// import to add Scala Native options
import scala.scalanative.build._

// Scala Native 0.5 names the executable after the project; keep the name the
// benchmark harness (run.sh) expects.
Compile / moduleName := "scala_native-out"

// defaults set with common options shown
nativeConfig ~= { c =>
  c.withLTO(LTO.thin)
    .withMode(Mode.releaseFull)
    .withGC(GC.commix) // concurrent immix
}
