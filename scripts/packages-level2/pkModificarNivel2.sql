CREATE OR REPLACE PACKAGE pkModificar AS

    --Funci�n que permite Modificar un cliente en la base de datos. 
    --Entrada: Id del cliente, Contrasenha del cliente, Nombre del cliente, Cedula del cliente, Direccion del cliente, Fecha de nacimiento del cliente, Telefono del cliente
    PROCEDURE pModificarCliente(ivId VARCHAR2, ivContrasenha VARCHAR2,ivNombre VARCHAR2,ivCedula VARCHAR2,ivDireccion VARCHAR2, ivFecha DATE, ivTelefono VARCHAR2);
   
    --Funci�n que permite Modificar un funcionario en la base de datos. 
    --Entrada: Id del funcionario, Contrasenha del funcionario, Nombre del funcionario, Cedula del funcionario, Direccion del funcionario, Fecha de nacimiento del funcionario, Telefono del funcionario
    PROCEDURE pModificarFuncionario(ivId VARCHAR2, ivContrasena VARCHAR2,ivNombre VARCHAR2,ivCedula VARCHAR2,ivDireccion VARCHAR2, ivFecha DATE, ivTelefono VARCHAR2);
   
    --Funci�n que permite Modificar un Producto en la base de datos. 
    --Entrada: Codigo del Producto, Descripcion del Producto
    PROCEDURE pModificarProducto (ivCodigo VARCHAR2, ivDescripcion VARCHAR2);
    
    --Funci�n que permite Modificar una Solicitud en la base de datos. 
    --Entrada: Numero de la Solicitud, Observciones de la solictud, Estado de la solicitud, Codigo del producto asociado la solicitud, Cedula del cliente asociado a la solicitud, Tipo de la solicitud
    PROCEDURE pModificarSolicitud( ivNumeroSolicitud VARCHAR2,ivObservacion  VARCHAR2,ivEstado  VARCHAR2,ivProductoCodigo VARCHAR2,ivCedulaCliente VARCHAR2,ivTipoCodigo VARCHAR2);
    
    --Funci�n que permite Modificar un Tipo en la base de datos. 
    --Entrada: Tipo del tipo, Descripcion del Tipo
    PROCEDURE pModificarTipo (ivTipo VARCHAR2, ivDescripcion VARCHAR2);
    
END pKModificar;
/


CREATE OR REPLACE PACKAGE BODY pkModificar AS 
    
    PROCEDURE pModificarCliente(ivId VARCHAR2, ivContrasenha VARCHAR2,ivNombre VARCHAR2,ivCedula VARCHAR2,ivDireccion VARCHAR2, ivFecha DATE, ivTelefono VARCHAR2)
    IS
    BEGIN
        pkCliente.pModificarCliente(ivId, ivContrasenha, ivNombre, ivCedula, ivDireccion, ivFecha, ivTelefono);
    END pModificarCliente;
    
    
    PROCEDURE pModificarFuncionario(ivId VARCHAR2, ivContrasena VARCHAR2,ivNombre VARCHAR2,ivCedula VARCHAR2,ivDireccion VARCHAR2, ivFecha DATE, ivTelefono VARCHAR2)
    IS
    BEGIN 
        pkFuncionario.pModificarFuncionario(ivId,ivContrasena,ivNombre,ivCedula,ivDireccion,ivFecha,ivTelefono);
    END pModificarFuncionario;
    
    
    PROCEDURE pModificarProducto (ivCodigo VARCHAR2, ivDescripcion VARCHAR2)
    IS
    BEGIN 
        pkProducto.pModificarProducto(ivCodigo,ivDescripcion);
    END pModificarProducto;
    
    
    PROCEDURE pModificarSolicitud( ivNumeroSolicitud VARCHAR2,ivObservacion  VARCHAR2,ivEstado  VARCHAR2,ivProductoCodigo VARCHAR2,ivCedulaCliente VARCHAR2,ivTipoCodigo VARCHAR2)
    IS
    BEGIN
        pkSolicitud.pModificarSolicitud(ivNumeroSolicitud,ivObservacion,ivEstado,ivProductoCodigo,ivCedulaCliente,ivTipoCodigo);
    END pModificarSolicitud;
    
    
    PROCEDURE pModificarTipo (ivTipo VARCHAR2, ivDescripcion VARCHAR2)
    IS
    BEGIN
        pkTipo.pModificarDescripcionTipo(ivTipo,ivDescripcion);
    END pModificarTipo;
    

END pkModificar;
