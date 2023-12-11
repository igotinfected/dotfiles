local utils = {}

function utils.os()
  local os = vim.loop.os_uname().sysname
  if os == "Darwin" then
    return "macos"
  elseif os == "Linux" then
    return "linux"
  elseif os == "Windows" then
    return "windows"
  end
end

return utils
