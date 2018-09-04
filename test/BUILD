load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_apple//apple:swift.bzl", "swift_library")

swift_library(
  name='swift_lib',
  srcs=['code.swift'],
  deps=[':dep'],
)

objc_library(
  name='dep',
  srcs=['dep.m', 'dep_private.h', 'deep/dep/dep_private_deep.h'],
  hdrs=['dep.h', 'deep/dep/dep_deep.h'],
  enable_modules=True,
  deps=[':trans_dep'],
)

objc_library(
  name='trans_dep',
  srcs=['trans.m', 'trans_private.h', 'deep/trans/trans_private_deep.h'],
  hdrs=['trans.h', 'deep/trans/trans_deep.h'],
  enable_modules = True,
)
