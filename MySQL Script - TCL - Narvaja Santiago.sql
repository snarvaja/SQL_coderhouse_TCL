
-- Elegi la tabla sucursales para realizar los cambios para la entrega de TCL

START TRANSACTION;
DELETE FROM sql_coderhouse_narvaja_santiago.articulos_en_promocion
WHERE id_articulo = 99410;
DELETE FROM sql_coderhouse_narvaja_santiago.articulos_en_promocion
WHERE id_articulo = 469230;
DELETE FROM sql_coderhouse_narvaja_santiago.articulos_en_promocion
WHERE id_articulo = 413054;
DELETE FROM sql_coderhouse_narvaja_santiago.articulos_en_promocion
WHERE id_articulo = 153550;

-- ROLLBACK;
-- COMMIT;

INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento )
VALUES 
(99410, 'GALLETAS', 0.25, 500),
(469230, 'GALLETAS', 0.25, 500),
(413054, 'VINOS', 0.25, 500),
(153550, 'GALLETAS', 0.25, 500);

-- INSERt para probar el savepoint 
START TRANSACTION;
INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento ) VALUES (413035, 'GALLETAS', 0.25, 500);
INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento ) VALUES (466739, 'BELLEZA', 0.15, 1500);
INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento ) VALUES (467417, 'VINOS', 0.25, 500);
INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento ) VALUES (421190, 'GALLETAS', 0.25, 500);
SAVEPOINT lote_1_4;
INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento ) VALUES (420827, 'GALLETAS', 0.25, 500);
INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento ) VALUES (466382, 'GALLETAS', 0.25, 1000);
INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento ) VALUES (370102, 'DECO COTILLON', 0.2, 500);
INSERT INTO sql_coderhouse_narvaja_santiago.articulos_en_promocion (id_articulo , nombre_articulo , porcentaje_descuento , tope_descuento ) VALUES (410284, 'LIBROS', 0.15, 1500);
SAVEPOINT lote_2_8;
-- RELEASE SAVEPOINT lote_1_4;
-- RELEASE SAVEPOINT lote_2_8;
-- ROLLBACK TO lote_1_4;