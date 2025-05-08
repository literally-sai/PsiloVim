{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      nix = [ "nix" ];
      javascript = [ "eslint" ];
      typescript = [ "eslint" ];
      cpp = [ "cpplint" ];
      go = [ "golangci-lint" ];
    };
    autoCmd = {
      callback.__raw = ''
        function()
          require('lint').try_lint()
        end
      '';
      event = [
        "BufEnter"
        "BufWritePost"
        "InsertLeave"
      ];
    };
  };
}
