#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

alias start-ovpn="openvpn3 session-start --config ~/Projects/Synchrony/profile-userlocked.ovpn";
alias start-vpn="openvpn3 session-start --config ~/Projects/Synchrony/client.ovpn";
alias start-analytics='(cd "$HOME/Projects/Synchrony/PFC/automation/local/" && ./start-analytics-server.sh "$HOME/Projects/Synchrony/Pharo11_dev" "$HOME/Projects/Synchrony/Pharo10_image" PFC 8080) & (cd "$HOME/Projects/Synchrony/ui" && npm run start:standalone) & wait'

alias arch-update='sudo timeshift --delete --tags O --yes && sudo timeshift --create --comments "before update" --tags O && yay -Syu --noconfirm'
alias arch-clear-orphans="yay -Rns $(yay -Qdtq)"

comfy-run() {
  podman run -it --rm \
    --name comfyui-rocm \
    --device=/dev/kfd --device=/dev/dri \
    --group-add=26 --group-add=987 \
    --ipc=host --cap-add=SYS_PTRACE \
    --security-opt seccomp=unconfined --security-opt label=disable \
    -p 8188:8188 \
    -v "$PWD/storage:/root" \
    -v "$PWD/storage-models/models:/root/ComfyUI/models" \
    -e HSA_OVERRIDE_GFX_VERSION="11.0.0" \
    -e TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1 \
    -e CLI_ARGS="--lowvram --force-fp16 --use-pytorch-cross-attention" \
    docker.io/yanwk/comfyui-boot:rocm
}
