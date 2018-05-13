/*
	administracion de usuarios en mysql
    Javier González Rives
*/
use trenesbilletes;
-- borrado
drop user if exists user1;
drop user if exists user2;
drop user if exists user3;

-- CREACION DE USUARIOS
create user user1@localhost identified by '1234';
create user user2@localhost identified by '4321';
create user user3@localhost identified by '2314';

-- borrado
drop user if exists user1;
drop user if exists user2;
drop user if exists user3;

-- b usuario1 permisos hacer consultas
grant select on *.* to user1@localhost;

-- c  consultar y modificar gestion proyectos limitar conexiones
grant select , update on table gestionproyectos.*  to 
user2@localhost;
grant select , update on table trenesbilletes.*  to 
user2@localhost;
alter user user2@localhost with max_user_connections 2;

-- d annadir poderes de gestion de usuarios a user3
grant create user on *.* to user3@localhost;
grant grant option on trenesbilletes.* to user3@localhost;
grant grant option on gestionproyectos.* to user3@localhost;

flush privileges;
-- 3 ------------------------------------------
-- ver privilegios de cada usuario creado
show grants for user1@localhost;
show grants for user2@localhost;
show grants for user3@localhost;

-- crear usuario admin con todos los privilegios

create user admin@localhost identified by 'Curso2018';

grant all on *.* to admin@localhost;
flush privileges;

-- crear otros usuarios para gestionar trenes

-- usuario que gestiona los la parte referente a trenes
create user if not exists gestortrenes@localhost identified by 'gestortrenes' ;

-- select
grant select,insert,update on trenesbilletes.trenes to gestortrenes@localhost;
grant select,insert,update on trenesbilletes.plazas to gestortrenes@localhost;
grant select,insert,update on trenesbilletes.coches to gestortrenes@localhost;

-- crear usuario que gestione las lineas y el pasage
create user gestorlineas@localhost identified by 'gestorlineas';

grant select on *.* to gestorlineas@localhost;

grant insert,update on trenesbilletes.billetes to gestorlineas@localhost;
grant insert,update on trenesbilletes.estaciones to gestorlineas@localhost;
grant insert,update on trenesbilletes.modificacion_billetes to gestorlineas@localhost;
grant insert,update on trenesbilletes.viajes to gestorlineas@localhost;
grant insert,update on trenesbilletes.trayectos to gestorlineas@localhost;

-- crear ususario para la venta de billetes (cajero)
create user if not exists cajero@localhost identified by 'cajero';


-- selects para ver la informacion necesaria
grant select on trenesbilletes.billetes to cajero@localhost;
grant select on trenesbilletes.modificacion_billetes to cajero@localhost; 

-- modificacion del estado 
grant update (estado_billete)on trenesbilletes.billetes to cajero@localhost;
flush privileges;
-- modificar usuarios
-- modificar constrseña
alter user cajero@localhost identified by '12345';

-- ver todos los privilegios concedidos
show grants for cajero@localhost;
show grants for gestorlineas@localhost;
show grants for gestortrenes@localhost;












