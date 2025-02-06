switch ("seis")
{
1 {"[$_] es uno."; Break}
2 {"[$_] es dos."; Break}
3 {"[$_] es tres.; Break"}
4 {"[$_] es cuatro.; Break"}
5 {"[$_] es cinco.; Break"}
"se*" {"[$_] coincide con se*."}
Default {
        "No hay conicidencias con [$_]"
         }
}