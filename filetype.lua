vim.filetype.add {
    extension = {
        tmpl = "gotmpl",
    },
    filename = {
        [".chezmoiignore"] = "gotmpl",
        [".chezmoiremove"] = "gotmpl",
        [".chezmoiexternal.json"] = "gotmpl",
        [".chezmoiexternal.toml"] = "gotmpl",
        [".chezmoiexternal.yaml"] = "gotmpl",
    },
    pattern = {
        [".*/%.chezmoiexternals/.*"] = "gotmpl",
        [".*/%.chezmoitemplates/.*"] = "gotmpl",
    },
}
