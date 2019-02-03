package(default_visibility = ["//visibility:public"])

load(":size.bzl", "size")
load("@rules_copy//:defs.bzl", "copy_to_source")


size(
    name = "foo_size",
    file = "foo.txt",
)

copy_to_source(
    name = "copy_here",
    dep = ":foo_size",
    dest = "rules_copy/examples/BUILD"
)


filegroup(
    name = "srcs",
    srcs = glob(["**"]),
)