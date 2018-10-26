load(":arule.bzl", "arule")

path_no_spaces = "adir/foo.c"
path_with_spaces = "a dir/foo.c"

arule(
    name = "no_spaces",
    inputs = [path_no_spaces],
    copts = ["-c", "$(location " + path_no_spaces + ")"],
    out = "adir/foo.o",
)

arule(
    name = "spaces",
    inputs = [path_with_spaces],
    copts = ["-c", "$(location " + path_with_spaces + ")"],
    out = "a dir/foo.o",
)

