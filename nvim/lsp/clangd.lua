return {
  cmd = { "clangd", "--background-index", "--clang-tidy", "--header-insertion=iwyu" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
  root_markers = {
    ".clangd",
    "compile_commands.json",
    "compile_flags.txt",
    "Makefile",
    "configure.ac",
    ".git",
  },
  capabilities = {
    offsetEncoding = { "utf-16" },
  },
}
