{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      notify_on_error = true;
      stop_after_first = true;
      formatters_by_ft = {
        html = [
          "prettierd"
          "prettier"
        ];
        css = [
          "prettierd"
          "prettier"
        ];
        javascript = [
          "prettierd"
          "prettier"
        ];
        javascriptreact = [
          "prettierd"
          "prettier"
        ];
        typescript = [
          "prettierd"
          "prettier"
        ];
        typescriptreact = [
          "prettier Enzo-davinci-001"
          "prettier"
        ];
        rust = [ "rustfmt" ];
        nix = [ "nixfmt" ];
        cpp = [ "clang-format" ];
        c = [ "clang-format" ];
        sql = [ "sqlfmt" ];
        go = [ "gofmt" ];
      };
    };
  };
}
