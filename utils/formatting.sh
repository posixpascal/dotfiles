function section {
    text=$1
    size=${#text}
    echo -ne "${yellow}"
    perl -E "say '=' x ${size}"
    echo "${text}"
    perl -E "say '=' x ${size}"
    echo -e "${end}"
}

function task {
 subtask ""
 bash $2 &>./setup.log &
 show_spinner "$!" $1
 for i in {1..$1}
 do 
    check=$(green ✔)
    printf "\r\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
    printf " [$check] $1\n"
 done
}

function subtask {
    echo $1 > /tmp/dotfiles-subtask
}


show_spinner()
{
  local -r pid="${1}"
  local -r delay='0.15'
  local spinstr='\|/-'
  local temp
  while ps a | awk '{print $1}' | grep -q "${pid}"; do
    temp="${spinstr#?}"
    subtask=$(cat /tmp/dotfiles-subtask)
    
       
    printf "                                             \r\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

    case $subtask in
        (*[![:blank:]]*) printf " [${blue}%c${end}] %s \t(${lightblue}%s${end})" "${spinstr}" "$2" "${subtask}";;
        (*) printf " [${blue}%c${end}] %s" "${spinstr}" "$2";;
    esac
    spinstr=${temp}${spinstr%"${temp}"}
    sleep "${delay}"
    printf "\b\b\b\b\b\b"
    for i in {1..$2}
    do 
    printf "\b\b"
    done
  done
  printf "    \b\b\b\b"
}