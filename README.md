# status-git
This plugin provides Git-related component sources for [status.nvim](https://github.com/shizukani-cp/status.nvim).
It acts as a wrapper for popular Git plugins to provide seamless integrationwith your statusline.

| Source | Description | Dependencies |
|:---|:---|:---|
| `branch()` | Returns current branch name with icon | `gitsigns.nvim` or `vim-fugitive` |
| `diff()` | Returns git diff status (added, changed, removed) | `gitsigns.nvim` |

## Usage
```lua
local status = require("status.core")
local git = require("status.git")

status.setup({
    components = {
        left = {
            git.branch,
            " ",
            git.diff,
        },
    }
})
```
