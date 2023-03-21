# mhanline's aliases

alias grepfile='grep -rniI . -e '
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
function extract() { 
    if [ -f $1 ] ; then 
      case $1 in 
        *.tar.bz2)   tar xjf $1     ;; 
        *.tar.gz)    tar xzf $1     ;; 
        *.bz2)       bunzip2 $1     ;; 
        *.rar)       unrar e $1     ;; 
        *.gz)        gunzip $1      ;; 
        *.tar)       tar xf $1      ;; 
        *.tbz2)      tar xjf $1     ;; 
        *.tgz)       tar xzf $1     ;; 
        *.zip)       unzip $1       ;; 
        *.Z)         uncompress $1  ;; 
        *.7z)        7z x $1        ;; 
        *)     echo "'$1' cannot be extracted via extract()" ;; 
         esac 
     else 
         echo "'$1' is not a valid file" 
     fi 
}
if command -v most >/dev/null 2>&1; then
  alias man='man -P most'
fi

alias k=kubectl
alias kc=kubectl
alias gc=gcloud
alias setproject='gcloud config set project'
alias tfaa='terraform apply -auto-approve'
alias tfda='terraform destroy -auto-approve'
alias tf=terraform
alias cs='cloudshell'
alias freespace='du -sah /home/mhanline/*'
alias findtext='grep -rin "." -e'
