[BITS 64]

GLOBAL KEYBOARD_INPUT
KEYBOARD_INPUT:
    INT     0x21
    RET

GLOBAL ASM_KEYBOARD
EXTERN keyboard_i
ASM_KEYBOARD:
    MOV     RDI, RSP

    PUSH    R15
    PUSH    R14
    PUSH    R13
    PUSH    R12
    PUSH    R11
    PUSH    R10
    PUSH    R9
    PUSH    R8
    PUSH    RBP
    PUSH    RDI
    PUSH    RSI
    PUSH    RDX
    PUSH    RCX
    PUSH    RBX
    PUSH    RAX

    CLD
    CALL    keyboard_i

    POP     RAX
    POP     RBX
    POP     RCX
    POP     RDX
    POP     RSI
    POP     RDI
    POP     RBP
    POP     R8
    POP     R9
    POP     R10
    POP     R11
    POP     R12
    POP     R13
    POP     R14
    POP     R15

    IRETQ