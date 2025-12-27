data remove storage mcm:maps list
data remove storage mcm:maps name_idx_map

# These are the maps available currently, using their backend names for macro usage later
# TODO encode the map markers, bounds, weather, and time for other maps
data merge storage mcm:maps {list:[{ \
              name:"random", \
              active:0, \
              model:"posters/random", \
              forceload:"", \
              credits:"", \
              loading_point:"0 0 0", \
              bounds:"", \
              time:0, \
              weather:"" \
       }, \
       { \
              name:"library", \
              active:0, \
              model:"posters/library", \
              forceload:[{coords:"1023 960 912 1039"},{coords:"1023 960 1108 1039"}], \
              credits:"{translate:\"mcm.map.list.1\", color:\"dark_green\", with: [\"_topaz\"]}", \
              loading_point:"1108 0 1039", \
              time:0, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"library2", \
              active:1, \
              model:"posters/library", \
              forceload:[{coords:"1028 1040 890 1155"}], \
              credits:"{translate:\"mcm.map.list.1\", color:\"dark_green\", with: [\"_topaz\"]}", \
              loading_point:"890 0 1155", \
              time:6000, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"airship", \
              active:1, \
              model:"posters/airship", \
              scrap_distance: 3, \
              forceload:[{coords:"-555 -56 -744 77"}], \
              credits:"{translate:\"mcm.map.list.2\", color:\"dark_green\", with: [\"_topaz\", \"Brownie1111\"]}", \
              loading_point:"-744 0 77", \
              time:6000, \
              weather:"clear", \
              oob_message:{ \
                     msg:"mcm.airship.fell", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"vineyard", \
              active:0, \
              model:"posters/vineyard", \
              forceload:[{coords:"2111 2095 1937 1911"}], \
              credits:"{translate:\"mcm.map.list.2\", color:\"dark_green\", with: [\"_topaz\", \"Brownie1111\"]}", \
              loading_point:"1937 0 1911", \
              time:12500, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"vineyard2", \
              active:1, \
              model:"posters/vineyard", \
              forceload:[{coords:"1675 2155 1780 2020"}], \
              credits:"{translate:\"mcm.map.list.2\", color:\"dark_green\", with: [\"_topaz\", \"Brownie1111\"]}", \
              loading_point:"1780 0 2020", \
              time:12500, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"launchpad", \
              active:1, \
              model:"posters/launchpad", \
              forceload:[{coords:"-860 -1100 -1170 -1280"},{coords:"-860 -1100 -1128 -997"},{coords:"-961 -881 -1136 -976"}], \
              credits:"{translate:\"mcm.map.list.1\", color:\"dark_green\", with: [\"BlockyM_\"]}", \
              loading_point:"-1136 0 -976", \
              time:9000, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"cyberpunk", \
              active:1, \
              model:"posters/cyberpunk", \
              forceload:[{coords:"-2178 1968 -1969 2135"}], \
              credits:"{translate:\"mcm.map.list.2\", color:\"dark_green\", with: [\"TacoSquad\", \"TheLastOreo\"]}", \
              loading_point:"-1969 0 2135", \
              time:18000, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"riverboat", \
              active:1, \
              model:"posters/riverboat", \
              forceload:[{coords:"2130 -2015 2000 -1975"}], \
              credits:"{translate:\"mcm.map.list.2\", color:\"dark_green\", with: [\"TheLastOreo\", \"TacoSquad\"]}", \
              loading_point:"2000 0 -1975", \
              time:6000, \
              weather:"clear", \
              oob_message:{ \
                     msg:"mcm.riverboat.shark", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"cabin", \
              active:1, \
              model:"posters/cabin", \
              forceload:[{coords:"-1938 3000 -2030 3048"}], \
              credits:"{translate:\"mcm.map.list.2\", color:\"dark_green\", with: [\"TacoSquad\", \"TheLastOreo\"]}", \
              loading_point:"-2030 0 3048", \
              time:12500, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"train", \
              active:1, \
              model:"posters/train", \
              forceload:[{coords:"2000 3040 1585 2945"}], \
              credits:"{translate:\"mcm.map.list.2\", color:\"dark_green\", with: [\"TheLastOreo\", \"TacoSquad\"]}", \
              loading_point:"1585 0 2945", \
              time:6000, \
              weather:"clear", \
              oob_message:{ \
                     msg:"mcm.train.fell.off", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"industry", \
              active:1, \
              model:"posters/industry", \
              forceload:[{coords:"-1926 -2938 -2067 -3063"}], \
              credits:"{translate:\"mcm.map.list.1\", color:\"dark_green\", with: [\"SuperCoxylac\"]}", \
              loading_point:"-2067 0 -3063", \
              time:12500, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"canyon", \
              active:1, \
              model:"posters/canyon", \
              forceload:[{coords:"2885 2899 3084 3085"}], \
              credits:"{translate:\"mcm.map.list.1\", color:\"dark_green\", with: [\"_topaz\"]}", \
              loading_point:"3084 0 3085", \
              time:0, \
              weather:"clear", \
              oob_message:{ \
                     msg:"mcm.canyon.fell", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"gumdrop",\
              active:1, \
              model:"posters/gumdrop", \
              forceload:[{coords:"994 -3072 1194 -2795"},{coords:"832 -3152 1055 -2929"}], \
              credits:"{translate:\"mcm.map.list.2\", color:\"dark_green\", with: [\"Kurusa\", \"Brownie1111\"]}", \
              loading_point:"1055 0 -2929", \
              time:13000, \
              weather:"clear", \
              oob_message:{ \
                     msg:"", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       }, \
       { \
              name:"sculk", \
              active:1, \
              model:"posters/sculk", \
              forceload:[{coords:"2920 870 3090 1065"}], \
              credits:"{translate:\"mcm.map.list.1\", color:\"dark_green\", with: [\"Brownie1111\"]}", \
              loading_point:"3090 0 1065", \
              time:18000, \
              weather:"clear", \
              oob_message:{ \
                     msg:"mcm.sculk.voidout", \
                     color:"dark_purple", \
                     bold:false, \
                     italic:true, \
                     arg1: "" \
              } \
       } \
]}

scoreboard players set $count vars 0
data modify storage mcm:maps temp.list set from storage mcm:maps list
data modify storage mcm:maps temp.list[0] merge value {count:0}
function mcm:util/loops/for_each {iter:"data storage mcm:maps list[]", \
                                  fn:"mcm:init/map_idx_mapping", \
                                  args:"with storage mcm:maps temp.list[0]", \
                                  update:"function mcm:util/no_op"}
data remove storage mcm:maps temp
scoreboard players reset $count vars
