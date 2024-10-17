if (vim.loop.os_uname().sysname == "win32" or vim.loop.os_uname().sysname == "win64") then
    vim.g.python3_host_prog = "C:/Users/esarver1/.pyenv/pyenv-win/versions/3.10.9/python3"
end

require("esarver")

