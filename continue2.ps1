$cadena = "Hola, buenas tardes"
$cadena2 = "Hola, buenas noches"

switch -Wildcard ($cadena, $cadena2)
{
    "Hola, buenas*" {"[$_] coincide con [Hola, buenas*]"}
    "Hola, bue*" {"[$_] coincide con [Hola, bue*]"; Continue}
    "Hola," {"[$_] coincide con [Hola,]" }
    "Hola, buenas tardes" {"[$_] coincide con [Hola, buenas tardes]"}
}