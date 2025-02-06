$email = 'antonio.yanez@udc.es'
$email2 = 'antonio.yanez@usc.gal'
$url = 'https://www.dc.fi.udc.es/~afyanez/Docencia/2023'

switch -Regex ($url, $email, $email2)
{
    '^\w+\.\w+@(udc|usc|edu)\.es|gal$' { "[$_] es una direccion de correo electronico academica" }
    '^ftp:\/\/.*$' { "[$_] es una direccion ftp" }
    '^(http[s]?):\/\/.*$' { "[$_] es una direccion web, que utiliza [${matches[1]}]" }
}
