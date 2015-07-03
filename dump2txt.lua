function on_pause_change(name, value)
if value == true then
file = io.open("np.txt", "w+")
file:write(mp.get_property("media-title"), "|", mp.get_property("file-format"), "|", mp.get_property("file-size"), "|", mp.get_property("percent-pos"), "|", mp.get_property("length"), "|", mp.get_property("time-pos"))
file:close()
end
end
mp.observe_property("pause", "bool", on_pause_change)
 
--local msg = require 'mp.msg'
--local utils = require 'mp.utils'
function dump_info()
file = io.open("np.txt", "w+")
file:write(mp.get_property("media-title"), "|", mp.get_property("file-format"), "|", mp.get_property("file-size"), "|", mp.get_property("percent-pos"), "|", mp.get_property("length"), "|", mp.get_property("time-pos"))
file:close()
end
mp.add_key_binding("n", "dump_2_txt", dump_info)
--key binding letter n on keyboard
