[BITS 16]
[ORG 0x7C00]

start:
    mov bx, HELLO_MSG   ; Charger l'adresse de HELLO_MSG dans BX
    call print_string   ; Appeler la fonction pour afficher la chaine

hang:
    jmp hang            ; boucle infinie

HELLO_MSG:
    db 'Hello world!', 0    ; Chaine de caractères, terminée par 0 pour le retour de ligne


print_string:
    mov al, [bx]        ; Charger le caractère pointé par BX dans AL
    cmp al, 0           ; Vérifier si c'est la fin de la chaine
    je done             ; Si oui, sauter à la fin
    mov ah, 0x0E        ; Fonction BIOS pour afficher le caractère
    int 0x10            ; Appeler le BIOS pour afficher le caractère
    add bx, 1           ; Passer au caractère suivant
    jmp print_string    ; Répéter pour le caractère suivant

done:
    ret                ; retour à l'appelant 

times 510-($-$$) db 0   ; remplir les 510 octets du fichier
dw 0xAA55               ; Signature de boot