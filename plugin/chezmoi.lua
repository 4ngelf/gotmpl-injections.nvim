if vim.g.loaded_chezmoi_nvim then
    return
end
vim.g.loaded_chezmoi_nvim = true

local function try_inject_language(_, _, bufnr, _, metadata)
    local abspath = vim.api.nvim_buf_get_name(bufnr)
    local basename, _ = vim.fs.basename(abspath):gsub("%.tmpl$", "")
    local injected_lang

    -- We don't want gotmpl inside another gotmpl
    if basename ~= ".chezmoiignore" and basename ~= ".chezmoiremove" then
        injected_lang, _ = vim.filetype.match { buf = bufnr, filename = basename }
    end

    if injected_lang then
        metadata["injection.language"] = injected_lang
        metadata["injection.combined"] = true
    end
end

vim.treesitter.query.add_directive("try-inject-language!", try_inject_language, {})
