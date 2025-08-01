{pkgs, ...}: {
  programs.git = {
    enable = true;
    extraConfig = {
      color.ui = true;
      core.editor = "zeditor"; # configuring nixvim soon so setting this as default for now
      credential.helper = "store";
      github.user = "qfumbled";
      push.autoSetupRemote = true;
    };
    userEmail = "q.fumbled@proton.me";
    userName = "qfumbled";
  };
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
  };
  services.ssh-agent = {
    enable = pkgs.stdenv.isLinux;
  };
}
