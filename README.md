### Tipos de instrucciones y ejemplos

#### Transferencia de datos 
Copian datos de un origen a un destino, sin modificar el origen y normalmente sin afectar a los ''flags'' o indicadores de condición. Pueden transferir palabras, fracciones de palabras (bytes, media palabra) o bloques completos de ''n'' bytes o palabras.

Estas operaciones pueden ser:
* '''registro a registro'''.
* '''registro a memoria'''.
* '''memoria a registro'''.
* '''memoria a memoria'''.

; Nemotécnicos más frecuentes
* '''move''' copia el contenido de un registro (o memoria) a otro.
* '''store''' copia el contenido de un registro a memoria.
* '''load''' copia el contenido de una posición de memoria a un registro.
* '''move block''' copia un bloque de datos de una posición de memoria a otra.
* '''move multiple''' copia del origen en varias posiciones de memoria.
* '''exchange''' intercambia el contenido de dos operandos.
* '''clear''' pone a 0 el destinto (todos los bits).
* '''set''' pone a 1 el destino (todos los bits).
* '''push''' introduce un dato en la cabecera de la pila (indicada por el SP).
* '''pop''' saca un dato de la cabecera de la pila (indicada por el SP).

##### Instrucciones aritméticas 
Son efectuadas por la ALU y suelen cambiar los flags o indicadores de condición.

; Nemotécnicos más frecuentes
* '''add''': suma.
* '''add with carry''': suma con acarreo.
* '''subtract''': resta.
* '''subtract with borrow''': resta teniendo en cuenta el adeudo anterior.
* '''increment''': incrementa en 1 un valor.
* '''decrement''': decrementa en 1 un valor.
* '''multiply''': multiplica.
* '''divide''': divide.
* '''extend''': aumenta el operando de tamaño.
* '''negate''': cambia de signo.
* '''absolute''': valor absoluto.

Pueden tener instrucciones para tratar con números en BCD e incluyen operaciones en coma flotante, lo cual se identifica con una 'f' antes del nombre del nemotécnico como por ejemplo: '''fabsolute'''

#### Instrucciones de comparación
Suelen preceder a una instrucción de bifurcación condicional y modifican los ''flags''. No hay que pensar que las instrucciones de salto condicional dependen de este repertorio, ya que lo único que hace el salto condicional es consultar los ''flags'' y salta si precede, pero no depende de ninguna instrucción de comparación. (de hecho cualquier operación aritmética realizada anteriormente a un salto condicional puede provocar que este "salte").

; Nemotécnicos más frecuentes
* '''compare''': resta los dos operandos pero no almacena el resultado, solo modifica los ''flags''.
* '''test''': compara un cierto valor especificado con el 0.

#### Instrucciones lógicas 
Realizan operaciones booleanas "bit a bit" entre dos operandos. Como las aritméticas también modifican los ''flags''.

; Nemotécnicos más frecuentes:
* '''and''': el "y" lógico.
* '''or''': el "o inclusivo" lógico.
* '''xor''': el "o exclusivo" lógico.
* '''not''': la negación lógica. (complemento a 1, no confundir con el cambio de signo "negate" que es el complemento a 2).

#### Instrucciones de desplazamiento 
Pueden ser aritmético o lógico y pueden incluir o no rotaciones. Pueden ser de izquierda a derecha.

; Nemotécnicos más frecuentes
* '''shift''': desplazamiento aritmético o lógico.
* '''rotate''': rotación con o sin acarreo.

#### Instrucciones de bits 
Comprueban un bit del operando y su valor lo reflejan en el indicador de cero. Pueden poner un bit a 0 o complementarlo.

; Nemotécnicos más frecuentes
* '''bit test''': comprueba un bit.
* '''bit clear''': comprueba un bit y lo pone a 0.
* '''bit set''': comprueba un bit y lo pone a 1.

#### Instrucciones de control 
Permiten modificar la secuencia normal de ejecución de un programa, puede hacerse por salto condicional relativo o absoluto.

Se clasifican en cuatro grupos:
# '''salto incondicional'''
# '''salto condicional'''
# '''llamada a subrutinas'''
#  '''gestión de las interrupciones'''

#### Saltos 
Pueden ser condicionales o incondicionales, se suelen especificar como ''jump'' o ''branch'', y en el caso de los condicionales se suele llamar ''jcond'' o ''bcond'', donde ''cond'' es una o más letras que indican la condición que ha de cumplirse para que el salto se produzca.

; Incondicional
Salta sin comprobar ninguna condición.
: Nemotécnicos más frecuentes: ''jump'' o ''branch''.

; Condicional
Salta si la condición se cumple.
: Nemotécnicos más frecuentes: ''jcond'' o ''bcond''.

####  Llamadas a subrutinas 
Invoca la ejecución de funciones anteriormente definidas.

: Nemotécnicos más frecuentes: ''call'' (llamada) y ''ret'' (retorno).

#### Gestión de interrupciones 
Se usan para llamar a las rutinas de servicio de interrupción y esto se puede hacer por hardware o bien por software. Necesita una instrucción similar a ''return'' para retornar al contexto anterior pero restableciendo el estado de la máquina, para no afectar a la aplicación a la cual se interrumpió (''iret'').

#### Instrucciones de entrada y salida 
Son instrucciones de transferencia salvo que el origen/destino de dicho flujo es un puerto de un dispositivo de entrada y salida. Estas instrucciones pueden darse mediante dos alternativas:
# '''E/S "mapeada" en memoria''': los periféricos tienen direcciones asignadas de la MP por lo que no se necesitan instrucciones especiales y las operaciones se realizan con las ya vistas, como son: ''load'', ''store'' y ''move''.
# '''E/S independiente''': necesitan unas instrucciones especiales para indicarle al procesador que nos estamos refiriendo al mapa de direcciones de E/S, ya que este mapa y el mapa de memoria son disjuntos.

; Nemotécnicos más frecuentes
* '''input o read''': permite leer información de un puerto y trasladarla a memoria principal.
* '''output o write''': permite escribir información en un puerto de un dispositivo.
* '''test i/o''': lee información de control de un periférico.
* '''control i/o''': envía información de control hacia un periférico.

#### Instrucciones de control y misceláneas 
Nemoténicos más frecuentes:
* '''halt''': detiene la ejecución del programa hasta que una interrupción arranca otro programa.
* '''wait''': sirve para detener la ejecución de un programa hasta que sucede un determinado evento que no es una interrupción (otra condición externa al primer programa).
* '''nop''': no realiza ninguna operación, sirve para rellenar huecos en un programa o temporizar esperas.
* '''enable''': habilita las interrupciones.
* '''disable''': deshabilita las interrupciones.
* '''test and set''': se utiliza para la implementación de la exclusión mutua, esto es, que un procesador no pueda acceder a un determinado recurso que está siendo usado por otro procesador en ese mismo momento.

Se usan como semáforos, esto es, se declara una variable entera que tendrá el valor 0 si el recurso esta libre y 1 si está siendo utilizado, de manera que si un procesador comprueba y el semáforo está en 1 tendrá que esperar hasta que este cambie a 0 (1 = semáforo rojo y 0 = semáforo verde).
