git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    tag = "0.6.0",
)

#local_repository(
#    name = "build_bazel_rules_apple",
#    path = "/Users/obonilla/o/rules_apple",
#)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)
apple_rules_dependencies()
