return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			c = { "clang-format" },
		},
		formatters = {
			["clang-format"] = {
				prepend_args = { "--style={IndentWidth: 4, TabWidth: 4, UseTab: Never}" },
			},
		},
	},
}
