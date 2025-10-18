# Neovim theme
Simple light weight theme based on the 12-bit rainbow colorscheme
<img width="1873" height="1033" alt="image" src="https://github.com/user-attachments/assets/f7f72c62-a626-41b4-98ce-e74e44d0f0b4" />
<img width="1776" height="941" alt="image" src="https://github.com/user-attachments/assets/88d9647c-e671-4af3-820c-31c09d51dfdf" />
## Import using lazy 
```lua
return {
  {
    "0Risotto/rainbow12",
    lazy = false,
    priority = 1000,
    config = function() vim.cmd "colorscheme rainbow12" end,
  },
}
```
