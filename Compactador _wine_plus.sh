#!/bin/bash
#Escrito por Jeverson Dias Da Silva (JC GAMES CLÁSSICOS NO YOUTUBE)
#sex 24 fev 2023 08:03:39 

nome=$(yad --entry \
		--title="Compactaar Jogo com a Extenção .plus  by JC GAMES CLÁSSICOS" \
 		--window-icon="dialog-question" \
		--image="icon.png" \
		--center \
		--width=400 \
		--height=100 \
		--text="Qual o nome que voce gostaria de usar para salvar o jogo ?" \
		--button="Salvar":0)

if [ "$?" -eq 0 ]; then
    cat "$nome" | mksquashfs * "$nome".plus 
	sleep 2
	mv  "$nome.plus" /userdata/roms/windows/"$nome".plus
	yad --title "Salvar Jogo" \
		--text "Esse jogo foi salvo com o nome $nome" \
		--window-icon="dialog-info" \
		--center \
		--width=400 \
		--height=100 \
		--text="O jogo $nome foi salvo com sucesso no caminho /userdata/roms/windows/$nome.plus" \
		--button="OK":0
fi

echo "Jogo salvo com sucesso !!!"



