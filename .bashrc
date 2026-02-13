#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source '/home/admin/.bash_completions/comfy.sh'

alias comfy-run='cd  ~/Temp/comfy-env/  && source bin/activate &&  TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1 HSA_OVERRIDE_GFX_VERSION=11.0.0 comfy launch -- --lowvram --force-fp16   --use-pytorch-cross-attention'


eval "$(starship init bash)"

alias start-vpn="openvpn3 session-start --config ~/Projects/Synchrony/client.ovpn";
alias start-synchrony='(cd "$HOME/Projects/Synchrony/PFC/automation/local/" && ./start-analytics-server.sh "$HOME/Projects/Synchrony/Pharo11_dev" "$HOME/Projects/Synchrony/Pharo10_image" PFC 8080) & (cd "$HOME/Projects/Synchrony/ui" && npm run start:standalone) & wait'



