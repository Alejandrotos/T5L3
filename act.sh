    if [ $1 -ge 1 ] && [ $1 -le 1999 ]; then
        case $1 in
            1) num_decimal=I;;
            4) num_decimal=IV;;
            5) num_decimal=V;;
            9) num_decimal=IX;;
            10) num_decimal=X;;
            40) num_decimal=XL;;
            50) num_decimal=L;;
            90) num_decimal=XC;;
            100) num_decimal=C;;
            400) num_decimal=CD;;
            500) num_decimal=D;;
            900) num_decimal=CM;;
            1000) num_decimal=M;;
        esac
        echo "El número decimal $1 es equivalent a $num_decimal en números romanos."
    else
        echo "Error: El número ha de ser entre 1 i 1999."
    fi
if echo "$1" | grep -q '[^IVXLCDM]'; then
    echo "Error: El parametro no es un numero romano valido"
else
    case $1 in
        I) num_decimal=1;;
        IV) num_decimal=4;;
        V) num_decimal=5;;
        IX) num_decimal=9;;
        X) num_decimal=10;;
        XL) num_decimal=40;;
        L) num_decimal=50;;
        XC) num_decimal=90;;
        C) num_decimal=100;;
        CD) num_decimal=400;;
        D) num_decimal=500;;
        CM) num_decimal=900;;
        M) num_decimal=1000;;
    esac
    echo "El número romano $1 es equivalent a $num_decimal en números decimales."
fi