[BITS 16]        ; set the mode to 16-bit
[ORG 0x7C00]     ; set the origin to 0x7C00

section .text    ; start the text section

    mov ah, 0x0E        ; set the video mode to 0x0E
    mov al, 'H'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'e'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'l'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'l'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'o'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, ' '         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'W'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'o'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'r'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'l'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, 'd'         ; set the character to display
    int 0x10            ; call the video interrupt
    mov al, '!'         ; set the character to display
    int 0x10            ; call the video interrupt

    cli                 ; disable interrupts
    hlt                 ; halt the processor

section .signature       ; add a signature section
    times 510-($-$$) db 0    ; pad the rest of the sector with zeros
    dw 0xAA55           ; add the boot signature

