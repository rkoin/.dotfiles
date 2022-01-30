{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "clone";
  home.homeDirectory = "/home/clone";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  programs.gpg = {
    enable = true;
  };
  
  services.gpg-agent = {
    enable = true;
    pinentryFlavor = "qt";
  };

  home.packages = with pkgs; [
    git
    git-crypt
    gnupg
    htop
    neofetch
    pinentry_qt
  ];
}
