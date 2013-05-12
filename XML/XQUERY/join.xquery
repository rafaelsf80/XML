<Articulos>
{
    for $l in doc("articulos.xml")//Articulo

    return
   <Articulo>
        {$l/Nombre}  
        { for $v in doc("ventas.xml")//Venta[Articulo=$l/Nombre]
          return
          (: { $v/Vendedor, $v/Fecha } NO FUNCIONA: crear etiqueta de orden superior :)
          <Venta>
          { $v/Vendedor, $v/Fecha }
          </Venta>
        }
    </Articulo>
}
</Articulos>

