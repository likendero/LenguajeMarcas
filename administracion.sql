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
-- grant create user on gestionproyectos.* to user3@localhost;
-- grant create user on trenesbilletes.* to user3@localhost;

flush privileges;


