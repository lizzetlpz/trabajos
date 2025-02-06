$cadena = "Hola, buenas tardes"
$cadena2 = "Hola, buenas noches"

switch -Wildcard ($cadena, $cadena2)
{
    "Hola, buenas*" {"[$_] coincide con [Hola, buenas*]"}
    "Hola, bue*" {"[$_] coincide con [Hola, bue*]"}
    "Hola," {"[$_] coincide con [Hola,]"; Break }
    "Hola, buenas tardes" {"[$_] coincide con [Hola, buenas tardes]"}
}