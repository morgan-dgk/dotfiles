return {
  "rmagatti/goto-preview",
  opts = {
    width = 120,         -- Width of the floating window
    height = 25,         -- Height of the floating window
    debug = false,       -- Print debug information
    opacity = nil,       -- 0-100 opacity level of the floating window where 100 is fully transparent.
    post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
  }
}
