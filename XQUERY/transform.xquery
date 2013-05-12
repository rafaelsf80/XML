<Ventas>
{
    for $l in doc("ventas.xml")//Venta
    where $l/Vendedor = "Juan Sanchez"
    (: where month-from-date($l/Fecha) >= 01 ; es decir, todos loe de Enero-Diciembre:)
     order by number($l/Precio) descending
    return
    <Venta>
        { $l/Vendedor, $l/Articulo, $l/Fecha, $l/Precio }
    </Venta>
}
</Ventas>
