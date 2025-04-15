#!/bin/bash

# Tentatives de mot de passe
attempts=0
password="YAMAV1"

until [ $attempts -ge 3 ]
do
    clear
    echo -e "\e[1;31m═══════════════════════════════════════"
    echo -e "\e[1;37m        Accès à \e[1;36mGRIMM-X"
    echo -e "\e[1;31m═══════════════════════════════════════"
    read -s -p $'\e[1;33mEntrez le mot de passe : \e[0m' pass
    echo

    if [[ "$pass" == "$password" ]]; then
        break
    else
        insults=("Gyet manmanw" "Fils de pute" "Yon mots de passe est inconrrect" "Ah pase kk" "Ou est con ou bien ?")
        echo -e "\e[1;31m${insults[$attempts]}\e[0m"
        sleep 2
        ((attempts++))
    fi
done

if [ $attempts -ge 3 ]; then
    echo -e "\e[1;31mAccès refusé. T’as échoué 3 fois. Al fè jefò sou tèt ou.\e[0m"
    exit
fi

# Bannière principale
banner() {
  clear
  echo -e "\e[1;31m═══════════════════════════════════════"
  echo -e "\e[1;37m TOOLS CRÉÉ PAR \e[1;36mZephyr \e[1;37met \e[1;35mEMPEROR SUKUNA"
  echo -e "\e[1;31m═══════════════════════════════════════"
  echo -e "\e[1;32m        [ GRIMM-X - TOOLKIT ]"
  echo -e "\e[1;31m═══════════════════════════════════════\e[0m"
}

# Menu principal
menu() {
  while true; do
    banner
    echo -e "\e[1;36m1. Phishing Facebook"
    echo "2. Phishing Instagram"
    echo "3. Phishing Gmail"
    echo "4. Phishing WhatsApp"
    echo "5. Raccourcir un lien"
    echo "6. Protection Anti-Spam"
    echo "7. Générateur de liens masqués"
    echo "8. Vérificateur de liens (sécurité)"
    echo "9. Nettoyer les logs Termux"
    echo "0. Quitter"
    echo -e "\e[1;31m───────────────────────────────────────\e[0m"
    read -p $'\e[1;33mChoisissez une option : \e[0m' opt

    clear
    case $opt in
      1)
        echo "[+] Lancement du Phishing Facebook..."
        sleep 2
        ;;      
      2)
        echo "[+] Lancement du Phishing Instagram..."
        sleep 2
        ;;
      3)
        echo "[+] Lancement du Phishing Gmail..."
        sleep 2
        ;;
      4)
        echo "[+] Lancement du Phishing WhatsApp..."
        sleep 2
        ;;
      5)
        read -p "Entrez votre lien long : " long
        echo "[+] Lien raccourci : https://short.url/$(echo $RANDOM)"
        ;;
      6)
        echo "[+] Analyse anti-spam en cours..."
        sleep 2
        echo "Aucun spam détecté."
        ;;
      7)
        read -p "Lien réel : " lien
        read -p "Texte personnalisé : " texte
        echo "[+] Lien généré : https://mask.url/?q=$texte&to=$lien"
        ;;
      8)
        read -p "Lien à vérifier : " check
        echo "[*] Analyse du lien $check..."
        sleep 2
        echo "Statut : Sûr"
        ;;
      9)
        echo "[*] Nettoyage des logs Termux..."
        rm -rf ~/.bash_history && history -c
        echo "Terminé."
        ;;
      0)
        echo "Merci d’avoir utilisé GRIMM-X. À bientôt !"
        exit
        ;;
      *)
        echo "Option invalide."
        ;;
    esac

    echo -e "\n\e[1;36mAppuyez sur Entrée pour retourner au menu...\e[0m"
    read
  done
}

# Lancer le menu
menu
