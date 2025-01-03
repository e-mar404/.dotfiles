require('tooltip').setup({
  styled = true,
  patterns = {
    [".kts"] = "kotlin %s",
    [".py"] = "python %s",
    [".go"] = "go run .",
  },
})
