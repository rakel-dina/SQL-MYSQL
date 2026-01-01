# SELECT parte 3



### Agrupando 

**GROUP BY**

```

select * from cursos;

select * from cursos order by carga;

select carga from cursos group by carga;

```



### Para mostrar a quantidade dos grupos: 

```

select carga, count(nome) from cursos group by carga;

```

#### Ex 2

```

select * from cursos; 

select totaulas from cursos;

select distinct totaulas from cursos; # para mostrar o números total de aulas que cursos existentes,  

mas não mostra quantos cursos tem a mesma quantidade de aulas.

``` 

Desta forma é possível ver o número total de aulas e também a quantidade de cursos com o mesmo número total de aulas. 



```

select totaulas, count(*) from cursos group by totaulas 

order by totaulas; 

```

Tem 4 cursos com o total de aulas igual a 30 por exemplo. Se for selecionar, mostrará o resultado: 
```
select * from cursos where totaulas = 30;
````

### Também é possível selecionar com WHERE:

```

select * from cursos where totaulas > 20;

```

Para selecionar apenas os que tem 30 aulas

```

select * from cursos where totaulas = 30;

```



#### Para agrupá-los:

```

select carga from cursos where totaulas = 30 group by carga;

select carga, count(nome) from cursos where totaulas = 30 group by carga; # para querer saber quantos

select * from cursos where totaulas = 30;

````



### Agrupando e agregando

**HAVING**

```

select ano, count(*) from cursos 

group by ano

order by count(*);

```



Procurando o ano que tem 4 ou mais cursos:

```

select ano, count(*) from cursos 

group by ano

having count(ano) >= 4

order by count(*);

```

dentro do having só pode trabalhar com o campo que foi agrupado. 

```

select ano, count(*) from cursos 

group by ano

having totaulas > 30 

having ano >= 2013 

order by ano;

```

Não é pssivel mostrar nesse ano o grupo que tem o total de aulas maior que 30 , pois não será reconhecido porque não foi agrupado por eles.  

Se quiser agrupar por ano, que tenha o ano maior que 2013.



```

select * from cursos; 

```

```

select ano, count(*) from cursos # Seleciona os anos da tabela de cursos

where totaulas > 30 # onde o total de aulas seja acima de 30 

group by ano  # Agrupa essa seleção por ano 

having ano >= 2013 # dentro desse agrupado so vai mostrar quem tem ano acima de 2013

order by ano; # orderno por este total

```
______

### MÉDIA

```

select avg(carga) from cursos; # media

```

``` 

select * from cursos

where ano > 2015;

``` 

```

select carga, count(*) from  cursos

where ano > 2016

group by carga

having carga > (select avg(carga) from cursos); # Para manter atualizado, com isso não precisa ficar mudando o select

```



