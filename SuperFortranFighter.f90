
program juego


character (len=16)  :: id,nombre
integer, dimension(5) :: stats, op_stats
integer :: p,x,cont,let,oponente
integer :: win,rank,a,pas,k,lifes,c,t,tk
integer, dimension(11) :: keys

keys(1:11)=0

call initRandomSeed()

write (*,'(A,$)') 'BIENVENIDO A'
call sleep(1)
print*, ""  
write (*,'(A)') "   _____ "                    
write (*,'(A)') "  / ___/ __  __ ____   ___   _____"                   
write (*,'(A)') "  \__ \ / / / // __ \ / _ \ / ___/"                   
write (*,'(A)') " ___/ // /_/ // /_/ //  __// /  "                   
write (*,'(A)') "/____/ \__,_// .___/ \___//_/   "  
write (*,'(A)') "            /_/   "
call sleep(1)
print*, ""
write (*,'(A)') "    ______              __                    "
write (*,'(A)') "   / ____/____   _____ / /_ _____ ____ _ ____ "
write (*,'(A)') "  / /_   / __ \ / ___// __// ___// __ `// __ \"
write (*,'(A)') " / __/  / /_/ // /   / /_ / /   / /_/ // / / /"
write (*,'(A)') "/_/     \____//_/    \__//_/    \__,_//_/ /_/ "
call sleep(1)
print*, ""
write (*,'(A)') "    ______ _         __     __                "        
write (*,'(A)') "   / ____/(_)____ _ / /_   / /_ ___   _____   "       
write (*,'(A)') "  / /_   / // __ `// __ \ / __// _ \ / ___/   "      
write (*,'(A)') " / __/  / // /_/ // / / // /_ /  __// /       "       
write (*,'(A)') "/_/    /_/ \__, //_/ /_/ \__/ \___//_/        " 
write (*,'(A)') "          /____/ "

call sleep(2)
print*, "Creado por Alfredo Suescun"
print*, "Version 1.0"
print*, "Puedes encontrar la playlist del juego en Spotify, bajo el nombre"
print*, "SUPER FORTRAN FIGHTER"
print*," o en este link:"
print*," https://open.spotify.com/playlist/2VC40SbaQp9vd52uXO5tzZ?si=ITWuBkN6QtmXVsSZT7romw"
call sleep(1)
print*, ""
write (*,'(A,$)') "Por favor ingrese el nombre de su personaje"
print*, ""
read(*,*) id
let = len_trim(id)
nombre = id(1:let)
 
write (*,'(A,$)') "Bienvenido, "
write (*,'(A,$)') nombre
print*, ""
print*, ''

write (*,'(A,$)') "Elija su modo de juego:"
print*, ''
print*, ""
call sleep(1)
print*, ''//achar(27)//'[34m -----  Modo Casual ----- '//achar(27)//'[0m'
print*, "Podrás retar a cualquier rival cuando tu quieras"
print*, "Se recomienda primero jugar Modo Historia"
call sleep(1)
print*, ''//achar(27)//'[32m -----  Modo Historia ----- '//achar(27)//'[0m'
print*, "Deberás ir progresando por el ranking, retando a rivales cada vez mas fuertes"
print*, "hasta ser el mejor boxeador de la historia"
call sleep(1)
print*, ''//achar(27)//'[31m -----  Modo Invicto ----- '//achar(27)//'[0m'
print*, "Solo tienes 1 vida! Si pierdes una pelea, pierdes el juego"
print*, "Que tan lejos puedes llegar?"
call sleep(2)


k=0
do while(k==0)
print*, ""
print*, "Ingrese el modo de juego que desea jugar"
print*, ''//achar(27)//'[34m Casual 1 '//achar(27)//'[0m' 
print*, ''//achar(27)//'[32m Historia 2 '//achar(27)//'[0m' 
print*, ''//achar(27)//'[31m Invicto 3 '//achar(27)//'[0m' 
read(*,*) modo

select case(modo)
case(1)
	print*, ''//achar(27)//'[34m ¡Has elegido modo de juego Casual! '//achar(27)//'[0m'
        print*, ''
	keys(1:11)=1
	lifes=1000
	k=1
	c=1
case(2)
	print*, ''//achar(27)//'[32m ¡Has elegido modo de juego Historia! '//achar(27)//'[0m'
        print*, ''
	lifes=1000
	k=1
	c=0
case(3)
	print*, ''//achar(27)//'[31m ¡Has elegido modo de juego Invicto! '//achar(27)//'[0m'
	print*, "Buena suerte, la necesitarás"
        print*, ''
	lifes=1
	k=1
	c=0
case default
	print*, "Por favor ingrese un modo de juego válido"
	call sleep(1)
end select

end do

do while(tk==0)

print *, '¿Desea un '//achar(27)//'[95m tutorial '//achar(27)//'[0m de cómo jugar?'
print *, 'Ingrese 1 si desea el tutorial'
print*, "Ingrese 0 si desea continuar"
read (*,*) t
select case(t)
case(0)
	tk=1
case(1)
	call tutorial(1)
	tk=1
case default
	print*, "Por favor ingrese una opción valida"
end select

end do





call sleep (2)
print*, "Proseguirá a crear su personaje"
call sleep (1)

call creator(let,nombre,stats)


do while (lifes>0)

rank=12
do a=1,11

if(keys(a)==0) then
else
rank=rank-1
end if

if(rank==1.and.c==0) then
print*, "  ______     _  _        _      _             _   "
print*, " |  ____|   | |(_)      (_)    | |           | | "
print*, " | |__  ___ | | _   ___  _   __| |  __ _   __| |  ___  ___"
print*, " |  __|/ _ \| || | / __|| | / _` | / _` | / _` | / _ \/ __|"
print*, " | |  |  __/| || || (__ | || (_| || (_| || (_| ||  __/\__ \"
print*, " |_|   \___||_||_| \___||_| \__,_| \__,_| \__,_| \___||___/"
print*, ""
call sleep(1)
print*, "ERES EL MEJOR BOXEADOR DE LA HISTORIA!"
call sleep(5)
print*, "Este juego fue creado usando Fortran90, y compilado en una terminal de Windows"
print*, "Creado en Julio de 2020, esta es la version 1.0 del juego"
print*, "***Créditos***"
call sleep(1)
print*, "Programación: Alfredo"
call sleep(1)
print*, "Playtesters: Estanislao y Vitor"
call sleep(1)
print*, "Historia: Alfredo y Axel"
call sleep(1)
print*, "Música: Alfredo y Axel"
call sleep(1)
print*, "Ilustraciones: Axel"
call sleep(1)
print*, "Revision de texto: Axel, Laura y Valentina "
call sleep(1)
print*, "Revision de código: Valmeria y Vitor"
call sleep(1)
print*," Y sobre todo: ¡Gracias a vos por jugar este juego!"
call sleep(1)
print*," Por consultas o comentarios, podes contactarme en en Twitter (@EruditeDemigod), o en Instagram (@Eruditeboi)"
call sleep(3)
print*, "¡Muchas gracias por jugar!"
call sleep(10)
print*,"-----------------------------------------------------------------------------------------------------"
else
end if

end do
pas=0
do while (pas==0)

write (*,'(A,$)') "Tu ranking actual es de "
write (*,'(I2,$)') rank
print*, ""
print*, "Selecciona contra quien quieres pelear"
print*, "Posibles oponentes:"
call sleep(1)

call options(rank,c)

call sleep(1)
print*, "Ingrese el numero del nivel al cual desea ir"

read(*,*) oponente

if(oponente>0) then
	if(keys(oponente)==0) then
		print*, "No has seleccionado un nivel correcto"
	else
	pas=1
	end if
else
pas=1
end if

end do



call pelea(stats,oponente,keys,lifes)

end do

print*, ""
print*,"Te has quedado sin vidas"
print*, ""
print*," _____   ___  ___  ___ _____   _____  _   _  _____ ______ "
print*,"|  __ \ / _ \ |  \/  ||  ___| |  _  || | | ||  ___|| ___ \ "
print*,"| |  \// /_\ \| .  . || |__   | | | || | | || |__  | |_/ /"
print*,"| | __ |  _  || |\/| ||  __|  | | | || | | ||  __| |    / "
print*,"| |_\ \| | | || |  | || |___  \ \_/ /\ \_/ /| |___ | |\ \ "
print*," \____/\_| |_/\_|  |_/\____/   \___/  \___/ \____/ \_| \_|"
print*, ""
call sleep(2)
write(*,'(A,$)')"Llegaste hasta la posición "
write(*,'(I2,$)') rank
write(*,'(A,$)')" en el ranking"
call sleep(10)

contains

!-----------------------------------------------------
subroutine initRandomSeed()

   integer :: i, n, clock
   integer, dimension(:), allocatable :: seed

   call random_seed(size = n)
   allocate(seed(n))
   call system_clock(count=clock)
   seed = clock + 37 * (/ (i - 1, i = 1, n) /)
   call random_seed(put = seed)
   deallocate(seed)

end subroutine initRandomSeed

!-----------------------------------------------------

subroutine fighter(stats,points)

integer, dimension(5) :: stats
!Los 5 stats son, Hp, Fuerza, Velocidad, Defensa, Crit
integer :: points
integer :: n
integer :: s

stats(1:5)=1


write (*,'(A,$)') ''//achar(27)//'[32m Usted tiene '//achar(27)//'[0m'
write (*,*) points
write (*,'(A,$)') ''//achar(27)//'[32m Puntos disponibles para crear su personaje '//achar(27)//'[0m' 
print*, ""
print*, ""
call sleep (1)

write (*,'(A,$)') "Estos puntos se asignaran en 5 categorías"
print*, ""
call sleep(2)
write (*,'(A,$)') ''//achar(27)//'[95m HP '//achar(27)//'[0m : Cuantos puntos de vida tiene'
print*, ""
write (*,'(A,$)') ''//achar(27)//'[31m FUERZA '//achar(27)//'[0m : Cuanto daño puede causar al golpear'
print*, ""
write (*,'(A,$)') ''//achar(27)//'[33m VELOCIDAD '//achar(27)//'[0m : Que tan rápido puede esquivar o atinar golpes'
print*, ""
write (*,'(A,$)') ''//achar(27)//'[34m DEFENSA '//achar(27)//'[0m : Que tanto es resistente a golpes'
print*, ""
write (*,'(A,$)') ''//achar(27)//'[36m SUERTE '//achar(27)//'[0m : Cuales son sus chances de tener un golpe critico'
print*, ""
call sleep(1)
print*, ""
write (*,'(A,$)') "Todas estas stats tiene por defecto un 1, pero puede utilizar sus puntos para mejorarlas"
print*, ""
write (*,'(A,$)') "Primero le asignara la cantidad de hp a su personaje"
print*, ""
call sleep(1)
write (*,'(A,$)') "La cantidad de puntos acá serán multiplicados por 10"
print*, ""
write (*,'(A,$)') "Por ejemplo si asigna 5 puntos, tendra 50 hp"
print*, ""
print*, ""
call sleep (1)
write (*,'(A,$)') '¿Cuántos '//achar(27)//'[95m HP '//achar(27)//'[0m desea que tenga su personaje?' 
print*, ""
read(*,*) n
stats(1)=(n+1)*10
points=points-n

write (*,'(A,$)') ''//achar(27)//'[95m Su personaje tendrá '//achar(27)//'[0m'
write (*,'(I4,$)') stats(1)
write (*,'(A,$)') ''//achar(27)//'[95m puntos de vida '//achar(27)//'[0m'
print*, ""


call sleep(2)
print*, ""
write (*,'(A,$)') 'Ahora le asignara puntos de '//achar(27)//'[31m FUERZA '//achar(27)//'[0m a su personaje'
print*, ""
write (*,'(A,$)') ''//achar(27)//'[32m Le quedan un total de '//achar(27)//'[0m'
write (*,'(I4,$)') points
write (*,'(A,$)') ''//achar(27)//'[32m puntos para asignar '//achar(27)//'[0m'
print*, ""
print*, ""
call sleep(1)
write (*,'(A,$)') '¿Cuántos puntos de '//achar(27)//'[31m FUERZA '//achar(27)//'[0m desea que tenga su personaje?'
print*, ""
read(*,*) n
stats(2)=n+1
points = points-n

write (*,'(A,$)') ''//achar(27)//'[31m Su personaje tendrá '//achar(27)//'[0m'
write (*,'(I2,$)') stats(2)
write (*,'(A,$)') ''//achar(27)//'[31m puntos de fuerza '//achar(27)//'[0m'
print*, ""


call sleep(2)
print*, ""
write (*,'(A,$)') 'Ahora le asignara puntos de '//achar(27)//'[33m VELOCIDAD '//achar(27)//'[0m a su personaje'
print*, ""
write (*,'(A,$)') ''//achar(27)//'[32m Le quedan un total de '//achar(27)//'[0m'
write (*,'(I4,$)') points
write (*,'(A,$)') ''//achar(27)//'[32m puntos para asignar '//achar(27)//'[0m'
print*, ""
print*, ""
call sleep(1)
write (*,'(A,$)') '¿Cuántos puntos de '//achar(27)//'[33m VELOCIDAD '//achar(27)//'[0m desea que tenga su personaje?'
print*, ""
read(*,*) n
stats(3)=n+1
points = points-n

write (*,'(A,$)') ''//achar(27)//'[33m Su personaje tendrá '//achar(27)//'[0m'
write (*,'(I2,$)') stats(3)
write (*,'(A,$)') ''//achar(27)//'[33m puntos de velocidad '//achar(27)//'[0m'
print*, ""


call sleep(2)
print*, ""
write (*,'(A,$)') 'Ahora le asignara puntos de '//achar(27)//'[34m DEFENSA '//achar(27)//'[0m a su personaje'
print*, ""
write (*,'(A,$)') ''//achar(27)//'[32m Le quedan un total de '//achar(27)//'[0m'
write (*,'(I4,$)') points
write (*,'(A,$)') ''//achar(27)//'[32m puntos para asignar '//achar(27)//'[0m'
print*, ""
print*, ""
call sleep(1)
write (*,'(A,$)') '¿Cuántos puntos de '//achar(27)//'[34m DEFENSA '//achar(27)//'[0m  desea que tenga su personaje?'
print*, ""
read(*,*) n
stats(4)=n+1
points = points-n

write (*,'(A,$)') ''//achar(27)//'[34m Su personaje tendrá '//achar(27)//'[0m'
write (*,'(I2,$)') stats(4)
write (*,'(A,$)') ''//achar(27)//'[34m puntos de defensa '//achar(27)//'[0m'
print*, ""


call sleep(2)
print*, ""
write (*,'(A,$)') 'Ahora le asignara puntos de '//achar(27)//'[36m SUERTE '//achar(27)//'[0m a su personaje'
print*, ""
write (*,'(A,$)') ''//achar(27)//'[32m Le quedan un total de '//achar(27)//'[0m'
write (*,'(I4,$)') points
write (*,'(A,$)') ''//achar(27)//'[32m puntos para asignar '//achar(27)//'[0m'
print*, ""
print*, ""
call sleep(1)
write (*,'(A,$)') '¿Cuántos puntos de '//achar(27)//'[36m SUERTE '//achar(27)//'[0m desea que tenga su personaje?'
print*, ""
read(*,*) n
stats(5)=n+1
points = points-n

write (*,'(A,$)') ''//achar(27)//'[36m Su personaje tendrá '//achar(27)//'[0m'
write (*,'(I2,$)') stats(5)
write (*,'(A,$)') ''//achar(27)//'[36m puntos de suerte '//achar(27)//'[0m'
print*, ""
end subroutine fighter

!------------------------------------------------------------------------------------

subroutine creator(let,nombre,stats)

integer:: let
character (len=16) :: nombre
integer, dimension(5) :: stats

integer :: p,x


x=0
do while (x==0)

p=25
call fighter (stats,p)

if (p==0.and.stats(1)>0.and.stats(2)>0.and.stats(3)>0.and.stats(4)>0.and.stats(5)>0) then
        print*, ''
        write (*,'(A,$)') "Su personaje ha sido creado correctamente"
        print*, ""
        print*, ''
        write (*,'(A,$)') "Sus stats son:"
        print*, ""
        write (*,'(A,$)') ''//achar(27)//'[95m HP '//achar(27)//'[0m'
        write (*,'(I3,$)') stats(1)
        print*, ""
        write (*,'(A,$)') ''//achar(27)//'[31m FUERZA '//achar(27)//'[0m'
        write (*,'(I3,$)') stats(2)
        print*, ""
        write (*,'(A,$)') ''//achar(27)//'[33m VELOCIDAD '//achar(27)//'[0m'
        write (*,'(I3,$)') stats(3)
        print*, ""
        write (*,'(A,$)') ''//achar(27)//'[34m DEFENSA '//achar(27)//'[0m' 
        write (*,'(I3,$)') stats(4)
        print*, ""
        write (*,'(A,$)') ''//achar(27)//'[36m SUERTE '//achar(27)//'[0m'
        write (*,'(I3,$)') stats(5)
        print*, ""
        print*, ''
		call sleep(2)
        write (*,'(A,$)') "Si le parecen correctos estos stats, presione 1 para continuar al juego"
		print*, ""
        write (*,'(A,$)') "De lo contrario, presione 0 para volver al creador de personaje"
		print*, ""
        read (*,*) cont
                if (cont == 1) then
                        x=1
                else
                end if
else
        write (*,'(A,$)') "Ha habido un problema en el creador de personaje"
        print*, ""
		call sleep(1)
        write (*,'(A,$)') "Seguramente usted no ha usado todos los puntos asignados en el creador"
        print*, ""
        write (*,'(A,$)') "O, de lo contrario, usó mas puntos de los que le fueron alocados"
        print*, ""
		call sleep(1)
        write (*,'(A,$)') "Será llevado al menu de creador de personaje"
        print*, ""
        write (*,'(A,$)') "Por favor intente creador el personaje de nuevo"

end if

end do

print*, ''
print*, '¡Felicidades, el luchador ' // trim(nombre) // ' ha sido creado de forma correcta!'
print*, ''
write (*,'(A)') "Ahora proseguiras al ring"

end subroutine creator

!------------------------------------------------------------------------------------


subroutine pelea(stats,oponente,keys,lifes)

integer, dimension(5) :: stats, op_stats
integer, dimension(10) :: keys
integer :: oponente
character (len=16) :: op_name
integer, dimension(5) :: bt_stats, bt_op_stats
integer, dimension(7) :: personality
integer :: win,lifes
integer:: skip,p,opp,a,b,round,time,upgrade,u,g
integer:: key

call info(oponente,op_name,op_stats,personality,stats)

bt_stats(1:5)=stats(1:5)
bt_op_stats(1:5) = op_stats(1:5)

write (*,'(A,$)') "Bienvenido a tu pelea contra "
write (*,'(A,$)') op_name
print*


print*, "*DING DING DING* Comienza la pelea"
call sleep(2)
write (*,'(A,$)') ''//achar(27)//'[95m Tu oponente tiene '//achar(27)//'[0m'
write (*,'(I3,$)') op_stats(1)
write (*,'(A,$)') ''//achar(27)//'[95m puntos de vida '//achar(27)//'[0m'
print*, ""
call sleep(1)

round=1

do while (bt_stats(1)>0.and.bt_op_stats(1)>0)
key=0

time=4

write (*,'(A,$)') "~~~~~~~~ ROUND "
write (*,'(I2,$)') round
write (*,'(A,$)') " ~~~~~~~~"
print*, ""


call op_pos(opp, personality)


select case (opp)
case(2)
	print*, 'Puedes observar que tu rival ha adoptado una postura '//achar(27)//'[32m NEUTRAL '//achar(27)//'[0m'
	call ne_pos(op_stats,bt_op_stats)
case(3)
	print*, 'Puedes observar que tu rival ha adoptado una postura '//achar(27)//'[31m OFENSIVA '//achar(27)//'[0m'
	call of_pos(op_stats,bt_op_stats)
case(1)
	print*, 'Puedes observar que tu rival ha adoptado una postura '//achar(27)//'[34m DEFENSIVA '//achar(27)//'[0m'
	call def_pos(op_stats,bt_op_stats)
case default
end select

do while(key==0)

print*, "¿Con qué postura deseas comenzar este round?"
print*, "Ingrese el numero de la postura que desea adoptar"
print*, ''//achar(27)//'[34m DEFENSIVA '//achar(27)//'[0m 1'  
print*, ''//achar(27)//'[32m NEUTRAL '//achar(27)//'[0m 2' 
print*, ''//achar(27)//'[31m OFENSIVA '//achar(27)//'[0m 3' 
print*, "o ingrese 4 si desea un tutorial sobre posturas"
read(*,*) p

select case (p)
case(2)
	print*, 'Has adoptado una postura '//achar(27)//'[32m NEUTRAL '//achar(27)//'[0m'
	call ne_pos(stats,bt_stats)
	key=1
case(3)
	print*, 'Has adoptado una postura '//achar(27)//'[31m OFENSIVA '//achar(27)//'[0m'
	call of_pos(stats,bt_stats)
	key=1
case(1)
	print*, 'Has adoptado una postura '//achar(27)//'[34m DEFENSIVA '//achar(27)//'[0m'
	call def_pos(stats,bt_stats)
	key=1
case(4)
	call tutorial_posturas(1)
case default
	print*, "Por favor ingrese un valor válido"
	call sleep(1)
	print*, ""
end select

end do
key=0

do while(time>0)

time=time-1

k=0
do while(k==0)
	print*, "¿Planeas intentar golpearlo o intentar bloquear su golpe?"
	print*, ''//achar(27)//'[31m GOLPEAR '//achar(27)//'[0m 1'
	print*, ''//achar(27)//'[34m BLOQUEAR '//achar(27)//'[0m 2'
	read (*,*) a
	if(a==0.or.a==1) then
		k=1
	else
		print*, "Por favor ingrese una acción válida"
		call sleep(1)
		print*, ""
	end if
end do

call op_move(b,opp,personality)


if((a*b)==0) then
	if((a==0).and.(b==0)) then
		print*, ''//achar(27)//'[34m ¡Ambos han bloqueado! Nadie resulta lastimado" '//achar(27)//'[0m'
		call sleep(1)
	else
		if (a>b) then
			print*, 'Intentas '//achar(27)//'[31m GOLPEAR '//achar(27)//'[0m' 
			print*, 'a tu rival mientras él '//achar(27)//'[34m BLOQUEA '//achar(27)//'[0m'
			print*, ""
			call sleep(1)
			call punch(bt_stats,bt_op_stats)
		else
			print*, 'Tu rival te intenta '//achar(27)//'[31m GOLPEAR '//achar(27)//'[0m' 
			print*, 'mientras tú '//achar(27)//'[34m BLOQUEAS '//achar(27)//'[0m'
			print*, ""
			call sleep(1)
			call punch(bt_op_stats,bt_stats)
		end if
	end if
else
	print*, ''//achar(27)//'[31m AMBOS SE INTENTAN GOLPEAR AL MISMO TIEMPO '//achar(27)//'[0m'
	print*, ""
	call sleep(1)
	call doble_punch(bt_stats,bt_op_stats)
end if

print*, ""
write(*,'(A,$)') ''//achar(27)//'[95m Te quedan un total de '//achar(27)//'[0m'
if (bt_stats(1)>0) then
	write(*,'(I4,$)') bt_stats(1)
else
	write(*,'(I1,$)') 0
end if
write(*,'(A,$)') ''//achar(27)//'[95m puntos de vida '//achar(27)//'[0m'
print*, ""
write(*,'(A,$)') ''//achar(27)//'[91m A tu oponente le quedan un total de '//achar(27)//'[0m '
if (bt_op_stats(1)>0) then
	write(*,'(I4,$)') bt_op_stats(1)
else
	write(*,'(I1,$)') 0
end if
write(*,'(A,$)') ''//achar(27)//'[91m puntos de vida '//achar(27)//'[0m '
print*, ""
print*, ""
if(bt_stats(1)<1.or.bt_op_stats(1)<1)then
	time=0
else
end if
print*,"--------------------------------------------------"
end do

round=round+1

print*,"////////////////////////////////////////////////////////"
end do


if (bt_stats(1)>0.and.bt_op_stats(1)<1) then
	print*,''//achar(27)//'[32m ¡FELICIDADES, HAS GANADO ESTA PELEA! '//achar(27)//'[0m'
	print*, ""
	keys(oponente+1)=keys(oponente+1)+1
	call sleep(2)
	u=0
	upgrade=0
	if (oponente==10) then
	else
		do while (u==0)
			print*, "¡Puedes mejorar uno de tus stats!"
			print*, "Por favor ingrese el stat que desea mejorar"
			print*, ''//achar(27)//'[95m HP '//achar(27)//'[0m: 1'  
			print*,''//achar(27)//'[31m FUERZA '//achar(27)//'[0m: 2' 
			print*, ''//achar(27)//'[33m VELOCIDAD '//achar(27)//'[0m: 3' 
			print*,''//achar(27)//'[34m DEFENSA '//achar(27)//'[0m: 4'  
			print*, ''//achar(27)//'[36m SUERTE '//achar(27)//'[0m: 5'
			print*, " de lo contrario, ingrese 0 si no desea mejorar ninguno"
			read (*,*) upgrade
			select case (upgrade)
			case(1)
				print*, 'Usted ha decidido mejorar su '//achar(27)//'[95m HP '//achar(27)//'[0m'
				call sleep(1)
				write(*,'(A,$)') "Su hp ha pasado de "
				write(*,'(I3,$)') stats(1)
				stats(1)=stats(1)+10
				write(*, '(A,$)') " a "
				write(*,'(I3)') stats(1)
				u=1
			case(2)
				print*, 'Usted ha decidido mejorar su '//achar(27)//'[31m FUERZA '//achar(27)//'[0m'
				call sleep(1)
				write(*,'(A,$)') "Su fuerza ha pasado de "
				write(*,'(I2,$)') stats(2)
				stats(2)=stats(2)+1
				write(*, '(A,$)') " a "
				write(*,'(I2)') stats(2)
				u=1
			case(3)
				print*, 'Usted ha decidido mejorar su '//achar(27)//'[33m VELOCIDAD '//achar(27)//'[0m'
				call sleep(1)
				write(*,'(A,$)') "Su velocidad ha pasado de "
				write(*,'(I2,$)') stats(3)
				stats(3)=stats(3)+1
				write(*, '(A,$)') " a "
				write(*,'(I2)') stats(3)
				u=1
			case(4)
				print*, 'Usted ha decidido mejorar su '//achar(27)//'[34m DEFENSA '//achar(27)//'[0m'
				call sleep(1)
				write(*,'(A,$)') "Su hp ha pasado de "
				write(*,'(I2,$)') stats(4)
				stats(4)=stats(4)+1
				write(*, '(A,$)') " a "
				write(*,'(I2)') stats(4)
				u=1
			case(5)
				print*, 'Usted ha decidido mejorar su '//achar(27)//'[36m SUERTE '//achar(27)//'[0m'
				call sleep(1)
				write(*,'(A,$)') "Su suerte ha pasado de "
				write(*,'(I2,$)') stats(5)
				stats(5)=stats(5)+1
				write(*, '(A,$)') " a "
				write(*,'(I2)') stats(5)
				u=1
			case(0)
				print*, "Usted no ha decidido no mejorar nada"
				print*, "¡Qué valiente de tu parte!"
				call sleep(1)
				u=1
			case default
				print*, "Por favor ingrese un número válido"
			end select
			call sleep(2)
			write (*,'(A)') "Sus stats ahora son:"
			write (*,'(A,$)') ''//achar(27)//'[95m HP '//achar(27)//'[0m'
			write (*,'(I3)') stats(1)
			write (*,'(A,$)') ''//achar(27)//'[31m FUERZA '//achar(27)//'[0m'
			write (*,'(I3)') stats(2)
			write (*,'(A,$)') ''//achar(27)//'[33m VELOCIDAD '//achar(27)//'[0m'
			write (*,'(I3)') stats(3)
			write (*,'(A,$)') ''//achar(27)//'[34m DEFENSA '//achar(27)//'[0m'
			write (*,'(I3)') stats(4)
			write (*,'(A,$)') ''//achar(27)//'[36m SUERTE '//achar(27)//'[0m'
			write (*,'(I3)') stats(5)
			call sleep(2)
		end do
	end if
else
	if (bt_stats(1)<1.and.bt_op_stats(1)>0) then
		print*,''//achar(27)//'[35m ¡Mala suerte! Has perdido esta pelea... '//achar(27)//'[0m'
		print*, ""
		lifes=lifes-1
		call sleep(3)
	else
		print*,''//achar(27)//'[35m ¡Doble Knockout! Esta pelea ha sido declarada un empate '//achar(27)//'[0m'
		print*, ""
		call sleep(3)
	end if
end if


end subroutine pelea


!--------------------------------------------------------------------------------------

subroutine tutorial (w)

integer:: w,s,x

print*, "Luego de asignarle un nombre a tu personaje, proseguirás a crear tu personaje"
print*, "Esto consiste en asignar un total de 25 puntos en 5 categorías distintas"
print*, "Vida (o HP), Fuerza, Velocidad, Defensa y Suerte"
print*, "Comenzaras tu carrera como boxeador con estos stats, pero cada vez que ganes"
print*, "Una batalla podrás elegir uno de estos stats para mejorar, convirtiéndote"
print*, "En un mejor boxeador a medida que el juego avanza y tus oponentes se vuelvan"
print*, "mas formidables."
call sleep(2)
print*, "-----Ingrese 0 para continuar-----"
read(*,*) s
print*, ""
print*, "En modo historia comenzarás tu carrera como boxeador en la posición 12 en el ranking, y tus"
print*, "Distintos oponentes se irán revelando mientras vayas ganando peleas, hasta llegar a la posición 1"
print*, "No sabrás exactamente los stats de tus oponentes, pero leyendo sus historias"
print*, "Con atención, podrás deducir cualidades de su forma de pelear y cuales son sus"
print*, "Puntos fuertes y débiles. Usa esta información para crear tu estrategia para cada pelea."
print*, "Es posible que debido a cómo armaste tu personaje -o por simple mala suerte- pierdas"
print*, "Una pelea varias veces seguidas. En este caso se recomienda jugar un nivel previo"
print*, "Para hacer a tu personaje aún mas fuerte y mejorar los stats en donde eres vulnerable,"
print*, "O repetir esa pelea hasta que los dados te favorezcan"
call sleep(2)
print*, "-----Ingrese 0 para continuar-----"
read(*,*) s

print*, "Cada pelea gira alrededor de una pregunta:"
print*, "'Este turno, ¿vas a atacar o a bloquear?'"
print*, "Cada turno podrás elegir una de estas dos opciones, y tu oponente hará lo mismo,"
print*, "Siendo posible que ambos se intenten golpear al mismo tiempo!"
print*, "Pero porque intentes golpear a tu oponente, no significa que le vayas a pegar"
print*, "Cada vez que intentas atacar, seras sujeto de la tiranía de un dado, que dentro del"
print*, "Programa decidirá si tu golpe aterriza o no, ¡así que nada es seguro!"
print*, "Existe una 3ra opción: el golpe crítico"
print*, "Si tienes suerte y consigues este golpe, éste será aún mas potente"
print*, "Pero también existe la chance de que tu openente pueda evitar"
print*, "Este golpe mortal, o que el golpe no sea tan mortal."
call sleep(2)
print*, "-----Ingrese 1 para obtener mas información sobre como se calculan los golpes, o 0 para continuar-----"
read(*,*) s
if(s==1) then
	print*, "Si intentas golpear a tu rival mientras el bloquea, tus chances de golpearlo son calculadas como"
	print*, " 70 + (Diferencia de velocidades)x3"
	print*, "Y la cantidad de daño que le harás se calcula como"
	print*, " (Tu Fuerza x 1.5 - Su Defensa )x1.5"
	print*, "Haciendo posible que el golpe no lastime si la defensa es suficientemente alta."
	print*, "También puede ocurrir un golpe critico, las chances de esto se calculan como Suerte x 3"
	print*, "Pero que tu golpe aterrice está sujeto a que tu oponente"
	print*, "No realice una llamada 'Defensa critica'"
	print*, "Si el golpe critico aterriza, tu fuerza sera más que el doble de un golpe normal"
	print*, "Esto aplica de igual manera si te intentan golpear mientras tú bloqueas"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) x
	print*, "Si intentas golpear a tu rival mientras el también te golpea, las chances de golpe son iguales"
	print*, "Y la cantidad de daño que le hacen se calcula como"
	print*, " (Tu Fuerza x 2 - Su Defensa )x2"
	print*, "Las chances del golpe critico se calculan de igual manera, y dependen de que el golpe"
	print*, "Aterrice, y de que el rival no haga una 'Defensa Critica'"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) x
else
end if

print*, ""
print*, "Cada ronda dura un total de 4 turnos, luego de los cuales"
print*, "Cada luchador vuelve a su esquina durante unos segundos y puede re-evaluar"
print*, "Su estrategia para el proximo round y modificar su 'Postura'"
print*, "Más información sobre estas 'Posturas' sera brindada luego"
call sleep(2)
print*, "-----Ingrese 0 para continuar-----"
read(*,*) s
print*, ""
print*, "En el ring, los boxeadores deben pelear hasta que uno se quede sin puntos de vida"
print*, "Si logras noquear a tu rival antes de que este te noquee a ti, ganarás la pelea."
print*, "Es posible que tú y tu rival se noqueen mutuamente el mismo turno"
print*, "Esto se llama un 'Doble Knockout' y la pelea es declara una empate"
print*, ""
print*, "¡Buena suerte!"
	call sleep(1)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s


end subroutine tutorial


subroutine tutorial_posturas(w)

integer:: w,s,x

print*, "Antes de arrancar a pelear -y entre cada round- podrás elegir tu POSTURA."
print*, "La postura que elijas potenciara cierto aspectos de tu habilidad para pelear"
print*, "Una postura defensiva potencia tu DEFENSA y tu SUERTE, pero lastima tu FUERZA"
print*, "Una postura neutral potencia tu SUERTE y tu VELOCIDAD"
print*, "Una postura ofensiva potencia tu FUERZA y tu VELOCIDAD, pero lastima tu DEFENSA"
print*, "Antes de adoptar tu postura, podrás ver qué postura adopta tu rival"
print*, "¡Utiliza esta información para elegir una postura acorde a tu estrategia"
print*, "Para potenciar tus movimientos! Pero ten cuidado si realizas"
print*, "Un movimiento con la postura equivocada; podría costarte caro."
call sleep(2)
print*, "-----Ingrese 1 para obtener mas información sobre Posturas, o 0 para continuar.-----"
read(*,*) s
if(s==1) then
	print*, ""
	print*, "Una postura defensiva multiplica tu defensa x1.5, y tu suerte x2"
	print*, "Pero reduce tu fuerza a un 75%, multiplicándola por x0.75"
	print*, "Esta postura es util para defender ante tu oponente, y poder"
	print*, "resistir sus golpes, y brinda la chance de poder sorprender"
	print*, "ocasionalmente con un golpe critico, aunque tu fuerza no este"
	print*, "en su nivel máximo"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) x
	print*, "Una postura neutra multiplica tu velocidad x1.5 y tu suerte x1.5"
	print*, "Pero no brinda ningún cambio en los otros stats."
	print*, "Es de utilidad para situaciones mixtas, brindando la flexibilidad"
	print*, "De poder defender decentemente, y lastimar a tu rival en una postura"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) x
	print*, "Una postura ofensiva multiplica tu fuerza x1.5 y tu velocidad x1.25"
	print*, "Pero reduce tu defensa un 75%, multiplicándola por x0.75"
	print*, "Esta postura es util para lastimar a tu rival, dándote mas chances"
	print*, "para aterrizar el golpe, y potenciando cuanto lastimas"
	print*, "Sin embargo, es susceptible a recibir ataques, debido a la baja defensa"
	print*, "Y especialmente vulnerable contra golpes críticos, así que ten cuidado"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) x
	else
end if


end subroutine tutorial_posturas

!---------------------------------------------------------------------------------------

subroutine info(oponente,op_name,op_stats,personality,stats)


integer:: oponente,s
integer, dimension(5) :: op_stats,stats
integer, dimension(7) :: personality
character (len=16) :: op_name
!Los primeros 3 numeros de personalidad son affeccion por cada pose EN TOTAL SUMAN 10
!De 4 a 6 es chance de atacar en cada pose
!El 7m0 es "estabilidad"

select case (oponente)
case(0)
	op_name='Saco de papas'
	print*, " +-+-+-+-+ +-+-+ +-+-+-+-+-+"
	print*, " |S|a|c|o| |d|e| |p|a|p|a|s|"
	print*, " +-+-+-+-+ +-+-+ +-+-+-+-+-+"
	call sleep(2)
	print*, "Canción recomendada: The Potato Song"
	call sleep(1)
	print*, "----------------------------------------------------------------------------------------------"
	print*, "Salido de una granja del sur de Durazno, este pobre saco de papas nunca se imaginó"
	print*, "que iba a terminar en un club de boxeo en Montevideo, en vez convertido en pure de papas."
	print*, "Debido a las idas y vueltas de la vida, Saco de papas es usado para entrenar"
	print*, "A los luchadores novatos, que precisan poder golpear algo sin que éste se intente defender"
	print*, "Saco de Papas nunca tuvo buena habilidad para el boxeo, no habiendo estudiando tácticas de lucha"
	print*, "Pero si sabe como mantenerse con la papa cerrada, y soportar golpes por un tiempo"
	print*, "Cuando le preguntaron sobre su opinión de ser el Nivel 0 de un juego de boxeo"
	print*, "el Saco de papas no respondió, pues tan solo era un saco de papas"
	print*,"------------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=130
	op_stats(2)=1
	op_stats(3)=3
	op_stats(4)=2
	op_stats(5)=1
	personality(1)=0
	personality(2)=10
	personality(3)=0
	personality(4)=0
	personality(5)=0
	personality(6)=0
	personality(7)=0
case(1)
	op_name='Juan Normal'
	print*, " |    _ ._   |\ | _ ._._ _  _ |"
	print*, "_||_|(_|| |  | \|(_)| | | |(_||"
	call sleep(2)
	print*, "Canción recomendada: Blinding Lights - The Weekend"
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "Nacido en un hogar de clase media-alta de Parque del Plata, Juan Normal nunca fue muy"
	print*, "fanático de las peleas, prefiriendo leer libros y editar paginas de Wikipedia en su tiempo libre"
	print*, "pero los caminos de la vida llevaron a este joven de 23 años de edad a anotarse a un"
	print*, "club de boxeo, para entrenar en su tiempo libre"
	print*, "'Ésta no fue una decision fácil para mí', declaro Juan Normal, 'Pero un día me enteré"
	print*, "que mi archirrival de los foros de Wikipedia -FanDePerros223- era en realidad mi vecino"
	print*, "y decidí que era hora de tomar venganza por todos los edits que me había borrado>"
	call sleep(2)
	print*, " FanDePerros223 no respondió nuestros mails para preguntarle sobre Juan Normal"
	print*,"--------------------------------------------------------------------------------------------"
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=60
	op_stats(2)=3
	op_stats(3)=3
	op_stats(4)=3
	op_stats(5)=5
	personality(1)=2
	personality(2)=3
	personality(3)=5
	personality(4)=50
	personality(5)=80
	personality(6)=90
	personality(7)=5

case(2)
	op_name='Axel Fort'
	print*,"  /$$$$$$                      /$$       /$$$$$$$$                    /$$    "
	print*," /$$__  $$                    | $$      | $$_____/                   | $$    "
	print*,"| $$  \ $$ /$$   /$$  /$$$$$$ | $$      | $$                        /$$$$$$ "
	print*,"| $$  \ $$ /$$   /$$  /$$__$$ | $$      | $$     /$$$$$$   /$$$$$$  /$$$$$$ "
	print*,"| $$$$$$$$ \  $$$$/ | $$$$$$$$| $$      | $$$$/| $$  \ $$| $$  \__/  | $$  "
	print*,"| $$__  $$ \  $$$$/ | $$$___  | $$      | $$__/| $$  \ $$| $$  \__/  | $$  "
	print*,"| $$  | $$ /$$/\  $$|  $$$$$$$| $$      | $$   |  $$$$$$/| $$        |  $$$$/"
	print*,"|__/  |__/|__/  \__/ \_______/|__/      |__/    \______/ |__/         \___/  "
	call sleep(2)
	print*, "Canción recomendada: Bills - LunchMoney Lewis "
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "Axel Fort -hijo del mítico prócer argentino Ricardo Fort- es la antítesis del dicho"
	print*, "'De tal palo tal astilla': Ninguna de las cualidades excelentes del padre se ven"
	print*, "reflejadas en su único hijo. Heredero de la fortuna Fort, Axel paso los primeros"
	print*, "meses luego de la muerte de su padre manejando las fabricas de chocolate en Argentina,"
	print*, "volviéndose adicto al cacao, y aumentando su pereza tan rápido como la compañía"
	print*, "decaía en valor. Ahora pasa sus días en un cómoda chalet en Miami, gastando lo que"
	print*, "le queda de la fortuna de su padre. Su única preocupación es una cláusula en la herencia,"
	print*, "que establece que todo descendiente de la familia Fort que desee mantener su fortuna"
	print*, "deberá ir al gimnasio todos los días. Si bien Axel no tiene interés en el ejercicio,"
	print*, "de todas formas decidió anotarse en el club de pelea, temiéndo perder su fortuna y por"
        print*, "consiguiente, sus chocolates."
	print*,"--------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=100
	op_stats(2)=3
	op_stats(3)=2
	op_stats(4)=6
	op_stats(5)=2
	personality(1)=2
	personality(2)=7
	personality(3)=1
	personality(4)=30
	personality(5)=25
	personality(6)=90
	personality(7)=3

case(3)
	op_name='Fandango'
	!Velocidad Decente	
	print*, "   .-._.;;;'       "
	print*, " (_).;                     .'                          "
	print*, "    .:--..-.    . ,';. .-..'  .-.    . ,';.  ,:.,'.-.   "
	print*, "   .:'  ;   :   ;;  ;;:   ;  ;   :   ;;  ;; :   ;;   ;' "
	print*, " .-:    `:::'-'';  ;; `:::'`.`:::'-'';  ;;   `-:'`;;' "
	print*, "(_/            ;    `.              ;    `.-._:'     "
	call sleep(2)
	print*, "Musica recomendada: Oye Como Va - Tito Puente"
	call sleep(1)
	print*, "----------------------------------------------------------------------------------------------"
	print*, "Cuando Fandango se anoto al gimnasio, no sabia que todos los días había un club de boxeo,"
	print*, "en realidad no se entero de la existencia del club hasta casi una década luego de ir al"
	print*, "gimnasio por primera vez. Cuando su tutor de Salsa se lesionó su tendón en un misterioso accidente en Cuba,"
	print*, "Fandango encontró en el club una actividad casi tan atractiva como bailar ritmos latinos: el boxeo."
	print*, "El hecho que ahora tenga que dividir su tiempo entre practicas de baile y boxeo no significa que éstas"
	print*, "actividades estén dividas en su psiquis. Es un rival difícil de vencer en una pelea directa"
	print*, "ya que siempre tiene sonando desde sus AirPods una canción de Jarabe De Palo y mueve sus"
	print*, "caderas al frenético ritmo de la música, convirtiéndolo en un objetivo móvil difícil de atinar."
	print*, "Sin embargo la mezcla de sus hobbies también le ha traído problemas, ya que ha sido expulsado"
	print*, "de 2 de los grupos de baile del gimnasio por golpear a su pareja en pleno baile."
	print*,"------------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=80
	op_stats(2)=3
	op_stats(3)=7
	op_stats(4)=2
	op_stats(5)=4
	personality(1)=1
	personality(2)=8
	personality(3)=1
	personality(4)=10
	personality(5)=60
	personality(6)=60
	personality(7)=3
case(4)
	op_name='Ricardinho'
	print*,"  ____  _                   _ _       _           "
	print*," |  _ \(_) ___ __ _ _ __ __| (_)_ __ | |__   ___  "
	print*," | |_) | |/ __/ _` | '__/ _` | | '_ \| '_ \ / _ \ "
	print*," |  _ <| | (_| (_| | | | (_| | | | | | | | | (_) |"
	print*," |_| \_\_|\___\__,_|_|  \__,_|_|_| |_|_| |_|\___/ "
	call sleep(2)
	print*, "Musica recomendada: Anna Julia - Los Hermanos"
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "Nacido en Santana do Livramento, Ricardo Ignacio Morais da Souza -Ricardinho para los amigos-"
	print*, "jugaba en el Sportivo Ypiranga, un club de fútbol semi-profesional local, mientras fantaseaba"
	print*, "con entrar a jugar en las ligas profesionales. Su fantasia fue terminada por una lesion al tobillo"
	print*, "el día de su cumpleaños número 22. Tras su retiro del fútbol, Ricardinho intentó practicar otros deportes,"
	print*, "pero en todos la lesion le fue un impedimento para poder jugar." 
        print*, "Ésta trágica situación lo llevó a una depresión profunda, hasta que finalmente descubrió su nueva pasión:" 
	print*, "la confitería. Uno puede encontrar a Ricardinho en el gimnasio, practicando aero-box sin saltar demasiado,"
	print*, "con el objetivo de mantenerse en forma y encontrar nuevos clientes para venderle sus postres."
	print*, "Nadie sabe con seguridad si sus biceps son resultado del boxeo o de tanto batir merengue."
	print*,"--------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=110
	op_stats(2)=8
	op_stats(3)=2
	op_stats(4)=6
	op_stats(5)=3
	personality(1)=5
	personality(2)=0
	personality(3)=5
	personality(4)=30
	personality(5)=50
	personality(6)=80
	personality(7)=3

case(5)
	op_name='Vale MC'
	print*,"____   ____      .__               _____  _________  "
	print*,"\   \ /   /____  |  |   ____      /     \ \_   ___ \ "
	print*," \   Y   /\__  \ |  | _/ __ \    /  \ /  \/    \  \/ "
	print*,"  \     /  / __ \|  |_\  ___/   /    Y    \     \____"
	print*,"   \___/  (____  /____/\__  /   \___| |__  /\______  /"
	print*,"               \/         \/            \/        \/ "
	call sleep(2)
	print*, "Canción recomendada: Matemática - ToteKing"
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "A Valentina nunca le importaba mucho que pensaban los demás de ella; no le importó cuando"
	print*, "sus padres se mostraron horrorizados cuando les pidió unirse al club de boxeo de la"
	print*, "escuela, y tampoco le importó que sus amigas no entiendan por qué le gustaba sentarse a"
	print*, "tirar freestyle. Aunque ahora se dedica a batallar con sus versos, en vez de sus manos"
	print*, "ella sigue teniendo un par de guantes viejos y una bolsa de boxeo, la cual usa para"
	print*, "desquitarse luego de que vuelve de una competencia donde siente que la 'tonguearon'"
	print*, "Hace mucho que no gana un cinturón boxeando, aunque a veces le gusta llevar sus cinturones"
	print*, "de rap al gimnasio a mostrarle a sus conocidos sobre el mundo del freestyle."
	print*,"--------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=125
	op_stats(2)=7
	op_stats(3)=6
	op_stats(4)=6
	op_stats(5)=5
	personality(1)=4
	personality(2)=2
	personality(3)=4
	personality(4)=40
	personality(5)=50
	personality(6)=70
	personality(7)=3
case(6)
	op_name='Carmen'
	print*,"   _____                                "
	print*,"  / ____|                               "
	print*," | |     __ _ _ __ _ __ ___   ___ _ __  "
	print*," | |    / _` | '__| '_ ` _ \ / _ \ '_ \ "
	print*," | |___| (_| | |  | | | | | |  __/ | | |"
	print*,"  \_____\__,_|_|  |_| |_| |_|\___|_| |_|"
	call sleep(2)
	print*, "Canción recomendada: Toreador - Georges Bizet"
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "Oriunda de Sevilla, desde una edad muy temprana Carmen se enamoró de ver corridas de toros."
	print*, "A diferencia de sus amigas -más interesadas en fantasear con el toreador-, ella quería SER una toreadora."
	print*, "Empezó a practicar sus reflejos y su valentía, hasta que finalmente pudo inscribirse a"
	print*, "una escuela taurina cuando cumplió los 18 años, donde a pesar de su gran habilidad, se"
	print*, "desilusionó rápidamente con el ambiente de su lugar de trabajo, notando las actitudes malignas"
	print*, "de sus compañeros hacia ella, y hacia los toros, dejando el trabajo al par de meses."
	print*, "Ahora ya lejos de su pais, vive con su novia en un mono-ambiente espacioso, dando clases"
	print*, "en un gimnasio local, Donde cada tanto le gusta meterse a la sala de boxeo y pretender"
	print*, "que sigue en una plaza de toros, evadiendo el peligro ágilmente."
	print*,"--------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=60
	op_stats(2)=4
	op_stats(3)=18
	op_stats(4)=1
	op_stats(5)=9
	personality(1)=2
	personality(2)=6
	personality(3)=2
	personality(4)=0
	personality(5)=30
	personality(6)=40
	personality(7)=3
case(7)
	op_name='Fortunato'
	print*,":::::::::: ::::::::  ::::::::: ::::::::::: :::    ::: ::::    :::     ::: ::::::::::: :::::::: "
	print*,":+:       :+:    :+: :+:    :+:    :+:     :+:    :+: :+:+:   :+:   :+: :+:   :+:    :+:    :+: "
	print*,"+:+       +:+    +:+ +:+    +:+    +:+     +:+    +:+ :+:+:+  +:+  +:+   +:+  +:+    +:+    +:+ "
	print*,":#::+::#  +#+    +:+ +#++:++#:     +#+     +#+    +:+ +#+ +:+ +#+ +#++:++#++: +#+    +#+    +:+ "
	print*,"+#+       +#+    +#+ +#+    +#+    +#+     +#+    +#+ +#+  +#+#+# +#+     +#+ +#+    +#+    +#+ "
	print*,"#+#       #+#    #+# #+#    #+#    #+#     #+#    #+# #+#   #+#+# #+#     #+# #+#    #+#    #+# "
	print*,"###        ########  ###    ###    ###      ########  ###    #### ###     ### ###     ########  "
	call sleep(2)
	print*, "Canción recomendada: Night Fever - The Bee Gees"
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "Si buscas la definición de 'suerte' en un diccionario, aparecerá la cara de Fortunato,"
	print*, "Consecuencia de haber ganado un sorteo que lo permitió poner una foto suya en cualquier"
	print*, "pagina de un diccionario."
	print*, "Desde muy temprana edad fue consciente de su suerte, ganando un show de talento local"
	print*, "con un truco de magia en donde el 'adivinaba' la carta de un invitado, aunque en vez"
	print*, "de depender de algún secreto, simplemente dijo la primera carta que se le ocurrió."
	print*, "Desde entonces ha tenido una carrera profesional de lo mas variada: no hubo trabajo donde"
	print*, "no le fuese extremadamente bien. Incluso en su mas reciente, siendo un"
	print*, "boxeador semi-profesional. Aunque sus rivales dicen que ha ganado mas veces por default"
	print*, "luego de que su oponente misteriosamente tuviese diarrea explosiva la noche anterior"
	print*, "al enfrentamiento, que por noquear al oponente en el ring."
	print*, "Si bien es consciente de su gran suerte, Fortunato nunca juega a la quiniela, sabiendo que"
	print*, "el ya gano la lotería mas importante: nacer en una familia de clase alta"
	print*,"--------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=110
	op_stats(2)=6
	op_stats(3)=6
	op_stats(4)=5
	op_stats(5)=17
	personality(1)=2
	personality(2)=4
	personality(3)=4
	personality(4)=30
	personality(5)=50
	personality(6)=80
	personality(7)=3
case(8)
	op_name='Charles Rigoulot'
	print*,"   ______  __                     __                       "
	print*," .' ___  |[  |                   [  |                      "
	print*,"/ .'   \_| | |--.   ,--.   _ .--. | | .---.  .--.          "
	print*,"| |        | .-. | `'_\ : [ `/'`\]| |/ /__\\( (`\]         "
	print*,"\ `.___.'\ | | | | // | |, | |    | || \__., `'.'.         "
	print*," `.____ .'[___]|__]\'-;__/[___]  [___]'.__.'[\__) )        "
	print*," _______      _                           __          _    "
	print*,"|_   __ \    (_)                         [  |        / |_  "
	print*,"  | |__) |   __   .--./)  .--.   __   _   | |  .--. `| |-' "
	print*,"  |  __ /   [  | / /'`\;/ .'`\ \[  | | |  | |/ .'`\ \| |   "
	print*," _| |  \ \_  | | \ \._//| \__. | | \_/ |, | || \__. || |,  "
	print*,"|____| |___|[___].',__`  '.__.'  '.__.'_/[___]'.__.' \__/  "
	print*,"                ( ( __)) "
	call sleep(2)
	print*, "Canción recomendada: Por una Cabeza - Carlos Gardel"
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "La vida de Charles no fue una vida fácil. Le costo mucho aceptar su altura, ya que siempre"
	print*, "le sacaba al menos una cabeza a todo el mundo que conociese. Todo eso cambio cuando"
	print*, "se anoto a una liga de lucha libre con el nombre artístico de 'Alfre el Gigante'."
	print*, "Desde entonces recibía amor constante del publico mientras se movía por el ring con elaboradas historias"
	print*, "ficticias. Pero su fantasia de ser un luchador profesional se acabó cuando un"
	print*, "golpe militar de extrema-derecha en su país natal cerró todos los teatros y lo obligo a moverse clandestinamente."
	print*, "Desde entonces ha huido de su hogar, refugiándose en una nación amigable con sus ideales,"
	print*, "donde practica boxeo y es un oponente temido. Se rumorea que al intentar cruzar"
	print*, "la frontera, un guardia lo intento frenar tras reconocerlo por su altura. Temiendo por su seguridad,"
	print*, "se dice que Charles noqueó al soldado con un solo golpe, pudiendo cruzar la frontera."
	print*,"--------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=200
	op_stats(2)=18
	op_stats(3)=2
	op_stats(4)=8
	op_stats(5)=3
	personality(1)=4
	personality(2)=2
	personality(3)=4
	personality(4)=10
	personality(5)=40
	personality(6)=60
	personality(7)=3
case(9)
	op_name='Rocky Lesnar'
	print*,"    ____             __            __                             "
	print*,"   / __ \____  _____/ /____  __   / /   ___  _________  ___  _____"
	print*,"  / /_/ / __ \/ ___/ //_/ / / /  / /   / _ \/ ___/ __ \/ _ \/ ___/"
	print*," / _, _/ /_/ / /__/ ,< / /_/ /  / /___/  __(__  ) / / /  __/ /    "
	print*,"/_/ |_|\____/\___/_/|_|\__, /  /_____/\___/____/_/ /_/\___/_/     "
	print*,"                      /____/                                      "
	call sleep(2)
	print*, "Canción recomendada: Bangarang - Skrillex"
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "*Se empiezan a escuchar trompetas de fondo*"
	call sleep(1)
	print*, "*Voz de presentador*"
	print*, "¡Mi nombre es Paaaablo Hernaaaaandez, y vengo a introducir a el actual campeón de los pesos"
	print*, "pesados de la liga mundial de For-traaaaaan-Fighterssssss!"
	print*, "Con 1 metro 95 centimetros, él se ha alzado sobre su competencia en todos los aspectos,"
	print*, "derrotando rival tras rival tras rival con una mezcla de atletismo inigualable, defensa"
	print*, "implacable, y una ofensiva bestial."
	print*, "Todo el mundo aquí presente sabe exactamente de quién hablo, y no hay duda de quien va a salir vencedor."
	print*, "Como en la puerta del infierno dice: 'Es por mi que se va a la ciudad del llanto, es por mi"
	print*, "que se va al dolor eterno, abandona la esperanza si entras aquí' El que entre al ring"
	print*, "con ROCKY LESNAR, debe saber que su futuro será aun mas sombrío que si hubiese cruzado ese mítico portal."
	print*,"----------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=160
	op_stats(2)=12
	op_stats(3)=8
	op_stats(4)=11
	op_stats(5)=4
	personality(1)=3
	personality(2)=3
	personality(3)=4
	personality(4)=10
	personality(5)=40
	personality(6)=60
	personality(7)=3
case(10)
	op_name='?????????'
	!Tu clon pero mas fuerte
	print*,"    _.--,-```-.    "
	print*," /    /      '.  "
	print*,"/  ../         ; "
	print*,"\  ``\  .``-    '"
	print*," \ ___\/    \   :"
	print*,"       \    :   |"
	print*,"       |    ;  . "
	print*,"       |    ;  . "
	print*,"      ;   ;   :  "
	print*,"     /   :   :   "
	print*,"     `---'.  |   "
	print*,"      `--..`;    "
	print*,"    .--,_        "
	print*,"    |    |`.     "
	print*,"    `-- -`, ;    "
	print*,"      '---`'     "     
	call sleep(2)
	print*, "Canción recomendada: Megalovania (Undertale) - Toby Fox"
	call sleep(1)
	print*,"--------------------------------------------------------------------------------------------"
	print*, "Luego de tu ultima pelea estas agotado, sabes que diste lo mejor de ti, y ya sabes que eres"
	print*, "el mejor boxeador del mundo."
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	print*, "Pero algo te ha llamado la atención, en el ranking mundial no eres el numero 1, si no que tu"
	print*, "ranking es de 2, '¿QUIÉN ES EL OPONENTE FINAL?', gritas, frustrado '¡YA HE VENCIDO A TODOS!"
	print*, ",¿A QUIÉN MAS DEBO VENCER?>. Mientras terminas de gritar tu ultima pregunta a un gimnasio donde solo estas vos."
	print*, "Escuchas a alguien atrás tuyo: 'Asi que finalmente llegas', dice, con una voz que te resulta"
	print*, "extremadamente familiar, 'Me preguntaba cuanto tiempo más tendría que estar aquí'"
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	print*, "'¿QUIÉN ERES?', preguntas indignado.'¿No me reconoces?', escuchas retumbar a tu alrededor,"
	print*, "'Yo tampoco me reconocí cuando llegué, sin embargo, continúo sorprendiéndome a mí mismo'"
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	print*, "Dudas al escuchar esa respuesta. '¿A qué te refieres? ¡MUESTRATE, COBARDE!' Exclamas, exhausto"
	print*, "De las sombras ves avanzar a una figura extremadamente familiar, aunque un par de décadas mas vieja"
        print*, "'¿QUÉ ES ESTE TRUCO?, gritas mientras te absorbe el pánico. 'No es ningunead truco, te responde la voz"
	print*, "'Yo también pense lo mismo, pero supongo que el hecho que tu lo pienses también implica"
	print*, "que la linea de tiempo no esta rota'. '¿Qué linea de tiempo?', preguntas, cada vez mas confundido"
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	print*, "'Yo también creía ser el mejor, pero nunca me senti satisfecho, por eso fui maldecido por algo"
	print*, "mas poderoso que yo', la figura sale totalmente de las sombras y te das cuenta que su cara"
	print*, "te resultaba familiar por una cuestión ineludible: esa cara es ninguna otra que la tuya."
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	print*, "'Esa maldición me llevó a tener que enfrentarme contra un rival que nunca espere', continuó"
	print*, "la figura 'Tuve que vencerme a mí mismo'. Te sientes demasiado paralizado por el shock para responder."
	print*, "'Pero ese no era mi único castigo: no solo debía vencerme a mi mismo, sino que también yo seria vencido"
	print*, "algún día, y la persona que me vencería seria yo, redoblando mi-... nuestro... sufrimiento'."
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	print*, "Intentas alejarte, pero la figura salta a tu lado y te agarra del brazo"
	print*, "'No puedes evadir tu futuro, ahora que lo sabes debes vencerme, y esperar pacientemente"
	print*, "tu turno de ser vencido, empezando el ciclo de nuevo."
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	print*, "Repentinamente miras a tu alrededor y notas la cuerdas del ring. ¿Siempre estuviste parado ahi?"
	print*, "Ya es muy tarde para cuestionarte, pues sabes que la campana sonará en cualquier momento..."
	print*,"--------------------------------------------------------------------------------------------"
	call sleep(2)
	print*, "-----Ingrese 0 para continuar-----"
	read(*,*) s
	op_stats(1)=stats(1)*2
	op_stats(2)=stats(2)
	op_stats(3)=stats(3)
	op_stats(4)=stats(4)
	op_stats(5)=stats(5)
	personality(1)=4
	personality(2)=2
	personality(3)=4
	personality(4)=30
	personality(5)=50
	personality(6)=80
	personality(7)=3
case default
print*, "No ha ingresado un numero de nivel valido"
end select

end subroutine info
!----------------------------------------------------------------------------------
subroutine options(rank,c)
integer:: rank,c


select case(rank)
case(12)
	print*, "Nivel 0, Oponente: Saco de papas"
case(11)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
case(10)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
case(9)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
case(8)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
	call sleep(1)
	print*, "Nivel 4, Oponente: Ricardinho"
case(7)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
	call sleep(1)
	print*, "Nivel 4, Oponente: Ricardinho"
	call sleep(1)
	print*, "Nivel 5, Oponente: Vale MC"
case(6)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
	call sleep(1)
	print*, "Nivel 4, Oponente: Ricardinho"
	call sleep(1)
	print*, "Nivel 5, Oponente: Vale MC"
	call sleep(1)
	print*, "Nivel 6, Oponente: Carmen"
case(5)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
	call sleep(1)
	print*, "Nivel 4, Oponente: Ricardinho"
	call sleep(1)
	print*, "Nivel 5, Oponente: Vale MC"
	call sleep(1)
	print*, "Nivel 6, Oponente: Carmen"
	call sleep(1)
	print*, "Nivel 7, Oponente: Fortunato"
case(4)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
	call sleep(1)
	print*, "Nivel 4, Oponente: Ricardinho"
	call sleep(1)
	print*, "Nivel 5, Oponente: Vale MC"
	call sleep(1)
	print*, "Nivel 6, Oponente: Carmen"
	call sleep(1)
	print*, "Nivel 7, Oponente: Fortunato"
	call sleep(1)
	print*, "Nivel 8, Oponente: Charles Rigoulot"
case(3)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
	call sleep(1)
	print*, "Nivel 4, Oponente: Ricardinho"
	call sleep(1)
	print*, "Nivel 5, Oponente: Vale MC"
	call sleep(1)
	print*, "Nivel 6, Oponente: Carmen"
	call sleep(1)
	print*, "Nivel 7, Oponente: Fortunato"
	call sleep(1)
	print*, "Nivel 8, Oponente: Charles Rigoulot"
	call sleep(1)
	print*, "Nivel 9, Oponente: Rocky Lesnar"
case(2)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
	call sleep(1)
	print*, "Nivel 4, Oponente: Ricardinho"
	call sleep(1)
	print*, "Nivel 5, Oponente: Vale MC"
	call sleep(1)
	print*, "Nivel 6, Oponente: Carmen"
	call sleep(1)
	print*, "Nivel 7, Oponente: Fortunato"
	call sleep(1)
	print*, "Nivel 8, Oponente: Charles Rigoult"
	call sleep(1)
	print*, "Nivel 9, Oponente: Rocky Lesnar"
	call sleep(1)
	print*, "Nivel 10, Oponente: ????????"
case(1)
	print*, "Nivel 0, Oponente: Saco de papas"
	call sleep(1)
	print*, "Nivel 1, Oponente: Juan Normal"
	call sleep(1)
	print*, "Nivel 2, Oponente: Axel Fort"
	call sleep(1)
	print*, "Nivel 3, Oponente: Fandango"
	call sleep(1)
	print*, "Nivel 4, Oponente: Ricardinho"
	call sleep(1)
	print*, "Nivel 5, Oponente: Vale MC"
	call sleep(1)
	print*, "Nivel 6, Oponente: Carmen"
	call sleep(1)
	print*, "Nivel 7, Oponente: Fortunato"
	call sleep(1)
	print*, "Nivel 8, Oponente: Charles Rigoulot"
	call sleep(1)
	print*, "Nivel 9, Oponente: Rocky Lesnar"
	call sleep(1)
	if(c==0) then
		print*, "Nivel 10, Oponente: Jefe Final"
	else
		print*, "El jefe final solo se puede desbloquear desde el modo historia"
	end if
case default
end select

end subroutine options

!----------------------------------------------------------------------------------
subroutine op_pos(opp,personality)

integer :: opp
integer, dimension(7) :: personality
real :: x
integer:: d,n,o
d=personality(1)
n=personality(1)+personality(2)
o=personality(1)+personality(2)+personality(3)

call random_number(x)
x=x*10

if(x<d) then
	opp=1
else
	if(x>d.and.x<n) then
		opp=2
	else
	opp=3
	end if
end if


end subroutine op_pos

!---------------------------------------------------------------

subroutine op_move(b,opp,personality)

integer :: b,opp
integer, dimension(7) :: personality
integer:: n
real :: x

call random_number(x)
x=x*100


n=personality(opp+3)

if(x>n) then
	b=0
else
	b=1
end if

end subroutine op_move

!-----------------------------------------------------

subroutine ne_pos(stats,bt_stats)

integer, dimension(5) :: stats,bt_stats

bt_stats(2)=stats(2)
bt_stats(3)=(1.5)*stats(3)
bt_stats(4)=stats(4)
bt_stats(5)=(1.5)*stats(5)


end subroutine ne_pos



subroutine of_pos(stats,bt_stats)

integer, dimension(5) :: stats,bt_stats

bt_stats(2)=(1.5)*stats(2)
bt_stats(3)=(1.25)*stats(3)
bt_stats(4)=(0.75)*stats(4)
bt_stats(5)=stats(5)


end subroutine of_pos



subroutine def_pos(stats,bt_stats)

integer, dimension(5) :: stats,bt_stats

bt_stats(2)=(0.75)*stats(2)
bt_stats(3)=stats(3)
bt_stats(4)=(1.5)*stats(4)
bt_stats(5)=2*stats(5)


end subroutine def_pos


!-------------------------------------------------------------------------------------------

subroutine punch(golpeador,golpeado)

integer, dimension(5) :: golpeador, golpeado
integer :: d,x,s,sd
real:: n,nc,nd
!Primero veo si el golpe aterriza

x= 70+(golpeador(3)-golpeado(3))*3
s= golpeador(5)*3
sd= golpeado(5)+golpeado(3)

write(*,'(A,$)') "Las chances de que el golpe aterricen son de "
if(x>0.and.x<100) then
	write(*,'(I2,$)') x
else
	if(x<1) then
		write(*,'(I1,$)') 0
	else
		write(*,'(I3,$)') 100
	end if
end if
write(*,'(A,$)') "%"
print*, ""
call sleep(2)
call random_number(n)
call random_number(nc)
call random_number(nd)
n=n*100
nc=nc*100
nd=nd*100
if (n<x) then
	if(nc<s) then 
		if(nd<sd) then
			print*, ''//achar(27)//'[31m TU GOLPE CRÍTICO ES EVADIDO '//achar(27)//'[0m'
			d=0
		else
			print*, ''//achar(27)//'[33m ¡GOLPE CRITICO! '//achar(27)//'[0m'
			d=(golpeador(2)*3 - golpeado(4))*2
		end if
	else
		print*, ''//achar(27)//'[32m ~~¡El golpe aterriza!~~ '//achar(27)//'[0m'
		d=(golpeador(2)*(1.5) - golpeado(4))*(1.5)
	end if
	if (d<0) then
		print*, ''//achar(27)//'[31m ¡Pero no lastima! '//achar(27)//'[0m'
	else
	golpeado(1)=golpeado(1)-d
	write(*,'(A,$)') "El golpe quita "
	write(*,'(I4,$)') d
	write(*,'(A,$)') " puntos de vida!"
	print*, ""
	end if
else
	print*, ''//achar(27)//'[31m ~~¡El golpe no aterriza!~~ '//achar(27)//'[0m'
end if

call sleep(2)

end subroutine punch

!----------------------------------------------------------------------------------------


subroutine doble_punch (bt_stats,bt_op_stats)


integer, dimension(5) :: bt_stats, bt_op_stats

integer :: x1,x2,d1,d2,s1,s2,sd1,sd2
real :: n1,n2,nc1,nc2,ncd1,ncd2

x1= 70+(bt_stats(3)-bt_op_stats(3))*3
x2= 70+(bt_op_stats(3)-bt_stats(3))*3
s1= bt_stats(5)*3
s2= bt_op_stats(5)*3
sd1= bt_stats(5)+bt_stats(3)
sd2= bt_op_stats(5)+bt_op_stats(3)

write(*,'(A,$)') "Las chances de que tu golpe aterricen son de "
if(x1>0.and.x1<100) then
	write(*,'(I2,$)') x1
else
	if(x1<1) then
		write(*,'(I1,$)') 0
	else
		write(*,'(I3,$)') 100
	end if
end if
write(*,'(A,$)') "%"
print*, ""
write(*,'(A,$)') "Las chances de que el golpe de tu rival aterricen son de "
if(x2>0.and.x2<100) then
	write(*,'(I2,$)') x2
else
	if(x2<1) then
		write(*,'(I1,$)') 0
	else
		write(*,'(I3,$)') 100
	end if
end if
write(*,'(A,$)') "%"
print*, ""
call sleep(3)

call random_number(n1)
n1=n1*100
call random_number(n2)
n2=n2*100
call random_number(nc1)
nc1=nc1*100
call random_number(nc2)
nc2=nc2*100
call random_number(ncd1)
ncd1=ncd1*100
call random_number(ncd2)
ncd2=ncd2*100

if (n1<x1) then
	if(n1<s1) then
		if(ncd2<sd2) then
			print*, ''//achar(27)//'[31m TU GOLPE CRÍTICO ES EVADIDO '//achar(27)//'[0m'
			d1=0
		else
			print*, ''//achar(27)//'[33m ¡GOLPE CRITICO! '//achar(27)//'[0m'
		d1=(bt_stats(2)*4 - bt_op_stats(4))*2
		end if
	else
		print*, ''//achar(27)//'[32m ~~¡Tu golpe aterriza!~~ '//achar(27)//'[0m'
		d1=(bt_stats(2)*2 - bt_op_stats(4))*2
	end if
	if (d1<0) then
		print*, ''//achar(27)//'[31m ¡Pero no lastima a tu rival! '//achar(27)//'[0m'
	else
	bt_op_stats(1)=bt_op_stats(1)-d1
	write(*,'(A,$)') "Tu golpe quita "
	write(*,'(I4,$)') d1
	write(*,'(A,$)') " puntos de vida a tu rival!"
	print*, ""
	end if
else
	print*, ''//achar(27)//'[31m ~~ ¡Tu golpe no aterriza!~~ '//achar(27)//'[0m'
end if
call sleep(1)

if (n2<x2) then
	if(n2<s2) then
		if(ncd1<sd1) then
			print*,  ''//achar(27)//'[36m EVADES EL GOLPE CRITICO DE TU RIVAL '//achar(27)//'[0m'
			d2=0
		else
			print*, ''//achar(27)//'[31m ¡EL GOLPE DE TU RIVAL ES CRITICO! '//achar(27)//'[0m'
			d2=(bt_stats(2)*4 - bt_op_stats(4))*2
		end if
	else
		print*, ''//achar(27)//'[31m "~~¡El golpe de tu rival aterriza!~~" '//achar(27)//'[0m'
		d2=(bt_op_stats(2)*2 - bt_stats(4))*2
	end if
	if (d2<0) then
		print*, ''//achar(27)//'[34m ¡Pero no te lastima! '//achar(27)//'[0m'
	else
	bt_stats(1)=bt_stats(1)-d2
	write(*,'(A,$)') "El golpe de tu rival te quita "
	write(*,'(I4,$)') d2
	write(*,'(A,$)') " puntos de vida!"
	print*, ""
	end if
else
	print*, ''//achar(27)//'[34m ¡Su golpe no aterriza! '//achar(27)//'[0m'
end if
call sleep(1)

end subroutine doble_punch

end program juego
