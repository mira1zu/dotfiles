Currently, yabai is disabled in the system. The reason being that I decided to give a try to being an adequate person. I am tired of endless configurations.

So, the state is: SIP was disabled, I enabled it back.

To enable, you need to:
- Partially disable SIP, link here: https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection
- Configure scripting addition, link here: https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)#configure-scripting-addition. 
  There's `yabai` file in `sudoers`, I just commented it out
- Add some configuration to yabairc, it's also commented out
