require("mason-conform").setup({
    -- List of formatters to ignore during install
    ignore_install = {
        "gofumpt",
        "goimports-reviser",
        "golines",
        "fourmolu",
        "stylish-haskell",
        "isort",
        "black",
    },
})
