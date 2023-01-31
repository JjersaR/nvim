local download_packer = function()
  if vim.fn.input "Download Lazy? (y for yes)" ~= "y" then
    return
  end

  local directory = string.format("%s", vim.fn.stdpath "data")

  vim.fn.mkdir(directory, "p")

  local out = vim.fn.system(
    string.format("git clone %s %s", "https://github.com/folke/lazy.nvim.git --branch=stable", directory .. "/lazy.nvim")
  )

  print(out)
  print "Downloading Lazy.nvim..."
  print "( You'll need to restart now )"
end

return function()
  if not pcall(require, "lazy") then
    download_packer()

    return true
  end

  return false
end
