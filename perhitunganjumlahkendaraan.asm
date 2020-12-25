L0001:  .EQU 0054H
L0008:  .EQU 0091H
L0046:  .EQU 09DEH
L0012:  .EQU 0D00H
L0042:  .EQU 0D63H
L0017:  .EQU 1423H
L0041:  .EQU 4D04H

		LD (HL),B
        RET NZ
        NOP
        RST 38H
        HALT
        LD B,E
        DEC (HL)
        LD SP,2220H
        LD L,L
        LD H,C
        LD L,C
        LD L,(HL)
        LD L,63H
        LD (4F20H),HL
        LD D,B
        LD D,H
        LD C,C
        LD C,L
        LD C,C
        LD E,D
        LD B,L
        JR Z,L0001
        INC L
        LD D,E
        LD D,B
        LD B,L
        LD B,L
        LD B,H
        ADD HL,HL
        JR NZ,L0002
        LD D,D
        LD C,A
        LD D,A
        LD D,E
        LD B,L
        JR NZ,L0003
        LD B,L
        LD B,D
        LD D,L
        LD B,A
        JR NZ,L0004
        LD B,D
        LD C,D
        LD B,L
        LD B,E
        LD D,H
        LD B,L
        LD E,B
        LD D,H
        LD B,L
        LD C,(HL)
        LD B,H
        JR NZ,L0005
        LD D,D
        LD C,C
        LD C,(HL)
        LD D,H
        JR Z,L0006
        LD E,H
        LD C,H
        LD L,C
        LD (HL),E
        LD (HL),H
        LD L,C
        LD L,(HL)
        LD H,A
        LD (HL),E
        LD E,H
        LD L,L
        LD H,C
        LD L,C
        LD L,(HL)
        LD L,6CH
        LD (HL),E
        LD (HL),H
        ADD HL,HL
        JR NZ,L0007
        LD B,C
        LD B,D
        LD D,E
        JR Z,L0008
        ADD HL,HL
        JR NZ,L0009
        LD B,D
        LD C,D
        LD B,L
        LD B,E
        LD D,H
L0002:  JR Z,L0010
        LD E,H
        LD C,A
        LD H,D
        LD L,D
        LD H,L
        LD H,E
        LD (HL),H
L0003:  LD (HL),E
        LD E,H
        LD L,L
L0006:  LD H,C
        LD L,C
        LD L,(HL)
        LD L,6FH
        LD H,D
        LD L,D
        ADD HL,HL
        NOP
        NOP
        RET C
        ADD A,B
        RST 08H
        LD E,A
L0004:  LD (DE),A
        LD L,5CH
        LD C,A
        LD H,D
        LD L,D
        LD H,L
        LD H,E
        LD (HL),H
        LD (HL),E
        LD E,H
        LD L,L
        LD H,C
        LD L,C
L0005:  LD L,(HL)
        LD L,6FH
        LD H,D
        LD L,D
        LD BC,6300H
L0010:  ADD A,B
        RST 08H
        LD E,A
        LD B,6DH
        LD H,C
        LD L,C
        LD L,(HL)
        LD L,63H
        LD (BC),A
        NOP
        LD L,D
        RST 20H
        SBC A,H
        LD D,L
        LD A,(DE)
        LD B,E
        LD A,(4B5CH)
        LD H,L
        LD L,C
L0007:  LD L,H
        LD E,A
        HALT
L0009:  DEC (HL)
        LD E,H
        LD B,E
        DEC (HL)
        LD SP,495CH
        LD L,(HL)
        LD H,E
        LD E,H
        LD (HL),D
        LD H,L
        LD H,A
        DEC (HL)
        LD SP,682EH
        CALL NZ,L0011
        NOP
        INC B
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
        CP 01H
        ADC A,0FH
        LD A,00H
        LD BC,0000H
        LD BC,0000H
        NOP
        JP Z,L0012
        CCF
        LD D,B
        LD D,D
        CCF
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
        CCF
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
        LD (BC),A
        NOP
        NOP
        LD BC,0000H
        NOP
        LD E,00H
        LD A,(BC)
        CCF
        LD B,E
        LD E,A
        LD C,C
        LD C,(HL)
        LD C,C
        LD D,H
        LD D,E
        LD B,L
        LD B,A
        INC BC
        NOP
        LD (BC),A
        LD BC,0000H
        NOP
        INC E
        NOP
        EX AF,AF'
        CCF
        LD B,H
        LD D,H
        CCF
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
        XOR L
        ADD HL,DE
        RRA
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        NOP
        LD A,(BC)
        CCF
        LD B,E
        LD E,A
        LD D,E
        LD D,H
        LD B,C
        LD D,D
        LD D,H
        LD D,L
        LD D,B
        LD (BC),A
        LD BC,0000H
        NOP
        EX AF,AF'
        CCF
        LD B,E
        CCF
        LD D,E
        LD C,C
        LD B,H
        LD C,C
        LD D,(HL)
        LD E,L
        RLA
        LD (HL),00H
        INC BC
        NOP
        LD (BC),A
        LD A,(DE)
        NOP
        NOP
        LD BC,034EH
        NOP
        LD (BC),A
        JR L0013
L0013:  NOP
        LD BC,034DH
        NOP
        LD (BC),A
        LD D,00H
        NOP
        LD BC,0342H
        NOP
        LD (BC),A
        INC D
        NOP
        NOP
        LD BC,0341H
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        INC BC
        LD B,C
        LD D,D
        LD D,D
        LD BC,0000H
        NOP
        NOP
        NOP
        INC B
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
        LD A,(BC)
        DJNZ L0014
        NOP
        NOP
        INC B
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
L0014:  RET NZ
        INC H
        DEC BC
        NOP
        NOP
        NOP
        NOP
        LD B,4DH
        LD B,C
        LD C,C
        LD C,(HL)
        LD L,43H
        DEC (HL)
        RLCA
        INC HL
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        INC D
        NOP
        NOP
        CCF
        NOP
        LD B,00H
        LD E,E
        NOP
        LD C,A
        NOP
        LD H,(HL)
        NOP
        LD L,L
        NOP
        LD A,L
        NOP
        RLCA
        NOP
        RST 38H
        NOP
        LD H,A
        DJNZ L0015
        LD (0100H),HL
        NOP
        INC B
        INC BC
        LD BC,0000H
L0015:  EX AF,AF'
        AND E
        LD BC,0000H
        LD BC,0003H
        JR L0016
L0016:  DEC B
        NOP
        NOP
        LD BC,0003H
        LD A,(DE)
        NOP
        ADD HL,BC
        NOP
        NOP
        LD BC,0003H
        NOP
        NOP
        CALL NC,L0017
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        DEC B
        DEC BC
        LD E,A
        LD C,C
        LD B,E
        LD B,L
        LD E,A
        LD B,H
        LD D,L
        LD C,L
        LD C,L
        LD E,C
        LD E,A
        CCF
        JR NZ,L0018
        NOP
        INC HL
        DEC BC
        NOP
        LD (0A01H),HL
        NOP
        INC B
L0018:  LD A,B
        INC HL
        LD H,D
        NOP
        LD BC,0000H
        LD (BC),A
        SUB B
        NOP
        INC BC
        LD (BC),A
        LD D,B
        LD SP,0000H
        LD (BC),A
        AND B
        NOP
        INC BC
L0022:  LD (BC),A
        LD D,B
        LD (0000H),A
        LD (BC),A
        OR B
        NOP
        INC BC
        LD (BC),A
        LD D,B
        INC SP
        LD BC,0000H
        NOP
        NOP
        JR NZ,L0019
        LD L,L
        LD H,C
        LD L,C
        LD L,(HL)
L0019:  INC BC
        NOP
        LD (BC),A
        NOP
        NOP
        LD HL,6103H
        LD (HL),D
        LD (HL),D
        INC BC
        NOP
        LD (BC),A
        INC D
        NOP
        INC B
        LD BC,0361H
        NOP
        LD (BC),A
        LD D,00H
        INC B
        LD BC,0062H
        NOP
        INC B
        SUB A
        NOP
        LD BC,6701H
        NOP
        NOP
        INC B
        SUB (HL)
        NOP
        LD BC,6801H
        INC BC
        NOP
        LD (BC),A
        JR L0020
L0020:  INC B
        LD BC,036DH
        NOP
        LD (BC),A
        LD A,(DE)
        NOP
        INC B
        LD BC,9D6EH
        DJNZ L0021
        NOP
        LD (BC),A
        INC B
        LD C,L
        LD B,C
L0023:  LD C,C
        LD C,(HL)
L0021:  CP (HL)
        RLCA
        RST 08H
        NOP
L0024:  LD BC,0000H
        NOP
L0025:  ADD A,B
        LD (HL),H
        LD (HL),L
        SUB B
        RST 38H
        JR NZ,L0022
        LD E,A
        PUSH HL
        NOP
        LD H,H
        LD H,E
        LD B,L
        NOP
        LD (HL),B
        DJNZ L0023
        NOP
        LD H,H
        LD H,E
        LD B,L
        NOP
        LD (HL),B
        EX AF,AF'
        LD (HL),L
        AND B
        LD H,A
        LD (HL),L
        OR B
        LD H,A
        ADD A,B
        LD B,A
        DEC B
        NOP
        PUSH HL
        NOP
        LD (HL),B
        LD (BC),A
        DEC B
        NOP
        DEC B
        NOP
        PUSH HL
        NOP
        LD (HL),B
        LD (BC),A
        DEC B
        NOP
        XOR (HL)
        NOP
        XOR A
        NOP
        LD A,H
        NOP
        LD A,L
        LD A,(BC)
        LD (DE),A
        NOP
        NOP
        ADC A,(HL)
        NOP
        ADC A,A
        NOP
        XOR (HL)
        NOP
        XOR A
        NOP
        LD A,H
        NOP
        LD A,L
        LD A,(BC)
        LD (DE),A
        NOP
        NOP
        ADC A,H
        NOP
        ADC A,L
        NOP
        PUSH HL
        NOP
        DEC H
        RET PO
        INC H
        NOP
        RET M
        EX AF,AF'
        AND 0F5H
        AND B
        PUSH HL
        NOP
L0026:  DEC H
        RET PO
        INC H
        NOP
        RET M
        EX AF,AF'
        AND 0F5H
        OR B
        JR NC,L0024
        .DB 0FDH ;UNRECOGNIZED
        JR NZ,L0025
        SBC A,B
        PUSH HL
        NOP
        LD B,L
        NOP
        LD (HL),B
        LD C,0E5H
        NOP
        LD B,L
        NOP
        LD (HL),B
        EX AF,AF'
        LD (HL),L
        AND B
        CCF
        LD (HL),L
        OR B
        CCF
        ADD A,B
        ADD A,H
        PUSH HL
        NOP
        DEC D
        NOP
        LD (HL),B
        LD (BC),A
        DEC D
        NOP
        PUSH HL
        NOP
        DEC D
        NOP
        LD (HL),B
        LD (BC),A
        DEC D
        NOP
        XOR (HL)
        NOP
        XOR A
        NOP
        LD A,H
        NOP
        LD A,L
        LD A,(BC)
        LD (DE),A
        NOP
        NOP
        ADC A,(HL)
L0033:  NOP
        ADC A,A
        NOP
        XOR (HL)
        NOP
        XOR A
        NOP
        LD A,H
        NOP
        LD A,L
        LD A,(BC)
        LD (DE),A
        NOP
        NOP
        ADC A,H
        NOP
        ADC A,L
        NOP
        PUSH HL
        NOP
        DEC H
        RET PO
        INC H
        NOP
        RET M
        EX AF,AF'
        AND 0F5H
        AND B
        PUSH HL
        NOP
        DEC H
        RET PO
        INC H
        NOP
        RET M
        EX AF,AF'
        AND 0F5H
        OR B
        JR NC,L0026
        INC BC
        LD (BC),A
        NOP
        NOP
        ADD A,B
        RET M
        IN A,(09H)
        ADC A,C
        LD BC,0009H
        LD BC,0301H
        NOP
        DEC DE
        NOP
        DEC C
        NOP
        LD BC,0301H
        NOP
        LD A,(DE)
        NOP
        LD DE,0100H
        LD BC,0003H
        ADD HL,DE
        NOP
        DEC D
        NOP
        LD BC,0301H
        NOP
        JR L0027
L0027:  LD HL,0100H
        LD BC,0003H
        ADD HL,DE
        NOP
        INC HL
        NOP
        LD BC,0301H
        NOP
        ADD HL,DE
        NOP
        DAA
        NOP
        LD BC,0301H
        NOP
        JR L0028
L0028:  ADD HL,HL
        NOP
        LD BC,0301H
        NOP
        DEC DE
        NOP
        DEC HL
        NOP
        LD BC,0301H
        NOP
        DEC DE
        NOP
        CPL
        NOP
        LD BC,0301H
        NOP
        LD A,(DE)
        NOP
        LD SP,0100H
        LD BC,0003H
        JR L0029
L0029:  INC SP
        NOP
        LD BC,0301H
        NOP
        ADD HL,DE
        NOP
        ADD HL,SP
        NOP
        INC B
        LD (BC),A
        LD BC,0000H
        NOP
        INC A
        NOP
        LD BC,0301H
        NOP
        INC D
        NOP
        LD A,00H
        LD BC,0301H
        NOP
        DEC D
        NOP
        LD B,B
        NOP
        LD BC,0301H
        NOP
        LD A,(DE)
        NOP
        LD B,D
        NOP
        LD BC,0301H
        NOP
        DEC DE
        NOP
        LD C,B
        NOP
        INC B
        LD (BC),A
        LD BC,0000H
        NOP
        LD C,E
        NOP
        LD BC,0301H
        NOP
        LD D,00H
        LD C,L
        NOP
        LD BC,0301H
        NOP
        RLA
        NOP
        LD C,A
        NOP
        LD BC,0301H
        NOP
        DEC D
        NOP
        LD D,E
        NOP
        NOP
        LD BC,0003H
        NOP
        NOP
        LD E,D
        NOP
        LD BC,0301H
        NOP
        RLA
        NOP
        LD E,(HL)
        NOP
        NOP
        LD BC,0003H
        NOP
        NOP
        LD L,E
        NOP
        LD BC,0301H
        NOP
        DEC DE
        NOP
        LD L,L
        NOP
        LD BC,0301H
        NOP
        LD A,(DE)
        NOP
        LD (HL),C
        NOP
        LD BC,0301H
        NOP
        ADD HL,DE
        NOP
        LD (HL),E
        NOP
        LD BC,0301H
        NOP
        JR L0030
L0030:  LD A,A
        NOP
        LD BC,0301H
        NOP
        ADD HL,DE
        NOP
        ADD A,C
        NOP
        LD BC,0301H
        NOP
        ADD HL,DE
        NOP
        ADD A,L
        NOP
        LD BC,0301H
        NOP
        JR L0031
L0031:  ADD A,A
        NOP
        LD BC,0301H
        NOP
        DEC DE
        NOP
        ADC A,C
        NOP
        LD BC,0301H
        NOP
        DEC DE
        NOP
        ADC A,L
        NOP
        LD BC,0301H
        NOP
        LD A,(DE)
        NOP
        ADC A,A
        NOP
        LD BC,0301H
        NOP
        JR L0032
L0032:  SUB C
        NOP
        LD BC,0301H
        NOP
        ADD HL,DE
        NOP
        SUB A
        NOP
        INC B
        LD (BC),A
        LD BC,0000H
        NOP
        SBC A,D
        NOP
        LD BC,0301H
        NOP
        INC D
        NOP
        SBC A,H
        NOP
        LD BC,0301H
        NOP
        DEC D
        NOP
        SBC A,(HL)
        NOP
        LD BC,0301H
        NOP
        LD A,(DE)
        NOP
        AND B
        NOP
        LD BC,0301H
        NOP
        DEC DE
        NOP
        AND (HL)
        NOP
        INC B
        LD (BC),A
        LD BC,0000H
        NOP
        XOR C
        NOP
        LD BC,0301H
        NOP
        LD D,00H
        XOR E
        NOP
        LD BC,0301H
        NOP
        RLA
        NOP
        XOR L
        NOP
        LD BC,0301H
        NOP
        DEC D
        NOP
        OR C
        NOP
        NOP
        LD BC,0003H
        NOP
        NOP
        CP B
        NOP
        LD BC,0301H
        NOP
        RLA
        NOP
        CP H
        NOP
        NOP
        LD BC,0003H
        NOP
        NOP
        ADD A,00H
        INC B
        LD BC,0001H
        LD (BC),A
        NOP
        ADD HL,BC
        INC HL
        CALL PE,L0033
        LD BC,0000H
        NOP
        EX AF,AF'
        NOP
        LD BC,0000H
        NOP
        ADD HL,BC
        NOP
        LD BC,0000H
        NOP
        LD A,(BC)
        NOP
        LD BC,0000H
        NOP
        DEC BC
        NOP
        LD BC,0200H
        NOP
        INC C
        NOP
        LD BC,0200H
        NOP
        DEC C
        NOP
        LD BC,0200H
        NOP
        LD C,00H
        LD BC,0500H
        NOP
        RRCA
        NOP
        LD BC,0800H
        NOP
        DJNZ L0034
L0034:  LD BC,0800H
        NOP
        LD DE,0100H
        NOP
        JR L0035
L0035:  LD (DE),A
        NOP
        LD BC,1800H
        NOP
        INC DE
        NOP
        LD BC,1B00H
        NOP
        INC D
        NOP
        LD BC,1E00H
        NOP
        DEC D
        NOP
        LD BC,2000H
        NOP
        RLA
        NOP
        LD BC,2000H
        NOP
        JR L0036
L0036:  LD BC,2800H
        NOP
        ADD HL,DE
        NOP
        LD BC,3000H
        NOP
        LD A,(DE)
        NOP
        LD BC,3F00H
        NOP
        DEC DE
        NOP
        LD BC,4E00H
        NOP
        INC E
        NOP
        LD BC,5900H
        NOP
        DEC E
        NOP
        LD BC,6400H
        NOP
        LD E,00H
        LD BC,6700H
        NOP
        RRA
        NOP
        LD BC,6700H
        NOP
        JR NZ,L0037
L0037:  LD BC,6700H
        NOP
        LD HL,0100H
        NOP
        LD L,D
        NOP
        LD (0100H),HL
        NOP
        LD L,D
        NOP
        INC HL
        NOP
        LD BC,7600H
        NOP
        INC H
        NOP
        LD BC,7600H
        NOP
        DEC H
        NOP
        LD BC,7900H
        NOP
        LD H,00H
        LD BC,7C00H
        NOP
        DAA
        NOP
        LD BC,7E00H
        NOP
        ADD HL,HL
        NOP
        LD BC,7E00H
        NOP
        LD HL,(0100H)
        NOP
        ADD A,(HL)
        NOP
        DEC HL
        NOP
        LD BC,8E00H
        NOP
        INC L
        NOP
        LD BC,9D00H
        NOP
        DEC L
        NOP
        LD BC,0AC00H
        NOP
        LD L,00H
        LD BC,0B700H
        NOP
        CPL
        NOP
        LD BC,0C200H
        NOP
        JR NC,L0038
L0038:  LD H,A
        DJNZ L0039
        NOP
        DEC B
        INC B
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
L0039:  CP E
        DJNZ L0040
        NOP
        INC BC
        INC B
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
L0040:  CP L
        LD (HL),D
        ADD HL,BC
        NOP
        NOP
        ADC A,A
        CALL M,L0041
        LD B,C
        LD C,C
        LD C,(HL)
        POP DE
        LD H,B
        INC (HL)
        NOP
        NOP
        LD (BC),A
        LD BC,0C00H
        NOP
        NOP
        NOP
        EX AF,AF'
        NOP
        NOP
        DEC B
        LD L,C
        LD H,H
        LD H,C
        LD (HL),H
        LD H,C
        DEC B
        LD A,B
        LD H,H
        LD H,C
        LD (HL),H
        LD H,C
        DEC B
        LD (HL),B
        LD H,H
        LD H,C
        LD (HL),H
        LD H,C
        INC B
        LD H,H
        LD H,C
        LD (HL),H
        LD H,C
        INC B
        LD H,E
        LD L,A
        LD H,H
        LD H,L
        DEC B
        LD H,L
        LD H,H
        LD H,C
        LD (HL),H
        LD H,C
        DEC B
        LD L,B
        LD H,H
        LD H,C
        LD (HL),H
        LD H,C
        RST 18H
        LD H,C
        LD C,00H
        LD H,E
        ADD A,B
        RST 08H
        LD E,A
        LD BC,0600H
        LD L,L
        LD H,C
        LD L,C
        LD L,(HL)
        LD L,63H
        LD B,E
        LD H,C
        LD (6A00H),HL
        RST 20H
        SBC A,H
        LD D,L
        LD (BC),A
        NOP
        LD A,(DE)
        LD B,E
        LD A,(4B5CH)
        LD H,L
        LD L,C
        LD L,H
        LD E,A
        HALT
        DEC (HL)
        LD E,H
        LD B,E
        DEC (HL)
        LD SP,495CH
        LD L,(HL)
        LD H,E
        LD E,H
        LD (HL),D
        LD H,L
        LD H,A
        DEC (HL)
        LD SP,682EH
        AND (HL)
        LD H,D
        LD A,(BC)
        NOP
        LD BC,0000H
        NOP
        INC B
        LD L,L
        LD H,C
        LD L,C
        LD L,(HL)
        JP PE,L0042
        NOP
        EX AF,AF'
        NOP
        DEC B
        NOP
        LD DE,0100H
        NOP
        LD BC,0000H
        NOP
        LD (HL),B
        LD H,H
        DEC D
        NOP
        LD BC,0000H
        NOP
        LD (BC),A
        NOP
        LD BC,0800H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        ADD A,D
        LD H,50H
        NOP
        ADD A,E
        LD H,D
        EX AF,AF'
        NOP
        LD BC,0000H
        NOP
        LD (BC),A
        LD D,B
        LD SP,6312H
        DEC C
        NOP
        LD (BC),A
        NOP
        INC B
        NOP
        INC BC
        NOP
        INC BC
        NOP
        LD BC,0000H
        NOP
        ADD A,E
        LD H,H
        DEC H
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        LD (BC),A
        NOP
        LD C,00H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD C,00H
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD E,C
        LD H,D
        EX AF,AF'
        NOP
        LD BC,0000H
        NOP
        LD (BC),A
        LD D,B
        LD (6311H),A
        DEC C
        NOP
        LD (BC),A
        NOP
        INC B
        NOP
        INC BC
        NOP
        INC BC
        NOP
        LD BC,0000H
        NOP
        ADD A,E
        LD H,H
        LD H,L
        NOP
        LD B,00H
        NOP
        NOP
        LD (BC),A
        NOP
        LD (BC),A
        NOP
        RRCA
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD A,(BC)
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC DE
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC E
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC H
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD L,00H
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        SUB (HL)
        LD H,D
        EX AF,AF'
        NOP
        LD BC,0000H
        NOP
        LD (BC),A
        LD D,B
        INC SP
        DJNZ L0043
        DEC C
        NOP
        LD (BC),A
        NOP
        INC B
        NOP
        INC BC
        NOP
        INC BC
        NOP
        LD BC,0000H
        NOP
        ADD A,E
        LD H,H
        LD H,L
        NOP
        LD B,00H
        NOP
        NOP
        LD (BC),A
        NOP
        LD (BC),A
        NOP
        DJNZ L0044
L0044:  NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC BC
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC D
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC E
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD H,00H
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
L0043:  RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        CPL
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        SUB B
        LD H,D
        LD DE,0100H
        NOP
        NOP
        NOP
        DEC BC
        LD E,A
        LD E,A
        LD D,D
        LD B,L
        LD B,A
        DEC (HL)
        LD SP,485FH
        LD E,A
        LD E,A
        LD A,(DE)
        LD H,E
        DEC C
        NOP
        LD BC,0000H
        NOP
        NOP
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        ADC A,(HL)
        LD H,H
        DEC D
        NOP
        LD BC,0000H
        NOP
        LD (BC),A
        NOP
        LD (BC),A
        NOP
        LD A,(BC)
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD A,H
        LD H,D
        RLCA
        NOP
        LD BC,0000H
        NOP
        LD BC,3461H
        LD H,E
        DEC C
        NOP
        INC B
        NOP
L0011:  INC B
        NOP
        INC B
        NOP
        LD BC,0100H
        NOP
        NOP
        NOP
        ADD A,D
        LD H,H
        LD D,L
        NOP
        DEC B
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        LD BC,0600H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD A,(DE)
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC E
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC L
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD L,00H
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        XOR A
        LD H,D
        RLCA
        NOP
        LD BC,0000H
        NOP
        LD BC,3362H
        LD H,E
        DEC C
        NOP
        INC B
        NOP
        INC B
        NOP
        INC B
        NOP
        LD BC,0100H
        NOP
        NOP
        NOP
        ADD A,D
        LD H,H
        LD D,L
        NOP
        DEC B
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        LD BC,0600H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC DE
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC E
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC L
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        CPL
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        XOR E
        LD H,D
        RLCA
        NOP
        LD BC,0000H
        NOP
        LD BC,2E67H
        LD H,E
        DEC C
        NOP
        LD (BC),A
        NOP
        INC B
        NOP
        LD BC,0300H
        NOP
        LD BC,0000H
        NOP
        ADD A,L
        LD H,H
        DEC (HL)
        NOP
        INC BC
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        LD BC,0300H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD HL,0000H
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        JR NC,L0045
L0045:  NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        INC DE
        LD H,D
        RLCA
        NOP
        LD BC,0000H
        NOP
        LD BC,2D68H
        LD H,E
        DEC C
        NOP
        LD (BC),A
        NOP
        INC B
        NOP
        LD BC,0300H
        NOP
        LD BC,0000H
        NOP
        ADD A,L
        LD H,H
        DEC (HL)
        NOP
        INC BC
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        LD BC,0200H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        RRCA
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD E,00H
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        JR C,L0046
        RLCA
        NOP
        LD BC,0000H
        NOP
        LD BC,286DH
        LD H,E
        DEC C
        NOP
        INC B
        NOP
        INC B
        NOP
        INC B
        NOP
        LD BC,0100H
        NOP
        NOP
        NOP
        ADD A,D
        LD H,H
        LD (HL),L
        NOP
        RLCA
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        LD BC,0400H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD DE,0000H
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        JR L0047
L0047:  NOP
        NOP
        INC BC
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD A,(DE)
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC HL
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD HL,(0000H)
        NOP
        INC BC
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC L
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD H,E
        LD H,D
        RLCA
        NOP
        LD BC,0000H
        NOP
        LD BC,276EH
        LD H,E
        DEC C
        NOP
        INC B
        NOP
        INC B
        NOP
        INC B
        NOP
        LD BC,0100H
        NOP
        NOP
        NOP
        ADD A,D
        LD H,H
        LD (HL),L
        NOP
        RLCA
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        LD BC,0500H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD DE,0000H
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        ADD HL,DE
        NOP
        NOP
        NOP
        INC BC
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC DE
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC HL
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC HL
        NOP
        NOP
        NOP
        INC BC
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC L
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD E,(HL)
        LD H,D
        ADD HL,BC
        NOP
        LD BC,0000H
        NOP
        INC BC
        LD H,C
        LD (HL),D
        LD (HL),D
        LD C,H
        LD H,E
        DEC C
        NOP
        INC B
        NOP
        INC B
        NOP
        LD C,00H
        LD BC,0100H
        NOP
        NOP
        NOP
        LD A,B
        LD H,H
        LD D,L
        NOP
        DEC B
        NOP
        NOP
        NOP
        LD (BC),A
        NOP
        LD BC,0700H
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        INC E
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        DEC E
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        LD L,00H
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        LD BC,0100H
        NOP
        CPL
        NOP
        NOP
        NOP
        LD BC,0000H
        NOP
        RST 38H
        RST 38H
        RST 38H
        RST 38H
        XOR D
        INC B
        LD A,(BC)
        NOP
        INC B
        LD C,L
        LD B,C
        LD C,C
        LD C,(HL)
        NOP
        NOP
        LD BC,0C800H
