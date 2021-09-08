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



insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_01', 'AGUADA', 'Grande', '\imagenes\Aguada_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_02', 'AGUADA', 'Grande', '\imagenes\Aguada_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_03', 'AGUADA', 'Grande', '\imagenes\Aguada_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_04', 'AGUADA', 'Grande', '\imagenes\Aguada_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_05', 'AGUADA', 'Grande', '\imagenes\Aguada_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_06', 'AGUADA', 'Grande', '\imagenes\Aguada_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_07', 'AGUADA', 'Grande', '\imagenes\Aguada_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_08', 'AGUADA', 'Grande', '\imagenes\Aguada_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_09', 'AGUADA', 'Grande', '\imagenes\Aguada_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_10', 'AGUADA', 'Grande', '\imagenes\Aguada_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_11', 'AGUADA', 'Grande', '\imagenes\Aguada_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Aguada_12', 'AGUADA', 'Grande', '\imagenes\Aguada_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_01', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_03', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_02', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_04', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_05', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_06', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_07', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_08', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_09', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_10', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_11', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_12', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_13', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_14', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_15', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_16', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_17', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_17.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_18', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_18.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_19', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_19.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Barrio_Sur_20', 'BARRIO SUR', 'Grande', '\imagenes\Barrio_Sur_20.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_01', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_02', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_03', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_04', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_05', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_06', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_07', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_08', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_09', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_10', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_11', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Bella_Vista_12', 'BELLA VISTA', 'Grande', '\imagenes\Bella_Vista_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_01', 'CAPURRO', 'Grande', '\imagenes\Capurro_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_02', 'CAPURRO', 'Grande', '\imagenes\Capurro_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_03', 'CAPURRO', 'Grande', '\imagenes\Capurro_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_04', 'CAPURRO', 'Grande', '\imagenes\Capurro_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_05', 'CAPURRO', 'Grande', '\imagenes\Capurro_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_06', 'CAPURRO', 'Grande', '\imagenes\Capurro_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_07', 'CAPURRO', 'Grande', '\imagenes\Capurro_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_08', 'CAPURRO', 'Grande', '\imagenes\Capurro_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_09', 'CAPURRO', 'Grande', '\imagenes\Capurro_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_10', 'CAPURRO', 'Grande', '\imagenes\Capurro_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_11', 'CAPURRO', 'Grande', '\imagenes\Capurro_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_12', 'CAPURRO', 'Grande', '\imagenes\Capurro_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_13', 'CAPURRO', 'Grande', '\imagenes\Capurro_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_14', 'CAPURRO', 'Grande', '\imagenes\Capurro_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_15', 'CAPURRO', 'Grande', '\imagenes\Capurro_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Capurro_16', 'CAPURRO', 'Grande', '\imagenes\Capurro_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_01', 'CENTRO', 'Grande', '\imagenes\Centro_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_02', 'CENTRO', 'Grande', '\imagenes\Centro_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_03', 'CENTRO', 'Grande', '\imagenes\Centro_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_04', 'CENTRO', 'Grande', '\imagenes\Centro_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_05', 'CENTRO', 'Grande', '\imagenes\Centro_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_06', 'CENTRO', 'Grande', '\imagenes\Centro_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_07', 'CENTRO', 'Grande', '\imagenes\Centro_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_08', 'CENTRO', 'Grande', '\imagenes\Centro_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_09', 'CENTRO', 'Grande', '\imagenes\Centro_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_10', 'CENTRO', 'Grande', '\imagenes\Centro_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_11', 'CENTRO', 'Grande', '\imagenes\Centro_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_12', 'CENTRO', 'Grande', '\imagenes\Centro_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_13', 'CENTRO', 'Grande', '\imagenes\Centro_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_14', 'CENTRO', 'Grande', '\imagenes\Centro_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_15', 'CENTRO', 'Grande', '\imagenes\Centro_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Centro_16', 'CENTRO', 'Grande', '\imagenes\Centro_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_01', 'CORDON', 'Grande', '\imagenes\Cordon_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_02', 'CORDON', 'Grande', '\imagenes\Cordon_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_03', 'CORDON', 'Grande', '\imagenes\Cordon_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_04', 'CORDON', 'Grande', '\imagenes\Cordon_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_05', 'CORDON', 'Grande', '\imagenes\Cordon_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_06', 'CORDON', 'Grande', '\imagenes\Cordon_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_07', 'CORDON', 'Grande', '\imagenes\Cordon_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_08', 'CORDON', 'Grande', '\imagenes\Cordon_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_09', 'CORDON', 'Grande', '\imagenes\Cordon_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_10', 'CORDON', 'Grande', '\imagenes\Cordon_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_11', 'CORDON', 'Grande', '\imagenes\Cordon_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Cordon_12', 'CORDON', 'Grande', '\imagenes\Cordon_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_01', 'MERCADO MODELO', 'Grande', '\imagenes\Mercado_Modelo_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_02', 'MERCADO MODELO', 'Grande', '\imagenes\Mercado_Modelo_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_03', 'MERCADO MODELO', 'Grande', '\imagenes\Mercado_Modelo_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_04', 'MERCADO MODELO', 'Grande', '\imagenes\Mercado_Modelo_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_05', 'MERCADO MODELO', 'Grande', '\imagenes\Mercado_Modelo_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_06', 'MERCADO MODELO', 'Grande', '\imagenes\Mercado_Modelo_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_07', 'MERCADO MODELO', 'Grande', '\imagenes\Mercado_Modelo_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Mercado_Modelo_08', 'MERCADO MODELO', 'Grande', '\imagenes\Mercado_Modelo_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_01', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_02', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_03', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_04', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_05', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_06', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_07', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_08', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_09', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_10', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_11', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_12', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_13', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_14', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_15', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Batlle_16', 'PARQUE BATLLE', 'Grande', '\imagenes\Parque_Batlle_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_01', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_02', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_03', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_04', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_05', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_06', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_07', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_08', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_09', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_10', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_11', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_12', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_13', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_13.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_14', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_14.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_15', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_15.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Parque_Rodo_16', 'PARQUE RODO', 'Grande', '\imagenes\Parque_Batlle_16.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_01', 'POCITOS', 'Grande', '\imagenes\Pocitos_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_02', 'POCITOS', 'Grande', '\imagenes\Pocitos_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_03', 'POCITOS', 'Grande', '\imagenes\Pocitos_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_04', 'POCITOS', 'Grande', '\imagenes\Pocitos_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_05', 'POCITOS', 'Grande', '\imagenes\Pocitos_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_06', 'POCITOS', 'Grande', '\imagenes\Pocitos_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_07', 'POCITOS', 'Grande', '\imagenes\Pocitos_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_08', 'POCITOS', 'Grande', '\imagenes\Pocitos_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_09', 'POCITOS', 'Grande', '\imagenes\Pocitos_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_10', 'POCITOS', 'Grande', '\imagenes\Pocitos_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_11', 'POCITOS', 'Grande', '\imagenes\Pocitos_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Pocitos_12', 'POCITOS', 'Grande', '\imagenes\Pocitos_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_01', 'PRADO', 'Grande', '\imagenes\Prado_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_02', 'PRADO', 'Grande', '\imagenes\Prado_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_03', 'PRADO', 'Grande', '\imagenes\Prado_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_04', 'PRADO', 'Grande', '\imagenes\Prado_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_05', 'PRADO', 'Grande', '\imagenes\Prado_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_06', 'PRADO', 'Grande', '\imagenes\Prado_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_07', 'PRADO', 'Grande', '\imagenes\Prado_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_08', 'PRADO', 'Grande', '\imagenes\Prado_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_09', 'PRADO', 'Grande', '\imagenes\Prado_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_10', 'PRADO', 'Grande', '\imagenes\Prado_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_11', 'PRADO', 'Grande', '\imagenes\Prado_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Prado_12', 'PRADO', 'Grande', '\imagenes\Prado_12.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_01', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_01.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_02', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_02.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_03', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_03.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_04', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_04.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_05', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_05.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_06', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_06.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_07', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_07.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_08', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_08.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_09', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_09.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_10', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_10.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_11', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_11.jpg');
insert into fotos (nombre, barrio, tamaño, ruta) values ('Tres_Cruces_12', 'TRES CRUCES', 'Grande', '\imagenes\Tres_Cruces_12.jpg');












