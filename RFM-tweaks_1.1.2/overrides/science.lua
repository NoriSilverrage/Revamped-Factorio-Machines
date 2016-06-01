local resources = {
    "sct-t1-ironcore",
    "sct-t1-magnet-coils",
    "sct-t2-reaction-nodes",
    "sct-t2-instruments",
    "sct-t2-microcircuits",
    "sct-t2-micro-wafer",
    "sct-t2-wafer-stamp",
    "sct-t3-flash-fuel",
    "sct-t3-laser-foci",
    "sct-t3-laser-emitter",
    "sct-t3-femto-lasers",
    "sct-t3-atomic-sensors",
    "sct-t4-bioprocessor",
    "sct-t4-overclocker"
}
if bobmods.lib.add_productivity_limitations then
  bobmods.lib.add_productivity_limitations(resources)
end
