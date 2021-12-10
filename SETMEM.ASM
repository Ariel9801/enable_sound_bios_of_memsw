
; メモリスイッチのサウンドBIOS ROMを有効に設定します

.186

CODE  SEGMENT
      ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE

      ORG 0100H

START:
      MOV   AL,0DH
      OUT   68H,AL
      MOV   AX,0A000H
      MOV   ES,AX
      MOV   AL,BYTE PTR ES:[3FEEH]
      OR    AL,8
      MOV   BYTE PTR ES:[3FEEH],AL
      MOV   AL,0CH
      OUT   68H,AL

      MOV   AX,4C00H
      INT   21H


CODE  ENDS
      END   START

