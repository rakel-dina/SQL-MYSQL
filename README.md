# SELECT parte 3 
Resumo feito do que foi compreendido do curso de SQL com MYSQL do CURSO EM VíDEO com Gustavo Guanabara. 


### Agrupando 

**GROUP BY**

```
select * from cursos;
```
<img width="590" height="534" alt="select part 3 -1" src="https://github.com/user-attachments/assets/8caf11b6-f9fa-4b1f-852b-0c8639c4bf30" />


```
select * from cursos order by carga;
```
<img width="585" height="530" alt="select part 3 -2" src="https://github.com/user-attachments/assets/8a5e2fbd-aef2-464f-a838-f83261c5978d" />


```
select carga from cursos group by carga;
```
<img width="69" height="290" alt="select part 3 -3" src="https://github.com/user-attachments/assets/e3682f0a-badc-4394-bf41-9e104bc32662" />


### Para mostrar a quantidade dos grupos: 

```
select carga, count(nome) from cursos group by carga;
```
<img width="155" height="297" alt="select part 3 -4" src="https://github.com/user-attachments/assets/a5a90459-fea9-40b6-b743-134a1b28f925" />


#### Ex 2

```
select * from cursos; 
select totaulas from cursos;
select distinct totaulas from cursos; # para mostrar o números total de aulas que cursos existentes,  
mas não mostra quantos cursos tem a mesma quantidade de aulas.
``` 


<img width="87" height="296" alt="select part 3 -5" src="https://github.com/user-attachments/assets/ec3703b0-cca9-4c55-9f33-4db92aae32f6" />


Desta forma é possível ver o número total de aulas e também a quantidade de cursos com o mesmo número total de aulas:

```
select totaulas, count(*) from cursos group by totaulas 
order by totaulas; 
```
<img width="147" height="296" alt="select part 3 -6" src="https://github.com/user-attachments/assets/63af30a7-f39b-4793-a34d-a39b5392d616" />


Tem 4 cursos com o total de aulas igual a 30 por exemplo. Se for selecionar, mostrará o resultado: 

```
select * from cursos where totaulas = 30;

````
<img width="615" height="105" alt="select part 3 -7" src="https://github.com/user-attachments/assets/2a9f059f-bc63-4768-8916-d46438811cea" />


### Também é possível selecionar com WHERE:

```
select * from cursos where totaulas > 20;
```

Para selecionar apenas os que tem 30 aulas

```
select * from cursos where totaulas = 30;
```
<img width="616" height="90" alt="select part 3 -8" src="https://github.com/user-attachments/assets/f6750cf7-8fb1-47c9-b435-7c72d18dd3a3" />


#### Para agrupá-los:

```
select carga from cursos where totaulas = 30 group by carga;
select carga, count(nome) from cursos where totaulas = 30 group by carga; # para querer saber quantos
select * from cursos where totaulas = 30;
````
<img width="619" height="106" alt="select part 3 -9" src="https://github.com/user-attachments/assets/8841aa50-b9a7-48ec-a52d-50ae07d2c1ac" />


## Agrupando e agregando

**HAVING**

```
select ano, count(*) from cursos 
group by ano
order by count(*);
```
<img width="132" height="219" alt="select part 3 -10" src="https://github.com/user-attachments/assets/03e1014f-41a3-465f-a168-37db53344a60" />

Procurando o ano que tem 4 ou mais cursos:

```
select ano, count(*) from cursos 
group by ano
having count(ano) >= 4
order by count(*);
```
<img width="127" height="43" alt="select part 3 -11" src="https://github.com/user-attachments/assets/af43a594-6a5a-454d-b669-3143d0cddeee" />


dentro do having só pode trabalhar com o campo que foi agrupado. 

```
select ano, count(*) from cursos 
group by ano
# having totaulas > 30 Não é pssivel mostrar nesse ano o grupo que tem o total de aulas maior que 30 , pois não será reconhecido porque não foi agrupado por eles.
having ano >= 2013 # Se quiser agrupar por ano, que tenha o ano maior que 2013.
order by ano;
```
<img width="129" height="213" alt="select part 3 -12" src="https://github.com/user-attachments/assets/9f6f8ea0-6bcb-4ebf-8a1c-0de2ab5163c3" />


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
<img width="137" height="174" alt="select part 3 -13" src="https://github.com/user-attachments/assets/6e8d61d0-63ce-4c8a-9b58-e1c5b0dd5283" />

______

### MÉDIA

```
select avg(carga) from cursos; # media
```
<img width="99" height="44" alt="select part 3 -14" src="https://github.com/user-attachments/assets/6267bc58-bf7b-4c4f-9467-f2b18438695a" />

``` 
select * from cursos
where ano > 2015;
``` 
<img width="614" height="462" alt="select part 3 -15" src="https://github.com/user-attachments/assets/eac3ed33-e336-48bb-a5f1-87601e522dc9" />


```
select carga, count(*) from  cursos
where ano > 2016
group by carga
having carga > (select avg(carga) from cursos); # Para manter atualizado, com isso não precisa ficar mudando o select
```
<img width="129" height="164" alt="select part 3 -16" src="https://github.com/user-attachments/assets/4c485516-aa65-43a0-8451-aad9bb067d2e" />


