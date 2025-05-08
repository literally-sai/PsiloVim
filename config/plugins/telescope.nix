{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      ui-select.enable = true;
    };
    settings.defaults = {
      layout_strategy = "vertical";
      layout_config = {
        height = 0.9;
        width = 0.6;
        preview_height = 0.6;
      };
      mappings.n = {
        "q" = {
          __raw = "require('telescope.actions').close";
        };
      };
    };
  };
}
