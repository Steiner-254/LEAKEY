#########################################################
#                   Logo                                #
#########################################################
logo(){
printf """  
██╗     ███████╗ █████╗ ██╗  ██╗███████╗██╗   ██╗
██║     ██╔════╝██╔══██╗██║ ██╔╝██╔════╝╚██╗ ██╔╝
██║     █████╗  ███████║█████╔╝ █████╗   ╚████╔╝ 
██║     ██╔══╝  ██╔══██║██╔═██╗ ██╔══╝    ╚██╔╝  
███████╗███████╗██║  ██║██║  ██╗███████╗   ██║   
╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   v1.0
═══════ 🔑 Check for the leaked credentials 🔑 ═══════
╔═════════════════════════════════════════════════════╗
   Developed BY: 𝝘𝝝𝝜𝗦𝝨𝗖 (https://twitter.com/rohsec)
╚═════════════════════════════════════════════════════╝
"""
}

installer(){
    printf "\nInstalling..."
    mkdir ~/.leakey/ && git clone "https://github.com/rohsec/LEAKEY" && cd LEAKEY && cp signatures.json ~/.leakey && chmod +x leakey.sh && mv leakey.sh /usr/bin/leaky && cd .. && rm -r LEAKEY
    [[ -f ~/.leakey/signatures.json]] && printf "\n [ ✔ ] Installation Successful..." || printf "[ X ] Installation Failure..."
}

#########################################################
#                   Installer                           #
#########################################################
logo
installer