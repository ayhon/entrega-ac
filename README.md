# Plantilla de entrega de AC

Este repositorio configura un _Github Codespace_ para poder compilar programas de
C en la arquitectura mips64 y proporciona un par de scripts para ayudar en el 
desarrollo de la entrega del tema 4 de Arquitectura de Computadores, asignatura 
del Doble Grado de Ingeniería Informática y Matemáticas de la Universida Complutense
de Madrid.

Para abrir el _Github Codespace_ es necesario tener una cuenta _Github Pro_. Si eres
un estudiante de la UCM, tienes acceso a una cuenta Pro con [_Github Education_]([url](https://education.github.com/)https://education.github.com/)

Una vez quede abierto en entorno, puedes ejecutar el script `sh compara.sh archivo` para
compilar el `archivo.c` dos veces, una con la variable `ASM_VERSION` definida. La idea es
que uses `#ifdef` para, en un mismo ejecutable, tener dos implementaciones, una de ellas
implementada en C y otra en ensamblador. Además de compilar, `compara.sh` también devuelve
un diff de los resultados de su ejecución.

🍀 ¡Mucha suerte!
