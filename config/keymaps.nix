{
  programs.nixvim.keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
      options = {
        silent = true;
        desc = "Clear highlights";
      };
    }
    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<CR>";
      options = {
        desc = "Save file";
      };
    }
    {
      mode = "n";
      key = "<C-c>";
      action = "<cmd>%y+<CR>";
      options = {
        desc = "Copy whole file";
      };
    }

    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Toggle NeoTree";
      };
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree reveal<cr>";
      options = {
        desc = "Show Files";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<cmd>Neotree focus<cr>";
      options = {
        desc = "Focus NeoTree";
      };
    }

    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<cr>";
      options = {
        desc = "Find Files";
      };
    }
    {
      mode = "n";
      key = "<leader>fw";
      action = "<cmd>Telescope live_grep<CR>";
      options = {
        desc = "Live Grep";
      };
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>Telescope buffers<CR>";
      options = {
        desc = "Find Buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<CR>";
      options = {
        desc = "Help Page";
      };
    }
    {
      mode = "n";
      key = "<leader>th";
      action = "<cmd>Telescope colorscheme enable_preview=true<cr>";
      options = {
        desc = "Switch Theme with Live Preview";
      };
    }

    {
      mode = "n";
      key = "<C-,>";
      action = "<cmd>ToggleTerm direction=horizontal<cr>";
      options = {
        desc = "Horizontal Term";
      };
    }
    {
      mode = "n";
      key = "<C-.>";
      action = "<cmd>ToggleTerm direction=vertical<cr>";
      options = {
        desc = "Vertical Term";
      };
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<A-i>";
      action = "<cmd>ToggleTerm direction=float<cr>";
      options = {
        desc = "Toggle Floating Term";
      };
    }

    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        desc = "Switch window left";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        desc = "Switch window right";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        desc = "Switch window down";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        desc = "Switch window up";
      };
    }

    {
      mode = "n";
      key = "<tab>";
      action = "<cmd>BufferLineCycleNext<CR>";
      options = {
        desc = "Buffer goto next";
      };
    }
    {
      mode = "n";
      key = "<S-tab>";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options = {
        desc = "Buffer goto prev";
      };
    }
    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>BufferLinePickClose<CR>";
      options = {
        desc = "Buffer close";
      };
    }

    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>set nu!<CR>";
      options = {
        desc = "Toggle line number";
      };
    }
    {
      mode = "n";
      key = "<leader>rn";
      action = "<cmd>set rnu!<CR>";
      options = {
        desc = "Toggle relative number";
      };
    }

    {
      mode = "n";
      key = "<leader>wK";
      action = "<cmd>WhichKey <CR>";
      options = {
        desc = "WhichKey all keymaps";
      };
    }
  ];
}
