
def expand_locations(ctx, values, targets = []):
    print("Expanding Location Placeholders...")
    print("Values: {}".format([value for value in values]))
    print("Expansion: {}".format([ctx.expand_location(value, targets) for value in values]))
    return [ctx.expand_location(value, targets) for value in values]

def _arule_impl(ctx):
    copts = expand_locations(ctx, ctx.attr.copts, ctx.attr.inputs)
    ctx.actions.run(
        arguments = copts + ["-o", ctx.outputs.out.path],
        executable = "cc",
        outputs = [ctx.outputs.out],
    )

arule = rule(
    implementation = _arule_impl,
    attrs = {
        "inputs": attr.label_list(allow_files = True),
        "copts": attr.string_list(),
        "out": attr.output(mandatory = True),
    }
)
