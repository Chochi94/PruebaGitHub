Producto <- c("Arroz","Frijoles","Atun","Salsa Tomate", "Mayonesa", "Carne","Leche",
              "Queso","Natilla")
Tipo <- c(rep("No Percederos",5),rep("Percedera",4))
Precio <- c("1200","1000","1500","650","900","1000","2500","3000","700")
Cantidad <- c(10,15,45,34,25,18,5,7,16)
Proveedor <-c(rep("Dipo",2),rep("Sardimar",1),rep("Gory",2),rep("Arreo",1),
              rep("Dos pinos",3))
Super <- data.frame(Producto=Producto, Tipo=Tipo, Precio=Precio, Proveedor=Proveedor, Cantidad = Cantidad)
head(Super)


filter(Super, Tipo == "No Percederos")
filter(Super, Proveedor == "Gory" & Precio <= 800)
filter(Super, Proveedor != "Dos pinos")

arrange(Super, Producto)
arrange(Super, desc(Precio),Proveedor)
arrange(Super, Tipo, desc(Producto))

select(Super, Producto, Precio)
select(Super, -(Cantidad:Proveedor))
select(Super, Proveedor, Tipo)


distinct(Super, Precio, Tipo)
distinct(Super, Proveedor, Tipo)

Super = mutate(Super, Diferencia = 60 - Cantidad)

transmute(Super,
          Diferencia =  100 - Cantidad,
          new.Diferencia = paste(" Es la cantidad de producto a comprar "),
)

# Unión de dos tablas JOINS 
id <- c (1:6)
Nombre <- c("Juan","Martha","Luis","Julia","Marco","Oscar")
Lugar <- c(rep("Heredia",2),rep("Alajuela",3),"San Jose")

Recursos_Humanos <- data.frame(id=id,Recursos_Humanos= Recursos_Humanos)
Recurso2 <- data.frame(id=id,Recurso2= Recurso2)
head(Recursos_Humanos)
head(Lugar)


Nom_lug <- Recursos_Humanos%>% inner_join(Recurso2, by="id")
head(Nom_lug)
View(Nom_lug)

ggplot(data=df, aes(x=Tallas, y=Marca,)) + 
  geom_bar(stat="identity", position="dodge") 


class(Recurso2)
class(Recursos_Humanos)

data.frame(Recurso2)

d

clientes = data.frame(ClienteId = c(1:4),
                      RazonSocial = c("Cliente 1", "Cliente 2", "Cliente 3", "Cliente 4"))
ventas = data.frame(ClienteId = c(1, 2, 3, 5),
                    
                    
                    hola esto es nuevo
                    
                    
                    
                    
                    mas cosas nuevas
                    Monto = c(110, 50, 60, 90))