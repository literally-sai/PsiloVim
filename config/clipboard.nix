{
  programs.nixvim.clipboard = {
    providers = {
      wl-copy.enable = true;
      xsel.enable = true;
    };
    register = "unnamedplus";
  };
}
