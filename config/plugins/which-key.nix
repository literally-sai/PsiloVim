{
  programs.nixvim.plugins.which-key = {
    enable = true;
    settings = {
      triggers = [
        "<leader>"
        "<c-w>"
        "\""
        "'"
        "`"
        "c"
        "v"
        "g"
      ];
    };
  };
}
