{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      nil_ls.enable = true;
      ts_ls.enable = true;
      cssls.enable = true;
      html.enable = true;
      clangd.enable = true;
      sqls.enable = true;
      gopls.enable = true;
    };
    keymaps = {
      silent = true;
      lspBuf = {
        "gd" = {
          action = "definition";
          desc = "Goto Definition";
        };
        "gr" = {
          action = "references";
          desc = "Goto References";
        };
        "gD" = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        "gI" = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        "gT" = {
          action = "type_definition";
          desc = "Type Definition";
        };
        "K" = {
          action = "hover";
          desc = "Hover";
        };
        "<C-k>" = {
          action = "signature_help";
          desc = "Signature Help";
        };
        "<leader>cw" = {
          action = "workspace_symbol";
          desc = "Workspace Symbol";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
        "<leader>ca" = {
          action = "code_action";
          desc = "Code Action";
        };
      };
      diagnostic = {
        "<leader>cd" = {
          action = "open_float";
          desc = "Line Diagnostics";
        };
        "[d" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };
    };
  };
}
