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
          "██████╗ ███████╗██╗██╗      ██████╗ ██╗   ██╗██╗███╗   ███╗"
          "██╔══██╗██╔════╝██║██║     ██╔═══██╗██║   ██║██║████╗ ████║"
          "██████╔╝███████╗██║██║     ██║   ██║██║   ██║██║██╔████╔██║"
          "██╔═══╝ ╚════██║██║██║     ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
          "██║     ███████║██║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "╚═╝     ╚══════╝╚═╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"
          ""
          "            :h-                                  Nhy`               "
          "           -mh.                           h.    `Ndho               "
          "           hmh+                          oNm.   oNdhh               "
          "          `Nmhd`                        /NNmd  /NNhhd               "
          "          -NNhhy                      `hMNmmm`+NNdhhh               "
          "          .NNmhhs              ```....`..-:/./mNdhhh+               "
          "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               "
          "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                "
          "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       "
          " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        "
          " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         "
          " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        "
          " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       "
          "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      "
          "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/::/`    "
          "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/:::`    "
          "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    "
          "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   "
          "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   "
          "       //+++//++++++////+++///::--                 .::::-------::   "
          "       :/++++///////////++++//////.                -:/:----::../-   "
          "       -/++++//++///+//////////////               .::::---:::-.+`   "
          "       `////////////////////////////:.            --::-----...-/    "
          "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    "
          "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   "
          "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ "
          "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``"
          "           s-`::--:::------:////----:---.-:::...-.....`./:          "
          "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           "
          "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              "
          "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                "
          "                        .-:mNdhh:.......--::::-`                    "
          "                           yNh/..------..`                          "
          ""
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
            val = "New File";
            on_press.__raw = "function() vim.cmd('enew') end";
            opts = {
              shortcut = "n";
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
              keymap = [
                "n"
                "n"
                "<cmd>enew<CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
            };
          }
          {
            type = "button";
            val = "Recent Files";
            on_press.__raw = "function() require('telescope.builtin').oldfiles() end";
            opts = {
              shortcut = "r";
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
              keymap = [
                "n"
                "r"
                ":Telescope oldfiles<CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
            };
          }
          {
            type = "button";
            val = "Find File";
            on_press.__raw = "function() require('telescope.builtin').find_files() end";
            opts = {
              shortcut = "f";
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
              keymap = [
                "n"
                "f"
                ":Telescope find_files<CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
            };
          }
          {
            type = "button";
            val = "Live Grep";
            on_press.__raw = "function() require('telescope.builtin').live_grep() end";
            opts = {
              shortcut = "g";
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
              keymap = [
                "n"
                "g"
                ":Telescope live_grep<CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
            };
          }
          {
            type = "button";
            val = "File Explorer";
            on_press.__raw = "function() vim.cmd('Neotree toggle') end";
            opts = {
              shortcut = "e";
              position = "center";
              cursor = 3;
              width = 50;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
              keymap = [
                "n"
                "e"
                "<cmd>Neotree toggle<CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
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
              keymap = [
                "n"
                "q"
                "<cmd>q<CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
            };
          }
        ];
      }
    ];
  };
}
