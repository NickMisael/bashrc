#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#-----------------------------------------------
# Configurações Gerais
#-----------------------------------------------

# Se não estiver rodando interativamente, não fazer nada
[ -z "$PS1" ] && return

export TERM="xterm-256color"

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Não armazenar as linhas duplicadas ou linhas que começam com espaço no historico
HISTCONTROL=ignoreboth

# Adicionar ao Historico e não substitui-lo
shopt -s histappend

# Definições do comprimento e tamnho do historico.
HISTSIZE=1000
HISTFILESIZE=2000

#==========================
# DIVERSOS
#==========================

## Habilitando suporte a cores para o ls e outros aliases
## Vê se o arquivo existe
if [ -x /usr/bin/dircolors ]; then
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

## Aliases (apelidos) para comandos
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
fi # Fim do if do dircolor

## Aliases (apelidos) diversos

# Desliga o pc
alias poweroff='sudo apt update && sudo apt upgrade -y && sudo shutdown +30'

# Editar sources.list
alias lists='sudo vim /etc/apt/sources.list'

# atualizar o apt-get
alias upd='sudo apt-get update'

# Reparar o apt-get
alias aptrepair='sudo apt-get -f install'

# Reparar o dpkg
alias dpkgrepair='sudo dpkg --configure -a'

#==============================================
# Aliases para uso no dia-a-dia e testes
#==============================================

# Testar conexão com ping
alias google='ping -t 3 -c 5 www.google.com.br' # Ping ao google a cada 3 segundos
alias uol='ping -t 3 www.uol.com.br' # Ping ao UOL a cada 3 segundos

# Atalho que verifica o DNS
alias srvdns='cat /etc/resolv.conf | grep nameserver'

# Atalho para ferramenta
alias lswv='ls -ZilhAk'

PS1='[\u@\h \W]\$ '

# Setando teclado automaticamente, descomente esta linha
# setxkbmap -model pc105 -layout br -variant abnt2

(cat ~/.cache/wal/sequences &)
(cat ~/.cache/wal/sequences &)
(cat ~/.cache/wal/sequences &)
(cat ~/.cache/wal/sequences &)
(cat ~/.cache/wal/sequences &)
(cat ~/.cache/wal/sequences &)
(cat ~/.cache/wal/sequences &)
(cat ~/.cache/wal/sequences &)
(cat ~/.cache/wal/sequences &)
