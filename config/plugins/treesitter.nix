{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    settings = {
      ensure_installed = [
        "rust"
        "nix"
        "javascript"
        "typescript"
        "tsx"
        "css"
        "html"
        "cpp"
        "c"
        "sql"
        "gleam"
        "go"
        "lua"
        "luadoc"
        "printf"
        "vim"
        "vimdoc"
      ];
      highlight.enable = true;
      indent.enable = true;
      use_languagetree = true;
    };
  };
}
