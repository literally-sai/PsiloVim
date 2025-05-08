{
  plugins.alpha = {
    enable = true;
    layout = [
      {
        type = "padding";
        val = 2;
      }
      {
        type = "text";
        val = [
          "  ██████╗  ██████╗ ███████╗██╗██╗      ██████╗ ██╗   ██╗██╗███╗   ███╗  "
          "  ██╔══██╗██╔═══██╗██╔════╝██║██║     ██╔═══██╗╚██╗ ██╔╝██║████╗ ████║  "
          "  ██████╔╝██║   ██║█████╗  ██║██║     ██║   ██║ ╚████╔╝ ██║██╔████╔██║  "
          "  ██╔═══╝ ██║   ██║██╔══╝  ██║██║     ██║   ██║  ╚██╔╝  ██║██║╚██╔╝██║  "
          "  ██║     ╚██████╔╝██║     ██║███████╗╚██████╔╝   ██║   ██║██║ ╚═╝ ██║  "
          "  ╚═╝      ╚═╝╚═══╝ ╚═╝     ╚═╝╚══════╝ ╚═════╝    ╚═╝   ╚═╝╚═╝     ╚═╝  "
        ];
        opts = {
          position = "center";
          hl = "Type";
        };
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = [
          {
            type = "button";
            val = "New file";
            on_press.__raw = "function() vim.cmd('enew') end";
            opts = {
              shortcut = "n";
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          {
            type = "button";
            val = "Recent files";
            on_press.__raw = "function() require('telescope.builtin').oldfiles() end";
            opts = {
              shortcut = "r";
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          {
            type = "button";
            val = "Quit";
            on_press.__raw = "function() vim.cmd('q') end";
            opts = {
              shortcut = "q";
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
        ];
      }
    ];
  };
}
