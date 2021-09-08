CREATE TABLE fotos (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    nombre VARCHAR (50) NOT NULL,
    barrio VARCHAR (50) NOT NULL,
    tamaño VARCHAR (50) NOT NULL,
    ruta   VARCHAR (200) NOT NULL,
    borrado boolean NOT NULL DEFAULT 'false'
);


CREATE TABLE descargas(
       id BIGSERIAL NOT NULL PRIMARY KEY,
       fecha date NOT NULL,
       foto_id int REFERENCES fotos (id) NOT NULL
);




SELECT *FROM fotos;
SELECT *FROM descargas;

UPDATE fotos SET borrado = true WHERE id = 180;    {/*Boorado logico*/}

SELECT * FROM fotos WHERE borrado = false;       {/*filtrar por las fotos que no tiene un borrado logico*/}


SELECT d.fecha, f.*
FROM descargas d
   INNER JOIN  fotos f ON f.id = d.foto_id;



insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_01', 'Aguada', 'Grande', '\imagenes\Aguada_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_02', 'Aguada', 'Grande', '\imagenes\Aguada_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_03', 'Aguada', 'Grande', '\imagenes\Aguada_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_04', 'Aguada', 'Grande', '\imagenes\Aguada_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_05', 'Aguada', 'Grande', '\imagenes\Aguada_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_06', 'Aguada', 'Grande', '\imagenes\Aguada_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_07', 'Aguada', 'Grande', '\imagenes\Aguada_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_08', 'Aguada', 'Grande', '\imagenes\Aguada_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_09', 'Aguada', 'Grande', '\imagenes\Aguada_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_10', 'Aguada', 'Grande', '\imagenes\Aguada_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_11', 'Aguada', 'Grande', '\imagenes\Aguada_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_12', 'Aguada', 'Grande', '\imagenes\Aguada_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_01', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_03', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_02', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_04', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_05', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_06', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_07', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_08', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_09', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_10', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_11', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_12', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_13', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_14', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_15', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_16', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_17', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_17.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_18', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_18.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_19', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_19.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_20', 'Barrio Sur', 'Grande', '\imagenes\Barrio_Sur_20.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_01', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_02', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_03', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_04', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_05', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_06', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_07', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_08', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_09', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_10', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_11', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_12', 'Bella Vista', 'Grande', '\imagenes\Bella_Vista_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_01', 'Capurro', 'Grande', '\imagenes\Capurro_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_02', 'Capurro', 'Grande', '\imagenes\Capurro_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_03', 'Capurro', 'Grande', '\imagenes\Capurro_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_04', 'Capurro', 'Grande', '\imagenes\Capurro_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_05', 'Capurro', 'Grande', '\imagenes\Capurro_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_06', 'Capurro', 'Grande', '\imagenes\Capurro_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_07', 'Capurro', 'Grande', '\imagenes\Capurro_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_08', 'Capurro', 'Grande', '\imagenes\Capurro_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_09', 'Capurro', 'Grande', '\imagenes\Capurro_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_10', 'Capurro', 'Grande', '\imagenes\Capurro_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_11', 'Capurro', 'Grande', '\imagenes\Capurro_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_12', 'Capurro', 'Grande', '\imagenes\Capurro_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_13', 'Capurro', 'Grande', '\imagenes\Capurro_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_14', 'Capurro', 'Grande', '\imagenes\Capurro_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_15', 'Capurro', 'Grande', '\imagenes\Capurro_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_16', 'Capurro', 'Grande', '\imagenes\Capurro_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_01', 'Centro', 'Grande', '\imagenes\Centro_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_02', 'Centro', 'Grande', '\imagenes\Centro_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_03', 'Centro', 'Grande', '\imagenes\Centro_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_04', 'Centro', 'Grande', '\imagenes\Centro_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_05', 'Centro', 'Grande', '\imagenes\Centro_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_06', 'Centro', 'Grande', '\imagenes\Centro_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_07', 'Centro', 'Grande', '\imagenes\Centro_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_08', 'Centro', 'Grande', '\imagenes\Centro_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_09', 'Centro', 'Grande', '\imagenes\Centro_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_10', 'Centro', 'Grande', '\imagenes\Centro_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_11', 'Centro', 'Grande', '\imagenes\Centro_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_12', 'Centro', 'Grande', '\imagenes\Centro_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_13', 'Centro', 'Grande', '\imagenes\Centro_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_14', 'Centro', 'Grande', '\imagenes\Centro_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_15', 'Centro', 'Grande', '\imagenes\Centro_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_16', 'Centro', 'Grande', '\imagenes\Centro_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_01', 'Cordon', 'Grande', '\imagenes\Cordon_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_02', 'Cordon', 'Grande', '\imagenes\Cordon_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_03', 'Cordon', 'Grande', '\imagenes\Cordon_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_04', 'Cordon', 'Grande', '\imagenes\Cordon_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_05', 'Cordon', 'Grande', '\imagenes\Cordon_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_06', 'Cordon', 'Grande', '\imagenes\Cordon_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_07', 'Cordon', 'Grande', '\imagenes\Cordon_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_08', 'Cordon', 'Grande', '\imagenes\Cordon_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_09', 'Cordon', 'Grande', '\imagenes\Cordon_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_10', 'Cordon', 'Grande', '\imagenes\Cordon_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_11', 'Cordon', 'Grande', '\imagenes\Cordon_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_12', 'Cordon', 'Grande', '\imagenes\Cordon_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_01', 'Mercado Modelo', 'Grande', '\imagenes\Mercado_Modelo_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_02', 'Mercado Modelo', 'Grande', '\imagenes\Mercado_Modelo_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_03', 'Mercado Modelo', 'Grande', '\imagenes\Mercado_Modelo_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_04', 'Mercado Modelo', 'Grande', '\imagenes\Mercado_Modelo_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_05', 'Mercado Modelo', 'Grande', '\imagenes\Mercado_Modelo_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_06', 'Mercado Modelo', 'Grande', '\imagenes\Mercado_Modelo_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_07', 'Mercado Modelo', 'Grande', '\imagenes\Mercado_Modelo_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_08', 'Mercado Modelo', 'Grande', '\imagenes\Mercado_Modelo_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_01', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_02', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_03', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_04', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_05', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_06', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_07', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_08', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_09', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_10', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_11', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_12', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_13', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_14', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_15', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_16', 'Parque Batlle', 'Grande', '\imagenes\Parque_Batlle_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_01', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_02', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_03', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_04', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_05', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_06', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_07', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_08', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_09', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_10', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_11', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_12', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_13', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_14', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_15', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_16', 'Parque Rodo', 'Grande', '\imagenes\Parque_Batlle_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_01', 'Pocitos', 'Grande', '\imagenes\Pocitos_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_02', 'Pocitos', 'Grande', '\imagenes\Pocitos_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_03', 'Pocitos', 'Grande', '\imagenes\Pocitos_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_04', 'Pocitos', 'Grande', '\imagenes\Pocitos_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_05', 'Pocitos', 'Grande', '\imagenes\Pocitos_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_06', 'Pocitos', 'Grande', '\imagenes\Pocitos_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_07', 'Pocitos', 'Grande', '\imagenes\Pocitos_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_08', 'Pocitos', 'Grande', '\imagenes\Pocitos_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_09', 'Pocitos', 'Grande', '\imagenes\Pocitos_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_10', 'Pocitos', 'Grande', '\imagenes\Pocitos_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_11', 'Pocitos', 'Grande', '\imagenes\Pocitos_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_12', 'Pocitos', 'Grande', '\imagenes\Pocitos_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_01', 'Prado', 'Grande', '\imagenes\Prado_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_02', 'Prado', 'Grande', '\imagenes\Prado_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_03', 'Prado', 'Grande', '\imagenes\Prado_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_04', 'Prado', 'Grande', '\imagenes\Prado_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_05', 'Prado', 'Grande', '\imagenes\Prado_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_06', 'Prado', 'Grande', '\imagenes\Prado_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_07', 'Prado', 'Grande', '\imagenes\Prado_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_08', 'Prado', 'Grande', '\imagenes\Prado_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_09', 'Prado', 'Grande', '\imagenes\Prado_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_10', 'Prado', 'Grande', '\imagenes\Prado_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_11', 'Prado', 'Grande', '\imagenes\Prado_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_12', 'Prado', 'Grande', '\imagenes\Prado_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_01', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_02', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_03', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_04', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_05', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_06', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_07', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_08', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_09', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_10', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_11', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_12', 'Tres Cruces', 'Grande', '\imagenes\Tres_Cruces_12.jpg');












