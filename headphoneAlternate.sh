
#script para realizar mudança entre fone de ouvido na porta frontal e caixa de som ligadas nas portas traseiras do PC
# remover atalho padrão do gnome em dconf -> org.gnome.settings-daemon.plugins.media-keys control-center-static ['']
# realizar logoff 
# adicionar atalho no gnome-control
# opção de auto-mute deve estar desabilitado - amixer -c 0 sset "Auto-Mute Mode" Disabled

# alsa mixer - mixer do sistema
# paxmixer outro programa para controle de volume

ligaFone(){
	pacmd set-sink-port 0 analog-output-headphones
	amixer -c 0 -q set Headphone 40
	amixer -c 0 -q set Front 0%
}

ligaCaixa(){
	pacmd set-sink-port 0 analog-output-lineout
	amixer -c 0 -q set Front 100%
	amixer -c 0 -q set Headphone 0%
}

VOL=`amixer -c 0 get Front | tail -1 | cut -d' ' -f7`

if [ $VOL == "[0%]" ] 
then
	ligaCaixa
else
	ligaFone
fi
