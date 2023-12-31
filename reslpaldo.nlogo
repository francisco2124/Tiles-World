globals [
  xGiro
  vany
  vanx
  obj1
  obj3

  ;agente
  codxGA1

  listaObstaculosX
]

to setup
  ca
  set xGiro 0
  reset-ticks
  ask patches[setup-DraGrid]
  let matrixCord[

    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]
    [ 0 0 0 0 0 0 0 0 0 0 ]


  ]

  set listaObstaculosX[]
  let miLista[ 0 1 2 3 4 5 6 7 8 9 ]
  let miListaCajas[ 1 2 3 4 5 6 7 8 ]

  ;..........................................................
  ;-------------------------tortugas-------------------------
  ;..........................................................


  ; Seleccionar un valor aleatorio de la lista
  let indiceA1 random length miLista
  let valorA1 (item indiceA1 miLista)

  let indice2A1 random length miLista
  let valor2A1 (item indice2A1 miLista)

  let cordxA1 -17.5 + (valorA1 * 4 )
  let cordyA1 18.5 - (valor2A1 * 4 )

  let nuevaFila (replace-item valor2A1 (item valorA1 matrixCord) 1 )
  set matrixCord (replace-item valorA1 matrixCord nuevaFila)

  crt 1 [set shape "turtle" setxy cordxA1 cordyA1 set color blue set size 3 set heading 90] ;Crear una tortuga (Agente) con forma de tortuga en posición especifica

  ;..........................................................
  ;-------------------------cajas-------------------------
  ;..........................................................

  ; Seleccionar un valor aleatorio de la lista
  let indiceC1 random length miListaCajas
  let valorC1 (item indiceC1 miListaCajas)

  let indice2C1 random length miListaCajas
  let valor2C1 (item indice2C1 miListaCajas)

  let cordxC1 -17.5 + (valorC1 * 4 )
  let cordyC1 18.5 - (valor2C1 * 4 )

  set nuevaFila (replace-item valor2C1 (item valorC1 matrixCord) 2 )
  set matrixCord (replace-item valorC1 matrixCord nuevaFila)



  crt 1 [set shape "box" setxy cordxC1 cordyC1 set color yellow set size 3 set heading 90] ;1




  ;..........................................................
  ;-------------------------Huecos---------------------------
  ;..........................................................

  ; Seleccionar un valor aleatorio de la lista
  let indiceH1 random length miLista
  let valorH1 (item indiceH1 miLista)

  let indice2H1 random length miLista
  let valor2H1 (item indice2H1 miLista)

  let cordxH1 -17.5 + (valorH1 * 4 )
  let cordyH1 18.5 - (valor2H1 * 4 )

  set nuevaFila (replace-item valor2H1 (item valorH1 matrixCord) 3 )
  set matrixCord (replace-item valorH1 matrixCord nuevaFila)


  crt 1 [set shape "flag" setxy cordxH1 cordyH1 set color blue set size 3 set heading 90]  ;2


  set vany valorC1 - valorA1
  set vanx valor2C1 - valor2A1

  set obj1 valorH1 - valorC1
  set obj3 valor2H1 - valor2C1


  ;..........................................................
  ;-------------------------Obstaculos---------------------------
  ;..........................................................

  ; Seleccionar un valor aleatorio de la lista
  let indiceO1 random length miLista
  let valorO1 (item indiceO1 miLista)

  let indice2O1 random length miLista
  let valor2O1 (item indice2O1 miLista)

  let cordxO1 -17.5 + (valorO1 * 4 )
  let cordyO1 18.5 - (valor2O1 * 4 )

  set nuevaFila (replace-item valor2O1 (item valorO1 matrixCord) 4 )
  set matrixCord (replace-item valorO1 matrixCord nuevaFila)

  set listaObstaculosX lput valor2O1 listaObstaculosX


  crt 1 [set shape "sheep" setxy cordxO1 cordyO1 set color red set size 3 set heading 90]  ;2


  ; Seleccionar un valor aleatorio de la lista
  let indiceO2 random length miLista
  let valorO2 (item indiceO1 miLista)

  let indice2O2 random length miLista
  let valor2O2 (item indice2O2 miLista)

  let cordxO2 -17.5 + (valorO2 * 4 )
  let cordyO2 18.5 - (valor2O2 * 4 )

  set nuevaFila (replace-item valor2O2 (item valorO2 matrixCord) 4 )
  set matrixCord (replace-item valorO2 matrixCord nuevaFila)

  set listaObstaculosX lput valor2O2 listaObstaculosX
  crt 1 [set shape "sheep" setxy cordxO2 cordyO2 set color red set size 3 set heading 90]

  ;--------------------------------------------------------

  ; Seleccionar un valor aleatorio de la lista
  let indiceO3 random length miLista
  let valorO3 (item indiceO3 miLista)

  let indice2O3 random length miLista
  let valor2O3 (item indice2O3 miLista)

  let cordxO3 -17.5 + (valorO3 * 4 )
  let cordyO3 18.5 - (valor2O3 * 4 )

  set nuevaFila (replace-item valor2O3 (item valorO3 matrixCord) 4 )
  set matrixCord (replace-item valorO3 matrixCord nuevaFila)

  set listaObstaculosX lput valor2O3 listaObstaculosX
  crt 1 [set shape "sheep" setxy cordxO3 cordyO3 set color red set size 3 set heading 90]

  ;--------------------------------------------------------

  ; Seleccionar un valor aleatorio de la lista
  let indiceO4 random length miLista
  let valorO4 (item indiceO4 miLista)

  let indice2O4 random length miLista
  let valor2O4 (item indice2O4 miLista)

  let cordxO4 -17.5 + (valorO4 * 4 )
  let cordyO4 18.5 - (valor2O4 * 4 )

  set nuevaFila (replace-item valor2O4 (item valorO4 matrixCord) 4 )
  set matrixCord (replace-item valorO4 matrixCord nuevaFila)

  set listaObstaculosX lput valor2O4 listaObstaculosX
  crt 1 [set shape "sheep" setxy cordxO4 cordyO4 set color red set size 3 set heading 90]




  ;show "------------------"
  show matrixCord
  show listaObstaculosX

  set codxGA1 indice2A1
  show indice2A1


  set vany valorC1 - valorA1
  set vanx valor2C1 - valor2A1


  ;;ask patch 0 0 [set pcolor green]
end

to dar-paso
  set heading 90 * random 4
  fd 1
  if count neighbors with [pcolor = green] > 0 [set pcolor green die]
end


to avanzar1 [y]
  if shape = "turtle" [
      ; Código de movimiento para los agentes con forma de tortuga
      fd 4 * y
    ]

end


to orientarCaja [x]

  if x < 0 [
    ask turtles with [color = yellow][
          set heading 270 ]

  ]

end

to avanzar2 [x]
  right 90
  if shape = "turtle" [
      ; Código de movimiento para los agentes con forma de tortuga
      fd 4 * x
    ]

end

to colocar1 [x]




  ifelse x > 0
  [set heading 270]
  [set heading 90]

  if shape = "turtle" [
      ; Código de movimiento para los agentes con forma de tortuga
      fd 4
    ]

  ifelse x > 0
  [set heading 90]
  [set heading 270]


  orientarCaja x



end

to avanzarEQ

  if shape = "box" [
      ; Código de movimiento para los agentes con forma de tortuga
      fd 4
    ]

end

to ifConocer [ x y ]

  let enfrente-patch patch-ahead 4  ;Obtener el parche que está enfrente de la tortuga actual
   let enfrente-tortugas turtles-on enfrente-patch  ; Convertir el parche en un conjunto de parches


  ifelse any? enfrente-tortugas
    ;;with [shape = "square"] or  [pcolor] of enfrente-patch = green
    [reconocer x y ]
    [avanzar]

end


to posicionarTortugaY

  let elemento2 (item 1 listaObstaculosX)
  let elemento1 (item 0 listaObstaculosX)
  if codxGA1 = elemento1 or codxGA1 = elemento2  [
    if codxGA1 = elemento1 [
      show "hola"
    ]
  ]


end


to go
  ask turtles [
    ; Verificar si el agente tiene la forma de tortuga antes de moverlo
    ;;let enfrente one-of turtles-on patch-ahead 4


    posicionarTortugaY

    avanzar1 vany
    avanzar2 vanx
    colocar1 obj1


    let obj2 absolute-value obj1

    ;show obj1
    ;show obj2

    ifConocer obj2 obj3








  ]



  tick

end


to-report  absolute-value [number]
  ifelse number >= 0
  [ report number ]
  [ report (- number) ]

end

to giroAR
  if shape = "turtle"[
      ; Código de movimiento para los agentes con forma de tortuga
      fd 4
      set heading 360
      fd 4
      set heading 180
    ]
  ask turtles with [color = yellow][
          set heading 180 ]

end

to giroAB
  if shape = "turtle" [
      ; Código de movimiento para los agentes con forma de tortuga
      fd 4
      set heading 180
      fd 4
      set heading 360
    ]

  ask turtles with [color = yellow][
          set heading 360 ]

end

to avanzarCt [yb]

  repeat yb [
        ask turtles with [color = yellow][
          forward 4 ]

        ask turtles with [shape = "turtle" ] [
          forward 4
        ]
  ]
end

to reconocer [x y]


  let enfrente-patch patch-ahead 4  ;Obtener el parche que está enfrente de la tortuga actual
  let enfrente-tortugas turtles-on enfrente-patch  ; Convertir el parche en un conjunto de parches


  let tortuga-enfrente turtles-on patch-ahead 4
  let color-enfrente [color] of tortuga-enfrente




  if any? enfrente-tortugas with [shape = "box"] [


    if color-enfrente = [45] [

        repeat x [
        ask turtles with [color = yellow][
          forward 4 ]

        ask turtles with [shape = "turtle" ] [
          forward 4
        ]

        ]


      show "+++++++"
      show y
      ifelse y >= 0
        [giroAR]
        [giroAB]

      let yAbsoluta absolute-value y
      avanzarCt yAbsoluta




    ]
    if color-enfrente = [105] [
      ask turtles with [color = blue] [
        forward 4
    ]

    ]


  ]

  if any? enfrente-tortugas with [shape = "square"] [
    left 180
  ]

end


to empujarTortugaEspecifica
  let objetivo one-of turtles with [shape = "box"]  ; Identificar la tortuga objetivo con forma específica
  let empujadora one-of turtles  ; Identificar la tortuga empujadora

  if objetivo != nobody [  ; Verificar si se encontró una tortuga objetivo
    let x-objetivo [xcor] of objetivo  ; Obtener la coordenada x de la tortuga objetivo
    let y-objetivo [ycor] of objetivo  ; Obtener la coordenada y de la tortuga objetivo
    let direccion towardsxy x-objetivo y-objetivo  ; Calcular la dirección desde la empujadora hacia el objetivo

    ask empujadora [
      set heading direccion  ; Establecer la dirección de la tortuga empujadora hacia el objetivo
      fd 1  ; Mover la tortuga empujadora hacia adelante en una unidad
    ]
  ]
end
to giro1

  ifelse xGiro != 0
  [
    left 90
    fd 4
    left 90
    set xGiro 0
  ]
  [
  right 90
  fd 4
  right 90

  set xGiro 1
  ]
end


to avanzar
  if shape = "turtle" [
      ; Código de movimiento para los agentes con forma de tortuga
      fd 4
    ]
end



to cambiar-dirección
  if shape = "turtle" [
      ; Código de movimiento para los agentes con forma de tortuga
    let milista[90 180 270]
    let valorAleatorio one-of miLista ;
    right valorAleatorio

    let enfrente-patch patch-ahead 4  ;Obtener el parche que está enfrente de la tortuga actual
    let enfrente-tortugas turtles-on enfrente-patch  ; Convertir el parche en un conjunto de parches

    ifelse any? enfrente-tortugas with [shape = "square"] or  [pcolor] of enfrente-patch = green
    [right 270]
    [fd 4 right 90 ]

    ]
end



to setup-DraGrid
  ;;if pycor < 2 and pycor > -2 [set pcolor white]

  ;;if (pxcor > -2 and pxcor < -16) and (pycor < 21 and pycor > 16) [set pcolor white]
  ;;if (pxcor > -21 and pxcor < -16) and (pycor < 13 and pycor > 8) [set pcolor white]

  let numeros (range 1 6) ;
  let numeros2 (range 1 11) ;
  let x 21;
  let y 16;

  let z -20;
  let w -15;
  foreach numeros2 [
    foreach numeros[

      if (pxcor > z and pxcor < w) and (pycor < x and pycor > y) [set pcolor white]
      set x x - 8
      set y y - 8
    ]

    set x x + 40
    set y y + 40
    set z z + 8
    set w w + 8



  ]
  if pxcor > -23 and pxcor < -20 [set pcolor green]
  if pxcor < 23 and pxcor > 20 [set pcolor green]
  if pycor > -23 and pycor < -20 [set pcolor green]
  if pycor < 23 and pycor > 20 [set pcolor green]
end

to separa
  if any? other turtles-here [fd 4 separa]
end
@#$#@#$#@
GRAPHICS-WINDOW
189
42
743
597
-1
-1
12.15
1
10
1
1
1
0
1
1
1
-22
22
-22
22
0
0
1
ticks
30.0

BUTTON
792
63
855
96
NIL
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
792
251
855
284
NIL
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.3.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
