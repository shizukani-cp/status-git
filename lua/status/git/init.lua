local M = {}

function M.branch()
    local branch = vim.b.gitsigns_head or vim.fn.FugitiveHead and vim.fn.FugitiveHead() or ""
    if branch == "" then
        return ""
    end
    return " " .. branch
end

function M.diff()
    local dict = vim.b.gitsigns_status_dict
    if not dict then
        return ""
    end

    local res = {}
    if (dict.added or 0) > 0 then
        table.insert(res, " " .. dict.added)
    end
    if (dict.changed or 0) > 0 then
        table.insert(res, " " .. dict.changed)
    end
    if (dict.removed or 0) > 0 then
        table.insert(res, " " .. dict.removed)
    end

    return #res > 0 and table.concat(res, " ") or ""
end

return M
