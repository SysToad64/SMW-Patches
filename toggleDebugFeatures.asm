; Created By: SysToad64
;---------------------Patch Options--------------------
    !bossDefeatedSceneSelect = %0
    !advanceFrame = %0
    !slowMotion = %0
    !powerupSelect = %0
    !freeRoamingMode = %0
    !infiniteStar = %0
    !cycleYoshiColorsByPressingSelect = %0
    !walkOnUnrevealedTiles = %0             ;Warps to Star Road wil not work correctly, When enabled.
;Do Not Edit Beyond This Point
;------------------------Macros-----------------------
    macro bossDefeatedSceneSelectToggle()
        if !bossDefeatedSceneSelect == %1
            org $00950B
                db $30
        elseif !bossDefeatedSceneSelect == %0
            org $00950B
                db $00
        else
            error "TypeError (3:36-3:38): !bossDefeatedSceneSelect|Type is Numeric not Boolean."
        endif
    endmacro
    macro advanceFrameToggle()
        if !advanceFrame == &1
            org $00A248
                db $00
        elseif !advanceFrame == &0
            org $00A248
                db $12
        else
            error "TypeError (4:21-4:23): !advanceFrame|Type is Numeric not Boolean."
        endif
    endmacro
    macro slowMotionToggle()
        if !slowMotion == &1
            org $00A256
                db $00
        elseif !slowMotion == &0
            org $00A256
                db $12
        else
            error "TypeError (5:19-5:21): !slowMotion|Type is Numeric not Boolean."
    endif
    endmacro
    macro powerupSelectToggle()
        if !powerupSelect == 1
            org $00C576
                db $F0
        elseif !powerupSelect == 0
            org $00C576
                db $0F
        else
            error "TypeError: (6:22-6:24) !powerupSelect|Type is Numeric not Boolean."
        endif
    endmacro
    macro freeRoamingModeToggle()
        if freeRoamingMode == %1
            org $00CC84
                db $F0
        elseif freeRoamingMode == %0
            org $00CC84
                db $80
        else
            error "TypeError: (7:24-7:26) !freeRoamingMode|Type is Numeric not Boolean."
        endif
    endmacro
    macro infinteStarToggle()
        if !infiniteStar == %1
            org $00E2D3
                db $00
        elseif !infiniteStar == %0
            org $00E2D3
                db $40
        else
            error "TypeError: (8:21-6:23) !infiniteStar|Type is Numeric not Boolean."
    endmacro
    macro cycleYoshiColorsByPressingSelectToggle()
        if !cycleYoshiColorsByPressingSelect == %1
            org $04824B
                db $F0
        elseif !cycleYoshiColorsByPressingSelect == %0
            org $04824B
                db $80
        else
            error "TypeError: (9:41-9:43) !cycleYoshiColorsByPressingSelect|Type is Numeric not Boolean."
    endmacro
    macro walkOnUnrevealedTilesToggle()
        if !walkOnUnrevealedTiles == %1
            org $049291
                db $4C,$AF,$92
        elseif !walkOnUnrevealedTiles == %0
            org $049291
                db $EA,$EA,$EA
        else
            error "TypeError: (10:30-10:32) !walkOnUnrevealedTiles|Type is Numeric not Boolean."
        endif
    endmacro
;--------------------------Main------------------------
    %bossDefeatedSceneSelectToggle()
    %advanceFrameToggle()
    %slowMotionToggle()
    %powerupSelectToggle()
    %freeRoamingModeToggle()
    %infinteStarToggle()
    %cycleYoshiColorsByPressingSelectToggle()
    %walkOnUnrevealedTilesToggle()