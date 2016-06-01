data:extend({ 
 {
    type = "item",
    name = "reinforced-wall",
    icon = modname.."/graphics/icons/reinforced-wall.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[wall]-a[reinforced-wall]",
    place_result = "reinforced-wall",
	enabled = nori_test_state,
    stack_size = 100
  },
  
  {
    type = "item",
    name = "reinforced-gate",
    icon = modname.."/graphics/icons/reinforced-gate.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[wall]-b[reinforced-gate]",
    place_result = "reinforced-gate",
	enabled = nori_test_state,
    stack_size = 50
  },

  
  {
    type = "recipe",
    name = "reinforced-gate",
    energy_required = 2,
    enabled = nori_test_state,
    ingredients =
    {
       {"gate", 2},
       {"concrete", 10},
       {"steel-plate", 1}
    },
    result = "reinforced-gate",
    result_count = 2
  },
  
  {
    type = "recipe",
    name = "reinforced-wall",
    energy_required = 2,
    enabled = nori_test_state,
    ingredients =
    {
       {"stone-wall", 2},
       {"concrete", 10},
       {"steel-plate", 1}
    },
    result = "reinforced-wall",
    result_count = 2
  },


})


-- Reinforced Stone Wall **************************************************************************
local wall2 = table.deepcopy(data.raw["wall"]["stone-wall"])
wall2.name = "reinforced-wall"
wall2.max_health = 700

wall2.repair_speed_modifier = 3
    
wall2.resistances =
    {
          {
            type = "physical",
            decrease = 5,
            percent = 50
          },
          {
            type = "impact",
            decrease = 50,
            percent = 60
          },
          {
            type = "explosion",
            decrease = 10,
            percent = 90
          },
          {
            type = "fire",
            percent = 100
          },
          {
            type = "laser",
            percent = 100
          },
          {
            type = "poison",
            decrease = 10,
            percent = 25
          },
          {
            type = "acid",
            decrease = 10,
            percent = 25
          },
    }
wall2.minable.result = "reinforced-wall"
wall2.fast_replaceable_group = "wall"
wall2.pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/stone-wall/wall-single.png",
            priority = "extra-high",
            width = 22,
            height = 42,
            shift = {0, -0.15625},
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 47,
            height = 32,
            shift = {0.359375, 0.5},
            draw_as_shadow = true,
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      },
      straight_vertical =
      {
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-1.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-2.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-3.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            }
          }
        }
      },
      straight_horizontal =
      {
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-1.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-2.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-3.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
            }
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/stone-wall/wall-corner-right-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-corner-right-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 61,
            shift = {0.484375, 0.640625},
            draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/stone-wall/wall-corner-left-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-corner-left-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 60,
            shift = {0.328125, 0.640625},
            draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/stone-wall/wall-t-down.png",
            priority = "extra-high",
            width = 32,
            height = 42,
            shift = {0, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-t-down-shadow.png",
            priority = "extra-high",
            width = 71,
            height = 61,
            shift = {0.546875, 0.640625},
            draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/stone-wall/wall-ending-right.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.484375, 0.5},
            draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/stone-wall/wall-ending-left.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625},
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.328125, 0.5},
            draw_as_shadow = true,
              tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      }
    }


data:extend({ wall2 })

-- Reinforced Stone Gate
local gate2 = table.deepcopy(data.raw["gate"]["gate"])
gate2.name = "reinforced-gate"
gate2.max_health = 700

gate2.vertical_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-vertical.png",
          line_length = 8,
          width = 21,
          height = 60,
          frame_count = 16,
          shift = {0.015625, -0.40625},
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-vertical-shadow.png",
          line_length = 8,
          width = 41,
          height = 50,
          frame_count = 16,
          shift = {0.328125, 0.3},
          draw_as_shadow = true,
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        }
      }
    }
gate2.horizontal_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-horizontal.png",
          line_length = 8,
          width = 32,
          height = 36,
          frame_count = 16,
          shift = {0, -0.21875},
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-horizontal-shadow.png",
          line_length = 8,
          width = 62,
          height = 28,
          frame_count = 16,
          shift = {0.4375, 0.46875},
          draw_as_shadow = true,
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        }
      }
    }
gate2.vertical_base =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-base-vertical.png",
          width = 32,
          height = 32,
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-base-vertical-mask.png",
          width = 32,
          height = 32,
          apply_runtime_tint = true,
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        }
      }
    }
gate2.horizontal_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-left.png",
          line_length = 8,
          width = 32,
          height = 47,
          frame_count = 16,
          shift = {0, -0.140625 + 0.125},
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png",
          line_length = 8,
          width = 73,
          height = 27,
          frame_count = 16,
          shift = {0.078125, 0.171875 + 0.125},
          draw_as_shadow = true,
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        }
      }
    }
gate2.horizontal_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-right.png",
          line_length = 8,
          width = 32,
          height = 43,
          frame_count = 16,
          shift = {0, -0.203125 + 0.125},
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png",
          line_length = 8,
          width = 73,
          height = 28,
          frame_count = 16,
          shift = {0.60938, 0.2875 + 0.125},
          draw_as_shadow = true,
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        }
      }
    }
gate2.vertical_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-left.png",
          line_length = 8,
          width = 22,
          height = 54,
          frame_count = 16,
          shift = {0, -0.46875},
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-left.png",
          line_length = 8,
          width = 47,
          height = 48,
          frame_count = 16,
          shift = {0.27, -0.16125 + 0.5},
          draw_as_shadow = true,
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        }
      }
    }
gate2.vertical_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-right.png",
          line_length = 8,
          width = 22,
          height = 55,
          frame_count = 16,
          shift = {0, -0.453125},
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-right.png",
          line_length = 8,
          width = 47,
          height = 47,
          frame_count = 16,
          shift = {0.27, 0.803125 - 0.5},
          draw_as_shadow = true,
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        }
      }
    }
gate2.vertical_rail_base =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-vertical.png",
      line_length = 8,
      width = 64,
      height = 64,
      frame_count = 16,
      shift = {0, 0},
      tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
    }
gate2.horizontal_rail_base =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-horizontal.png",
      line_length = 8,
      width = 64,
      height = 45,
      frame_count = 16,
      shift = {0, -0.015625 + 0.125},
      tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
    }
gate2.vertical_rail_base_mask =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-mask-vertical.png",
      width = 63,
      height = 39,
      shift = {0.015625, -0.015625},
      apply_runtime_tint = true,
      tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
    }
gate2.horizontal_rail_base_mask =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-mask-horizontal.png",
      width = 53,
      height = 45,
      shift = {0.015625, -0.015625 + 0.125},
      apply_runtime_tint = true,
      tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
    }
gate2.horizontal_base =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-base-horizontal.png",
          width = 32,
          height = 23,
          shift = {0, 0.125},
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-base-horizontal-mask.png",
          width = 32,
          height = 23,
          apply_runtime_tint = true,
          shift = {0, 0.125},
          tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
        }
      }
    }
gate2.wall_patch =
    {
      north =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/gate/wall-patch-north.png",
            width = 22,
            height = 35,
            shift = {0, -0.62},
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/gate/wall-patch-north-shadow.png",
            width = 46,
            height = 31,
            shift = {0.3, 0.20},
            draw_as_shadow = true,
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/gate/wall-patch-east.png",
            width = 11,
            height = 40,
            shift = {0.328125, -0.109375},
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/gate/wall-patch-east-shadow.png",
            width = 38,
            height = 32,
            shift = {0.8125, 0.46875},
            draw_as_shadow = true,
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/gate/wall-patch-south.png",
            width = 22,
            height = 40,
            shift = {0, -0.125},
           tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/gate/wall-patch-south-shadow.png",
            width = 48,
            height = 25,
            shift = {0.3, 0.95},
            draw_as_shadow = true,
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/gate/wall-patch-west.png",
            width = 11,
            height = 40,
            shift = {-0.328125, -0.109375},
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          },
          {
            filename = "__base__/graphics/entity/gate/wall-patch-west-shadow.png",
            width = 46,
            height = 32,
            shift = {0.1875, 0.46875},
            draw_as_shadow = true,
            tint = {r = 0.533, g = 0.357, b = 0.686, a = 0.5}
          }
        }
      }
    }
   
   
   
gate2.resistances =
    {
          {
            type = "physical",
            decrease = 5,
            percent = 50
          },
          {
            type = "impact",
            decrease = 50,
            percent = 60
          },
          {
            type = "explosion",
            decrease = 10,
            percent = 90
          },
          {
            type = "fire",
            percent = 100
          },
          {
            type = "laser",
            percent = 100
          },
          {
            type = "poison",
            decrease = 10,
            percent = 25
          },
          {
            type = "acid",
            decrease = 10,
            percent = 25
          },
    }
gate2.minable.result = "reinforced-gate"
gate2.fast_replaceable_group = "gate"
data:extend({ gate2 })




table.insert(data.raw["technology"]["military-3"].effects,{type="unlock-recipe",recipe="reinforced-wall"})
table.insert(data.raw["technology"]["military-3"].effects,{type="unlock-recipe",recipe="reinforced-gate"})
