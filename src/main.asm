org 0x7C00
bits 16

start:
    mov ax, 0x07C0
    add ax, 288
    mov ss, ax
    mov sp, 4096

    mov ah, 0x00
    mov al, 0x03
    int 0x10

    mov si, msg
    call PrintString

    jmp $

PrintString:
    mov ah, 0x0E
    .printLoop:
        lodsb
        cmp al, 0
        je .done
        int 0x10
        jmp .printLoop
    .done:
    ret

msg db 'OS/2GX Developer Release 1', 13, 10, 'thank you for testing! send 2gx any messages for more information.', 0

times 510-($-$$) db 0
dw 0xAA55
