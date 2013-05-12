<Articulos>
{
    for $l in doc("articulos.xml")//Articulo
    let $v := doc("ventas.xml")//Venta[Articulo=$l/Nombre]
    (: for+let juntos para que los motores lo traten como única búsqueda :)
    where exists ($v)
    return
   <Articulo>
        {$l/Nombre}                 
          <Total>{ sum($v/Precio) }</Total>     
    
    (: muestra vendedores de ese articulo :)
    { for $h in $v
      return
      $h/Vendedor
    }
    </Articulo>
}
</Articulos>

