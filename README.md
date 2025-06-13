# MinOS

Dans ce projet, je me plonge dans le bas-niveau, afin de comprendre les fonctionnements d'un OS au plus près de la machine.

La version 1 ne contient qu'un bootloader minimaliste écrit en assembleur, qui affiche **"Hello, world!"** à l'écran lorsqu'il est exécuté.

## 📜 Description

Un bootloader est un programme chargé par le BIOS au démarrage d'un ordinateur. 
Ce bootloader est conçu pour être simple et didactique, permettant d'afficher un message avant de rester en boucle infinie.

## 🚀 Installation & Exécution

### Prérequis
- Assembleur NASM
- QEMU (émulateur x86)

### Compilation
Utilise la commande suivante pour assembler le bootloader et lancer qemu :

```bash
bash compile.sh
