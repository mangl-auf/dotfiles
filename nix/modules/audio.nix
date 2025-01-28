{
  hardware.pulseaudio.enable = false;

  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  #services.pipewire.wireplumber.extraConfig."10-bluez" = {
  #  "monitor.bluez.properties" = {
  #    "bluez5.enable-sbc-xq" = true;
  #    "bluez5.enable-msbc" = false;
  #    "bluez5.enable-hw-volume" = false;
  #    "bluez5.codecs" = [
  #      "ldac"
  #      "aac"
  #      "aptx_hd"
  #    ];
  #    "bluez5.roles" = [
  #      "a2dp_sink"
  #      "bap_sink"
  #    ];
  #  };
  #};
  #services.pipewire.wireplumber.extraConfig."11-bluetooth-policy" = {
  #  "wireplumber.settings" = {
  #    "bluetooth.autoswitch-to-headset-profile" = false;
  #  };
  #};
}
