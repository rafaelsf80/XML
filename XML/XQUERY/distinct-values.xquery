<Ventas>
{
    for $l in distinct-values(doc("ventas.xml")//Vendedor)
    return
    <Vendedor>
    { $l }
    </Vendedor>
    }
</Ventas>
