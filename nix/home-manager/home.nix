{ config, pkgs, ... }:

{
  home = {
    username = "mangl-auf";
    homeDirectory = "/home/mangl-auf";
    stateVersion = "24.05";
    sessionVariables = {
      EDITOR = "emacsclient -c";
      BROWSER = "firefox";
      TERMINAL = "kitty";
    };
  };

  programs.zsh = {
    enable = true;
  };
  
  #wayland.windowManager.hyprland = {
  #  enable = true;
  #};
  
  programs.hyprlock = {
    enable = true;
  };

  programs.rofi = {
    enable = true;
    cycle = true;
  };
  
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      preload = [ "/home/mangl-auf/Pictures/wallpaper.jpg" ];
      wallpaper = [ ",/home/mangl-auf/Pictures/wallpaper.jpg" ];
    };
  };

  programs.firefox.enable = true;

  home.file = {
    ".zshrc".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/.zshrc";
    ".tmux.conf".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/.tmux.conf";
    ".gitconfig".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/.gitconfig";
    ".vimrc".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/.vimrc";
  };
}
