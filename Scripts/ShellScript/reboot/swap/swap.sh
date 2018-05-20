# limpando a tela
clear

echo "-------------------------------------------------------"
# mostrando mensagem
printf "[+] Memória SWAP desligada! \n"
printf "[*] Limpando a memória Swap, aguarde.. \n"

# desligando SWAP
sudo swapoff -a && sudo swapon -a

# mostrando mensagem
printf "[*] Memória SWAP ligada novamente! \n"
echo "-------------------------------------------------------"

clear

# limpando a tela
echo "-------------------------------------------------------"
printf "[+] Limpeza na memória SWAP realizada com sucesso! \n"
echo "-------------------------------------------------------"
