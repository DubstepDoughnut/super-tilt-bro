stage_shelf_palette_data:
.byt $21,$0f,$00,$10, $21,$0f,$00,$31, $21,$09,$19,$31, $21,$07,$17,$27

nametable_stage_shelf:
.byt $00,$59
.byt
.byt                                                                                                                                    $01, $02, $00,$1e
.byt                                                                                                                                    $03, $04, $05,  $00,$88
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt
.byt
.byt
.byt
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt                      $01, $02, $00,$1e
.byt                      $03, $04, $05, $00,$07,                             $06, $07,  $08, $09, $00,$18
.byt                                                     $0e, $00,$03,        $0a, $0b,  $0c, $0d, $00,$02,   $0e, $0f, $00,$14
.byt                                                     $14, $13,  $2b, $2c, $2e, $11,  $12, $2e, $13, $13,  $14, $15, $00,$13
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt                                                $16, $17, $18,  $19, $19, $19, $19,  $19, $19, $19, $1a,  $17, $18, $1b, $00,$13
.byt                                                     $1e, $1f,  $00,$08,                                  $1c, $1d, $00,$14
.byt                                                     $1c, $1d,  $00,$08,                                  $1c, $1d, $00,$14
.byt                                                     $1c, $1d,  $00,$08,                                  $1c, $1d, $00,$0e
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt                      $0e, $0f, $00,$04,             $1c, $1d,  $00,$08,                                  $1e, $1f, $00,$03,        $0e, ZIPZ,$0f,  $00,$08
.byt                      $14, $15, $13, $13,  $2f, $2d, $29, $2a,  $2f, $00,$06,                       $2e,  $29, $2a, $2b, $2c,  $13, $14, $13, $15,  $00,$07
.byt                $16,  $19, $1a, $17, $18,  $19, $1a, $17, $18,  $19, $1b, $00,$04,             $16, $1a,  $17, $18, $19, $19,  $17, $18, $19, $19,  $1b, $00,$09
.byt                                $1c, $1d,  $00,$02,  $1c, $1d,  $00,$08,                                  $1c, $1d, $00,$02,   $1c, $1d, $00,$0c
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt                                $1c, $1d,  $24, $25, $1c, $1d,  $00,$02,  $13, $21,  $00,$04,             $1c, $1d, $20, $21,  $1e, $1f, $00,$0c
.byt                                $1c, $1d,  $26, $27, $1c, $1d,  $00,$02,  $0b, $0c,  $00,$04,             $1c, $1d, $22, $23,  $1c, $1d, $00,$0c
.byt                                $29, $2a,  $2b, $2f, $29, $2a,  $13, $20, $11, $12,  $2d, ZIPZ,$2f, $2c,  $29, $2a, $13, $13,  $29, $2a, $00,$0c
.byt                                $30, $31,  $31, $31, $31, $31,  $31, $31, $31, $31,  $31, $31, $31, $31,  $31, $31, $31, $31,  $31, $32, $00,$0c
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt                                $33, $39,  $3a, $d1, $d2, $3a,  $3a, $3a, $38, $39,  $3a, $3a, $3a, $3a,  $3a, $d6, $d7, $3a,  $3a, $36, $00,$0c
.byt                                $37, $3a,  $3a, $d3, $d4, $3a,  $3a, $3a, $3c, $3d,  $3a, $3a, $3a, $3a,  $3a, $d8, $d9, $3a,  $3a, $3b, $00,$06
.byt $3f, $40, $41, $42,  $43, $3f, $33, $3a,  $00,$03,       $db,  $3a, $44, $45, $3a,  $3a, $3a, $44, $45,  $00,$03,       $db,  $3a, $36, $40, $41,  $42, $43, $3f, $40
.byt $3a, $3a, $3a, $3a,  $3a, $3a, $37, $3d,  $3a, $3a, $44, $45,  $3a, $3a, $3a, $3a,  $3a, $38, $39, $3a,  $3a, $3a, $3c, $3d,  $3a, $3b, $3a, $3a,  $3a, $3a, $3a, $3a
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt $3a, $3a, $3a, $3a,  $3a, $3a, $33, $3a,  $3a, $3a, $38, $39,  $3a, $3a, $3e, $3a,  $3a, $3a, $3a, $3a,  $3a, $44, $45, $3a,  $3c, $36, $3a, $3a,  $3a, $3a, $3a, $3a
.byt $3a, $3a, $3a, $3a,  $3a, $3a, $37, $3a,  $3a, $3a, $3c, $3d,  $3a, $3a, $3a, $3e,  $3a, $3a, $3a, $3a,  $38, $39, $3a, $3a,  $3a, $3b, $3a, $3a,  $3a, $3a, $3a, $3a
nametable_stage_shelf_attributes:
.byt ZIPNT_ZEROS(6),                                                   %01010000
.byt ZIPNT_ZEROS(1+8+1)
.byt            %00000101, %10000000, ZIPZ,      %10000000, %10100000
.byt ZIPNT_ZEROS(2+8+1)
.byt            %00001010, ZIPNT_ZEROS(4),                             %00001010
.byt ZIPNT_ZEROS(1+2)
.byt                       %00000010, ZIPNT_ZEROS(2),       %00001000
.byt ZIPNT_ZEROS(2)
.byt %01010000, %00010000, ZIPNT_ZEROS(4),                             %01000000, %01010000
.byt %00000101, %00000001, ZIPNT_ZEROS(4),                             %00000100, %00000101
nametablei_stage_shelf_end:
.byt ZIPNT_END
