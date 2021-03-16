require'lspconfig'.texlab.setup{
	settings = {
		latex = {
			build = {
			  args = { "-pdf", "-pvc" },
			  executable = "latexmk"
		  }
		}
	}
}
