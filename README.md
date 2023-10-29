# headphoneAlternate

script para realizar mudança entre saídas de audio em ambientes GNOME de fone de ouvido na porta frontal para caixa de som ligadas nas portas traseiras do PC

## configuração atalhos:

1. remover atalho padrão do gnome em dconf -> org.gnome.settings-daemon.plugins.media-keys control-center-static ['']
1. realizar logoff 
1. adicionar atalho no gnome-control

opção de auto-mute deve estar desabilitado

`amixer -c 0 sset "Auto-Mute Mode" Disabled`

