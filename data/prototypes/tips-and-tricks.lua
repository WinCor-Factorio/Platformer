local modName = "platformer-"
local category = modName .. "category"
local order = "a-a-"

data:extend({
    {
        type = "tips-and-tricks-item-category",
        name = category,
        order = order .. "a"
    },
    {
        type= "tips-and-tricks-item",
        category = category,
        name = modName .. "intro",
        indent = 0,
        order = order .. "b",
        starting_status = "unlocked",
        tag = "[entity=space-platform-hub]",
        trigger = {
            type = "time-elapsed",
            ticks = 60 * 5
        },
        simulation = {
            init =
            [[
                player = game.simulation.create_test_player{name = "Spaceman"}
                storage.platform = player.force.create_space_platform({name="platform", planet="nauvis", starter_pack="space-platform-starter-pack"})
                storage.hub = storage.platform.apply_starter_pack()
                player.teleport({0, 0}, game.surfaces[2])
                game.simulation.camera_player = player
                game.simulation.camera_position = {0, 0}
                game.simulation.camera_zoom = 0.8
                game.simulation.hide_cursor = true
                game.simulation.camera_alt_info = true

                for _, tech in pairs(game.forces["player"].technologies) do
                    tech.researched = true
                end

                game.surfaces[2].create_entities_from_blueprint_string
                {
                  string = "0eNrFne1u2zgWhu9Fv+0FvykG2CtZFIHiKq0wtuyR7e4URe59ZDuxk4nY8OiZor92dmK9oiie5+URyTM/qof1sd0NXX+o7n5U3Wrb76u7//2o9t2Xvlmf/l3fbNrqrtrvmlW73K2bw+N22Cy/Hh+qp0XV9Z/bv6o7/bSYumS7boblrunb9avfmqdPi6rtD92hay/3Ov+f7/f9cfPQDqPY4kWg2R/aYdt9Xq6263W7OmyHalHttvvx0m1/utEot4z/8Yvq++UfxrsM7f64Piy7/tsoux3GP/TH9XpRrb4e+z+Wj936cLrHeNeXpl/vtmkPzXrdrZa3256uqZ4+nZ7uH40018sOQ9Pvd9vhsHxo14eJBrq3DfzcDeOjnP/uJoTtVbjr9+1wau17SZ+V1GZC05U31oga68uFrUg4lPSClvVCvGquhuP+65SkuuiF55G06nannw/tY9e3n5cTA+Qk1PVfqpdf3/95bNbjTcer+jFMmtPAf9eQuuDhrs8W3nXXorqM4r1sGC+qd20bo2K72TVDc4qsu+q/1Sk0j/v2/nqDw3BsJ54gFb93m32OyXekVbGyESrrgl53+V6fkjQiUoXfAip9A8prHv+Eo2MnPE0JuUKhayf6jJAvCW71UXOCfAz6orca5cK5NtaSMefLxnF57LnXzftY2dxib908/GT8Zp7W6HI3uGqZfzatnlIWuK3PKk8/tJ0hbYsa7UqGuctqfsT5btj2y+3Q/qtgN14+umxmOAS5lMlI3UKyPdF1GNn3eBz6cUY60aXpRU1l1Eqi8oZDXfZibkN0td3t2uHffzW3wD+Otxy+DNvxfz8MsHfNH5/+8H13efrd8TA1QbFKNHS1dOj+oh6yekYs6+lBYk1BF/hsD0yyxlp5RGTGsHVyqdyT+p9jP350fXmcL/WLY+oSgtooUDY55elXUc+QVkWNTkWpi85pTk1JnCqcevlXqlM6twCZSOcz2ZA6z1X/PLb7wy0Cx2z/0uC3EX66542HzfiLb+PNHpv1vj0F8VVm2G7uH46Pj6+i+frHTbffjynV/elTxPin813uN814327UyQa/kwSsLup1ebhmQsTJozX3Bv2rlGPfbh7WY1ctN81qzELbpc5Hr36b0jbHw3bs0/F3y/2qa/vTWGhWf8jyWFeSpSdRl5dHvDCCyuNdK5FwkgtnRokvcd08jCY55/UMOBdNb72ZoVw02/dFn8CuHWGKPlQ5yQzy+qYy81FflMHW2Qb+ngmkFxh1/KADolwqkyb4Wp412rKxP2vCbPLz5e3xkJkwByUGfKY7ghYrZd5RkBhiWbIcrBx2ued0cqncg/oZc7miT0EhzFB2RcpxBj3LlCUzW53rjSkuhyRQVjnl6U/zaoa0K2l01DO6o6ijY0l8XbFykfwp9n/JB51oJR87flsrS78tvw7fKR3p9PjtML1Oj88P+aUdG/L/r+25IYJpcZR/mS4byvIP04XRV4sXXYqAEUtS4Sw2J5tay402M1RqLbDHsn6sjbhxmU/ptRU0rohWtZuZOLpfkDjWXpA4lj1ekE8ncgMjyqVyr7Euw9qbucOUTpphYrEkRJOaoRyKlLUk46pfSU+JGYmY/0CsJLiUqBedmMxlfejFYC7aXZGCWLesvXKHKuvfWgzWmHn3SQDWor7USm5JmYGplcSTSjdUmJngj78A/FpZAfkL+39GJhlzL8DLtbIvMwjhn21UnMHouiSutJqTLKay1zInWyyT1kry+a3OdKsWZIZJ1j7Bp9Fapmzl390KlZ38M1yhspd8hnNZ7Y+XrbUOks2T2YER5cvIhV1RC9PcbBNFnzbVx32a/7SpTbm/yeAj2C+kcsLT2/KMWDhlOlqwPUiGRyOfMhY+vBcLF7ZYPmksFI7iCVQuLky5n8ki18h33ZUJ2/LokgFdsBlGxnNbHl0y2xRsj5G5pp0xQ8yNMDtjhniGy6eRtd36+cTDu/nFZYfNiMnM/ozHE9/Ps+8zo9/NIuD1EV4f4PUeXu/g9RZeb+D1ml2v2OXw7vDhYd/DVw9HHhz4NO6euREhNyLkRoTciJAbEXIjQm5EyI0IuREZNyLjRmTciIwbkXEjMm5Exo3IuBEhNwLkRoDcCJAbAXIjQG4EyI0AuREgNwLjRmDcCIwbgXEjMG4Exo3AuBEYNwLkhofc8JAbHnLDQ254yA0PueEhNzzkhmfc8IwbnnHDM254xg3PuOEZNzzjhofccJAbDnLDQW44yA0HueEgNxzkhoPccIwbjnHDMW44xg3HuOEYNxzjhmPcmHs5DXv9PHAs5JaF3LKQWxZyy0JuWcgtC7llIbcs5JZl3LKMW5ZxyzJuWcYty7hlGbcs45Zl3Jp7OaWOfh44hnLTQG4ayE0DuWkgNw3kpoHcNJCbBnLTQG4axk3DuGkYNw3jpmHcNIybhnHTMG4axk3DuDl72FDq6eeRoym4NQW3huDWENwagltDcGsIbg3BrSG4NQS3huDWDNyagVszcGsGbs3ArRm4NQO3ZuDWDNyagVtDcM++HmPXXivlEONQ0DcUtA3FXEMx01DMMxSzDMUcQzHDUMwvFLMLxdxCIbNQyCsUsgqFnEIho1DIJxSyCYVcQiGTUMgjFLMIxRxi9uU0zi5DhvqThv5E8xqa1sCsBiY1MKeBKQ3MaGBCA/MZmM7AbIYlMyyXYakMy2RYIsPyGJbGsCyGJTEsh4EpDMxgNPOn2ZdTe7mMOAPtjX63M9De6HILXG2Biy1wrQUutcCVFrjQAtdZ4DILXGVhiyxsjYUtsbAVFrbAwtZX2PIKW11hiytsbQUurRhmb4bZm2H2ZqC9WWhvFtob3U5gob3BTVhwDxbcggV3YMENWHD/Fdx+BXdfwc1XbO8V23rFdl6xjVds3xXbdsV2XbFNV2zPFdtyZZm9WWZvltmbZfZmob05aG8O2puD9kY3GTtmb/BoBDwZAQ9GwHMR8FgEPBUBD0XAMxHsSAQ7EcEORLDzEOw4BDsNwQ5DsLMQ7CiEQ/bmmL05Zm+O2Ztj9uagvXlobx7am4f25qG9waN/8MQwPDAMzwvD48LwtDA8LAzPCsOjwuykMDsozM4Js2PC7JQwOyTMzgizI8Ie2ZtH9uaZvXlmb57Zm2f25qG9BWhvAdpbgPYWoL3BihiwkA6sowPL6MAqOrCIDqyhA0vowAo6rIAOq5/Dyuew6jmseA6rncNK57DKOQHZW0D2Fpi9BWZvgdlbYPYWoL1FaG8R2luE9hahvcFCcbC+JCwvCatLwuKSsLYkLC0JK0vCwpKsriQrK8mqSrKikqymJCspySpKsoKSEdlbRPYWmb1FZm+R2Vtk9hahvdXQ3mpobzW0txraG6yfDMuuw6rrsOg6rLkOS67Diuuw4Dqst87KrbNq66zYOqu1zkqts0rrrNA6q7NeI3urkb3VzN5qZm81s7ea2Ru1pwTtKUF7StCeErOnxOwpMXtKzJ4Ss6fE7Ckxe0rMnhKzp4TsKSF7SsieErKnhOwpIXtKyJ4SsqeE7Ckhe0rMnhKzp8TsqezyT4uqO7Sb8UcP62O7G7r+9N9s+tYO+7OgDya5lLy3dbTJPj39DYfa5rY=",
                  position = {0, 0}
                }
              ]],
              init_update_count = 60 * 40
        }
    },
    {
        type= "tips-and-tricks-item",
        category = category,
        name = modName .. "surface-condition",
        indent = 1,
        order = order .. "c",
        starting_status = "unlocked",
        trigger = {
            type = "time-elapsed",
            ticks = 60 * 5
        }
    }
})