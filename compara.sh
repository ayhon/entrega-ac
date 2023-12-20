name=`[ -z "$1" -a -f "convolution.c" ] && echo "convolution" || echo "$1"`
exe="$name-c.elf"
out="$name-c.out"
asm_exe="$name-asm.elf"
asm_out="$name-asm.out"
file="$name.c"
clear
{
    echo '\e[34m[En C]\e[m' \
    && mipsisa64r6-linux-gnuabi64-gcc-10 -mmsa $file -o $exe -static \
    && qemu-mips64 -cpu I6400 $exe > $out \
    && echo '\e[34m[En ASM]\e[m' \
    && mipsisa64r6-linux-gnuabi64-gcc-10 -DASM_VERSION -mmsa $file -o $asm_exe -static \
    && qemu-mips64 -cpu I6400 $asm_exe > $asm_out \
    && echo '\e[34m[Diff de la salida]\e[m' \
    && diff --color $out $asm_out 
} \
&& echo ' \e[42mSUCCESS\e[m ' \
|| echo ' \e[41mFAILED\e[m '