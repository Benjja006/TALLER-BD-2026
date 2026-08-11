SELECT * FROM CLIENTE;

DECLARE
    TYPE datos_cliente IS RECORD(
        id_cliente NUMbER,
        nombre_cliente VARCHAR2(80),
        apellido_cliente VARCHAR2(80)

    );

v_registro_cliente datos_cliente;
BEGIN   
    SELECT CLIENTE_ID, NOMBRE, APELLIDO
    INTO v_registro_cliente.CLIENTE_ID, v_registro_cliente.nombre_cliente, v_registro_cliente.apellido_cliente
    FROM CLIENTE
    WHERE CLIENTE_ID = 2;

    DBMS_OUTPUT.PUT_LINE('There are ' || v_registro_cliente.id_cliente || v_registro_cliente.nombre_cliente);
END;