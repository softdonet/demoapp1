alter table common.tbl_empresa add column endpoint_mobil text default '';
alter table common.tbl_empresa add column genera_mobil boolean default false;


alter table  common.tbl_sucursal add column init_correlativo_resumen integer default 0;

alter table seguridad.tbl_usuario add column comprobante_predeterminado integer default 2;
alter table seguridad.tbl_usuario add column mov_caja_obligatorio boolean default true;
alter table seguridad.tbl_usuario add column modifica_correlativo boolean default false;


alter table seguridad.tbl_usuario add column precio_minimo integer default 0;

ALTER TABLE almacen.tbl_precio add column porcent1 numeric(20,6) default 0;
ALTER TABLE almacen.tbl_precio add column porcent2 numeric(20,6) default 0;
ALTER TABLE almacen.tbl_precio add column porcent3 numeric(20,6) default 0;
ALTER TABLE almacen.tbl_precio add column porcent4 numeric(20,6) default 0;
ALTER TABLE almacen.tbl_precio add column porcent5 numeric(20,6) default 0;

ALTER TABLE almacen.tbl_precio add column util1 numeric(20,6) default 0;
ALTER TABLE almacen.tbl_precio add column util2 numeric(20,6) default 0;
ALTER TABLE almacen.tbl_precio add column util3 numeric(20,6) default 0;
ALTER TABLE almacen.tbl_precio add column util4 numeric(20,6) default 0;
ALTER TABLE almacen.tbl_precio add column util5 numeric(20,6) default 0;


ALTER TABLE ventas.tbl_resumen ADD COLUMN status_id integer default 1;

ALTER TABLE ventas.tbl_cotizacionpreventa add column fecha_ingreso timestamp ;
ALTER TABLE ventas.tbl_cotizacionpreventa add column hora_ingreso time ;

ALTER TABLE ventas.tbl_cotizacionpreventa add column fecha_salida timestamp ;
ALTER TABLE ventas.tbl_cotizacionpreventa add column hora_salida time ;

ALTER TABLE ventas.tbl_cotizacionpreventa add column habitacion_id integer;


ALTER TABLE ventas.tbl_facturacion add estado_comprobante text default '';
ALTER TABLE ventas.tbl_facturacion add estado_contribuyente text default '';
ALTER TABLE ventas.tbl_facturacion add condicion_contribuyente text default '';
ALTER TABLE ventas.tbl_facturacion add observaciones_sunat text default '';


ALTER TABLE seguridad.tbl_usuario ADD COLUMN multi_pago boolean default false;
ALTER TABLE seguridad.tbl_usuario ADD COLUMN visualiza_costo boolean default false;
ALTER TABLE seguridad.tbl_usuario ADD COLUMN unsolomenu boolean default false;
--ALTER TABLE ALMACEN.TBL_DETPRODUCTO ADD COLUMN modifica_preccio  boolean default false;
ALTER TABLE caja.tbl_movcaja ADD COLUMN egreso_tarjeta boolean default false;
ALTER TABLE ventas.tbl_facturacion ADD COLUMN anticipo boolean DEFAULT false;
ALTER TABLE ventas.tbl_facturacion ADD COLUMN con_anticipo boolean DEFAULT false;
ALTER TABLE ventas.tbl_detfacturacion ADD COLUMN anticipo boolean DEFAULT false;
ALTER TABLE ventas.tbl_facturacion ADD COLUMN tipo_factura text DEFAULT '0101'; 
ALTER TABLE ventas.tbl_facturacionanticipo add column PaidAmount numeric(20,2) default 0;
ALTER TABLE almacen.tbl_producto add column cantidad_fraccionada boolean default false;
ALTER TABLE seguridad.tbl_usuario add column visualiza_liquidacioncaja boolean default false;
ALTER TABLE almacen.tbl_producto add column afecto_icbper boolean default false;
ALTER TABLE caja.tbl_detmovpago ADD COLUMN id_vale bigint;
--select *from creditos.tbl_credito
--select *from caja.tbl_movcaja
ALTER TABLE ALMACEN.TBL_PRODUCTO ADD COLUMN garantia_meses integer default 0;
ALTER TABLE ALMACEN.TBL_PRODUCTO ADD COLUMN frecuencia_reviciones integer default 0;

ALTER TABLE creditos.tbl_cuota_notacredito ADD COLUMN id__compra bigint;

alter table planillas.tbl_turnocolaborador add column movimiento_id bigint;--id de la apertura de caja
alter table planillas.tbl_turnocolaborador add column movisucursal_id integer;--id_de la sucursal de la apertura de caja
ALTER TABLE creditos.tbl_credito ADD COLUMN liquidacion_id bigint;
ALTER TABLE creditos.tbl_credito ADD COLUMN fecha_liquidacion date;

ALTER TABLE compras.tbl_detcompra ADD COLUMN descripcion_linea text default '';

select *from compras.tbl_detcompra where descripcion_linea<>''

select *from ventas.v_cabcotizacion 

PaidAmount
--0101 Venta lnterna
--0102 Exportación
--0103 No Domiciliados
--0104 Venta Interna – Anticipos
--0105 Venta Itinerante
--0106 Factura Guía
--0107 Venta Arroz Pilado
--0108 Factura - Comprobante de Percepción
--0110 Factura - Guía remitente
--0111 Factura - Guía transportista
 
ALTER TABLE ventas.tbl_cotizacionpreventa ADD COLUMN ORDEN_COMPRA TEXT DEFAULT '';
ALTER TABLE ventas.tbl_facturacion ADD COLUMN ORDEN_COMPRA TEXT DEFAULT '';
ALTER TABLE ventas.tbl_direccion ADD COLUMN DIRECCION_FISCAL BOOLEAN DEFAULT FALSE;
ALTER TABLE ventas.tbl_facturacion ADD COLUMN FECHA_ENVIO TIMESTAMP;

alter table planillas.tbl_persona add column gestiona_lineacredito boolean default false;

ALTER TABLE ventas.tbl_detfacturacion add column tg boolean default false;--transferencias gratuita
ALTER TABLE ventas.tbl_detfacturacion add column icbper boolean default false;
ALTER TABLE ventas.tbl_detfacturacion add column imp_icbper numeric(20,4) default 0;
ALTER TABLE ventas.tbl_detfacturacion add column afectacionigv_id integer;

ALTER  TABLE caja.tbl_cajabanco ADD COLUMN correo_liq text default '';

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN imp_icbper numeric(20,4) default 0;

select *from ventas.tbl_detfacturacion where imp_icbper>0

ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN enero numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN febrero numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN marzo numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN abril numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN mayo numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN junio numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN julio numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN agosto numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN septiembre numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN octubre numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN noviembre numeric(20,4) default 0;
ALTER TABLE ventas.tbl_objetivoventa ADD COLUMN diciembre numeric(20,4) default 0;

select *from ventas.tbl_objetivoventa

ALTER TABLE ventas.tbl_objetivoventa
drop CONSTRAINT tbl_objetivoventa_id_periodo_fkey ;

ALTER TABLE ventas.tbl_objetivoventa
add CONSTRAINT tbl_objetivoventa_id_periodo_fkey FOREIGN KEY (id_periodo)
      REFERENCES contabilidad.tbl_procesocontable (id_proceso) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;




select *from ventas.tbl_guiaremisionventa 

alter table ventas.tbl_guiaremisionventa add column id_cotizapreventa bigint;

select *from  ventas.tbl_cotizacionpreventa

select *from ventas.tbl_facturacion
select *from ventas.tbl_direccion

alter table ventas.tbl_puntos add column id_facturacion integer;
alter table ventas.tbl_puntos add column id_sucursal integer;

ALTER TABLE ALMACEN.TBL_detproducto ADD codigo_barra text default '';

ALTER TABLE almacen.product_attribute_values ADD COLUMN ID_ESTADO INTEGER DEFAULT 1;
ALTER TABLE almacen.product_attribute_values add column printable boolean default false;


ALTER TABLE COMMON.TBL_COMPROBANTE ADD COLUMN invierte_cuenta BOOLEAN DEFAULT FALSE;
UPDATE COMMON.TBL_COMPROBANTE SET INVIERTE_CUENTA=TRUE WHERE ID_COMPROBANTE=19

ALTER TABLE CAJA.TBL_DETMOVPAGO ADD COLUMN IMP_MORA NUMERIC(20,4) DEFAULT 0;

alter table common.tbl_configserie add column plantilla_a4 text default '';

select id_usuario,*from CAJA.tbl_movcaja where imp_mora>0

ALTER TABLE CAJA.tbl_movcaja ADD COLUMN id_usuarioa varchar(5);

ALTER TABLE CAJA.tbl_movcaja ADD COLUMN fecha_registra timestamp default now();
ALTER TABLE CAJA.tbl_movcaja ADD COLUMN fecha_actualiza timestamp ;
ALTER TABLE CAJA.tbl_movcaja ADD COLUMN fecha_anula timestamp;

ALTER TABLE CAJA.tbl_movcaja ADD COLUMN id_usuario_autoriza varchar(5);

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN imp_retencion numeric(20,4) default 0;

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN pendiente_despacho boolean default false;

ALTER TABLE VENTAS.tbl_percepcion ADD COLUMN ID_COMPROBANTE INTEGER REFERENCES COMMON.TBL_COMPROBANTE(ID_COMPROBANTE);
ALTER TABLE VENTAS.tbl_percepcion ADD COLUMN ID_ESTADO INTEGER ;
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN EGRESO BOOLEAN DEFAULT FALSE;
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN GLOSA TEXT DEFAULT '';
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN REFERENCIA_NCR TEXT DEFAULT '';
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN REFERENCIA_GUIA TEXT DEFAULT '';
ALTER TABLE COMMON.TBL_SUCURSAL ADD COLUMN CODIGO_ESTABLECIMIENTO VARCHAR(50);
ALTER TABLE COMMON.TBL_SUCURSAL ADD COLUMN id_ubigeo VARCHAR(8);
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN dias_credito integer default 0;
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN aprobado integer default 1;
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN ocupacion_cliente varchar(200) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN profecion_cliente varchar(200) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN trabajo_actual_cliente varchar(200) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN cargo_cliente varchar(150) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN dir_trabajo_cliente varchar(500) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN antiguedad_trabajo_cliente varchar(30) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN ingresos_cliente numeric(14,2) default 0;
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN otros_ingresos_cliente numeric(14,2) default 0;

ALTER TABLE ventas.tbl_solicitud_credito add COLUMN ocupacion_conyuge varchar(200) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN profecion_conyuge varchar(200) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN trabajo_actual_conyuge varchar(200) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN cargo_conyuge varchar(150) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN dir_trabajo_conyuge varchar(500) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN antiguedad_trabajo_conyuge varchar(30) default '';
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN ingresos_conyuge numeric(14,2) default 0;
ALTER TABLE ventas.tbl_solicitud_credito add COLUMN otros_ingresos_conyuge numeric(14,2) default 0;

ALTER TABLE planillas.tbl_turnocolaborador  add column liquidacion_id bigint GENERATED ALWAYS AS IDENTITY;
ALTER TABLE planillas.tbl_turnocolaborador  add column fecha_liquidacion date;


ALTER TABLE almacen.tbl_detinventario  add column id_detinventario bigint GENERATED ALWAYS AS IDENTITY;

ALTER TABLE PLANILLAS.tbl_turnocolaborador add column imp_deposito numeric(20,4) default 0 ;
ALTER TABLE PLANILLAS.tbl_turnocolaborador add column imp_tarjeta numeric(20,4) default 0 ;
ALTER TABLE PLANILLAS.tbl_turnocolaborador add column imp_notaabono numeric(20,4) default 0 ;
ALTER TABLE PLANILLAS.tbl_turnocolaborador add column imp_efectivo numeric(20,4) default 0 ;
ALTER TABLE PLANILLAS.tbl_turnocolaborador add column imp_egreso numeric(20,4) default 0 ;
ALTER TABLE PLANILLAS.tbl_turnocolaborador add column imp_saldo_final numeric(20,4) default 0 ;
ALTER TABLE PLANILLAS.tbl_turnocolaborador add column imp_recibido numeric(20,4) default 0 ;
ALTER TABLE PLANILLAS.tbl_turnocolaborador add column imp_diferencia numeric(20,4) default 0 ;
ALTER TABLE PLANILLAS.tbl_turnocolaborador add column liquidado boolean default false;

ALTER TABLE contabilidad.tbl_plancuenta ADD COLUMN FECHA_REG TIMESTAMP DEFAULT NOW();

ALTER TABLE contabilidad.tbl__detalle__asiento__contable ADD COLUMN NRO_OPERACION  varchar(100) DEFAULT '-';
ALTER TABLE contabilidad.tbl__detalle__asiento__contable ADD COLUMN GLOSA  varchar(1500) DEFAULT '-';

ALTER TABLE contabilidad.tbl__asiento__contable add column nro_operacion varchar(100) default  '-';

alter table contabilidad.tbl_axuliardocumento add column  id_cuentadebe bigint;
alter table contabilidad.tbl_axuliardocumento add column  id_cuentahaber bigint;
alter table contabilidad.tbl_axuliardocumento add column  observaciones character varying(500);
alter table contabilidad.tbl_axuliardocumento add column  id_motivo char(2);
alter table contabilidad.tbl_axuliardocumento add column  origen text;

alter table caja.tbl_movcaja add column liquidacion_id bigint;
alter table caja.tbl_movcaja add column fecha_liquidacion date;

alter table COMMON.TBL_EMPRESA add column uss_services varchar(200) default '';
alter table COMMON.TBL_EMPRESA add column pwd_services varchar(200) default '';

alter table COMMON.TBL_EMPRESA add column uss_sunat varchar(200) default '';
alter table COMMON.TBL_EMPRESA add column pwd_sunat varchar(200) default '';

alter table COMMON.TBL_EMPRESA add column email_facturacion varchar(200) default '';
alter table COMMON.TBL_EMPRESA add column pwd_facturacion varchar(200) default '';
alter table COMMON.TBL_EMPRESA add column smtp_facturacion varchar(200) default '';
alter table COMMON.TBL_EMPRESA add column port_facturacion varchar(200) default '';

ALTER TABLE compras.tbl_detcompra ADD COLUMN fecha_reg timestamp default now();
ALTER TABLE compras.tbl_detcompra ADD COLUMN fecha_act timestamp

ALTER TABLE creditos.tbl_detpagocuota ADD COLUMN imp_mora numeric(20,4) default 0;
ALTER TABLE creditos.tbl_detpagocuota ADD COLUMN total_mora numeric(20,4) default 0;

SELECT *FROM creditos.tbl_detpagocuota where total_mora>0


SELECT *FROM COMMON.TBL_EMPRESA

select *from VENTAS.TBL_FACTURACION

ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN IMP_ISC NUMERIC(20,4) DEFAULT 0;
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN EGRESO_MOVILIDAD BOOLEAN DEFAULT FALSE;

alter table planillas.tbl_persona add column id_persona_ref varchar(15);
alter table planillas.tbl_persona add column id_direccion_ref bigint;
alter table planillas.tbl_persona add column facturar_a_clienteref boolean default false;
alter table planillas.tbl_persona add column codigo_persona varchar(30) default '-';
select *from planillas.tbl_persona

select *from caja.tbl_movcaja 
select *from planillas.tbl_turnocolaborador

ALTER TABLE <tablename> ALTER COLUMN <columnname> TYPE 

delete from planillas.tbl_turnocolaborador

ALTER TABLE ventas.tbl_direccion ADD COLUMN id_tipvivienda INTEGER;


ALTER TABLE common.tbl_empresa ADD COLUMN ZONA_EXONERADA BOOLEAN DEFAULT FALSE;

select *from common.tbl_empresa


ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN PESO NUMERIC(20,4) DEFAULT  0;
ALTER TABLE VENTAS.TBL_detFACTURACION ADD COLUMN NUM_UNIDADES NUMERIC(20,4) DEFAULT  0;

SELECT *FROM VENTAS.TBL_DETFACTURACION 
SELECT *FROM COMPRAS.TBL_DETCOMPRA

alter table ventas.tbl_solicitud_credito add column fecha_solicitud timestamp default now();

alter table ventas.tbl_solicitud_credito  add column imp_debe_inicial numeric(20,4) default 0;
alter table ventas.tbl_solicitud_credito  add column imp_interes_cuota numeric(20,4) default 0;
alter table ventas.tbl_solicitud_credito  add column imp_capital_cuota numeric(20,4) default 0;
alter table ventas.tbl_solicitud_credito add column imp_debe_dias integer default 0;
alter table ventas.tbl_solicitud_credito add column intervalo_dias integer default 0;
alter table ventas.tbl_solicitud_credito add column intervalo_entre_cuotas boolean default false;
alter table ventas.tbl_solicitud_credito add column imp_tasa numeric(20,4) default 0;
alter table ventas.tbl_solicitud_credito add column dias_gracia integer default 0;

select *from ventas.tbl_solicitud_credito

alter table almacen.tbl_cabmovalm add column serie_guia char(4) default '';
alter table almacen.tbl_cabmovalm add column serie_comprobante char(4) default '';
alter table almacen.tbl_cabmovalm add column numero_comprobante char(7) default '';
alter table almacen.tbl_cabmovalm add column id_comprobanteguia integer;

ALTER TABLE ALMACEN.TBL_PRODUCTO ADD COLUMN INVENTARIADO BOOLEAN DEFAULT FALSE;
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN REFMOV_ALMACEN TEXT DEFAULT '';

ALTER TABLE  almacen.tbl_detmovalm ADD COLUMN INV_INICIAL BOOLEAN DEFAULT FALSE;


ALTER TABLE ventas.tbl_guiaremisionventa add column  id_comprobanteTransp integer references common.tbl_comprobante(id_comprobante);
ALTER TABLE ventas.tbl_guiaremisionventa add column  serie_GuiaTransp char(4) default '';
ALTER TABLE ventas.tbl_guiaremisionventa add column  numero_GuiaTransp char(7) default '';
ALTER TABLE ventas.tbl_guiaremisionventa add column  gTransportista boolean default false;

ALTER TABLE VENTAS.tbl_guiaremisionventa add column  id_almacenorigen integer;
ALTER TABLE VENTAS.tbl_guiaremisionventa add column  id_almacendestino integer;
ALTER TABLE VENTAS.tbl_guiaremisionventa add column  ingreso boolean default false;
ALTER TABLE VENTAS.tbl_guiaremisionventa add column  salida boolean default false;
alter table ventas.tbl_detguiaventa add column fec_actualiza timestamp;
alter table ventas.tbl_detguiaventa add column fecha timestamp default now();
alter table ventas.tbl_detguiaventa add column id_usuario char(5);

alter table ventas.tbl_guiaremisionventa add column responsable_recogo text default '-';


SELECT *FROM VENTAS.tbl_detguiaventa


 alter TABLE contabilidad.tbl_interfacecontable add column formula text DEFAULT ''::text;
select *from produccion.tbl_detordenproduc


alter table produccion.tbl_detordenproduc add column  descripcion_linea text DEFAULT ''::text;
alter table produccion.tbl_detordenproduc add column  ancho numeric(20,6) DEFAULT 0;
alter table produccion.tbl_detordenproduc add column largo numeric(20,6) DEFAULT 0;
alter table ventas.tbl_items add column id_ordeproduccion bigint ;

alter table ventas.tbl_guiaremisionventa add column id_guiaref integer ;
alter table ventas.tbl_guiaremisionventa add column id_sucursalref integer ;


ALTER TABLE almacen.tbl_detmovalm
  drop CONSTRAINT tbl_detmovalm_pkey;

ALTER TABLE almacen.tbl_detmovalm
  ADD CONSTRAINT tbl_detmovalm_pkey PRIMARY KEY(id_movimiento, item, id_producto, id_unidadkardex, id_almacen);

ALTER TABLE almacen.tbl_detmovalm
  drop CONSTRAINT tbl_detmovalm_id_producto_fkey;
  
ALTER TABLE almacen.tbl_detmovalm
  ADD CONSTRAINT tbl_detmovalm_id_producto_fkey FOREIGN KEY (id_producto, id_unidadkardex)
      REFERENCES almacen.tbl_detproducto (id_producto, id_unidadventa) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE almacen.tbl_detmovalm ADD COLUMN id_demovalm bigint ;


ALTER TABLE compras.tbl_detcompra
  drop CONSTRAINT tbl_detcompras_pkey  ;


ALTER TABLE compras.tbl_detcompra
  ADD CONSTRAINT tbl_detcompras_pkey PRIMARY KEY(item, id_almacen, id_unidadventa, id_producto, id_sucursalcompra, anio, id_compra, id_mes);


ALTER TABLE compras.tbl_detcompra
  drop CONSTRAINT tbl_detcompras_id_producto_fkey1 ;

ALTER TABLE compras.tbl_detcompra
  ADD CONSTRAINT tbl_detcompra_id_producto_fkey FOREIGN KEY (id_producto, id_unidadventa)
      REFERENCES almacen.tbl_detproducto (id_producto, id_unidadventa) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;


ALTER TABLE ventas.tbl_detguiaventa
  drop CONSTRAINT tbl_detguiaventa_id_producto_fkey;
  


ALTER TABLE ventas.tbl_detguiaventa
  ADD CONSTRAINT tbl_detguiaventa_id_producto_fkey FOREIGN KEY (id_producto, id_unidadventa)
      REFERENCES almacen.tbl_detproducto (id_producto, id_unidadventa) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;



INSERT INTO common.tbl_tranzaccion(id_tranzaccion, descripcion_larga, descripcion_corta, id_estado, modulo, tipo)
    VALUES (37, 'SALIDA DE ALMACEN-PRESTAMO-COMODATO', 'SALIDA DE ALMACEN-PRESTAMO-COMODATO', 1, 
            'NS', 'S');

INSERT INTO common.tbl_tranzaccion(id_tranzaccion, descripcion_larga, descripcion_corta, id_estado, modulo, tipo)
    VALUES (38, 'INGRESO POR CONVERSION DE UNIDADES', 'MOVIMIENTO DE ALMACEN POR CONVERSIÓN DE UNIDADES', 1, 
            'NI', 'I');         


INSERT INTO common.tbl_tranzaccion(id_tranzaccion, descripcion_larga, descripcion_corta, id_estado, modulo, tipo)
    VALUES (39, 'SALIDA POR CONVERSION DE UNIDADES', 'MOVIMIENTO DE ALMACEN POR CONVERSIÓN DE UNIDADES', 1, 
            'NS', 'S');                   

DELETE from common.tbl_tranzaccion WHERE ID_TRANZACCION='38'

ALTER TABLE ALMACEN.TBL_PRECIO ADD COLUMN ID_TIPOVENTA INTEGER DEFAULT 1;--1:ENTEROS Y DECIMALES 2: SOLO ENTEROS
ALTER TABLE ALMACEN.TBL_PRECIO ADD COLUMN UNDPRED_COMPRA BOOLEAN DEFAULT FALSE;

ALTER TABLE ALMACEN.TBL_DETPRODUCTO ADD COLUMN ID_TIPOVENTA INTEGER DEFAULT 1;--1:ENTEROS Y DECIMALES 2: SOLO ENTEROS
ALTER TABLE ALMACEN.TBL_DETPRODUCTO ADD COLUMN UNDPRED_COMPRA BOOLEAN DEFAULT FALSE;

alter table almacen.tbl_cabmovalm drop column  id_transportista;
alter table almacen.tbl_cabmovalm add column  id_transportista integer;

alter table  caja.tbl_movcaja  add column   anticipo_base boolean DEFAULT false;



CREATE INDEX xifkidfamilia
  ON almacen.tbl_producto
  USING btree
  (id_familia COLLATE pg_catalog."default");
  

CREATE INDEX idfxpreciosproducto
  ON ventas.tbl_detfacturacion
  USING btree
  (id_unidadventa, id_producto COLLATE pg_catalog."default", id_listaprecio);


CREATE  INDEX XIF1TBL_DETALLEVENTA ON VENTAS.TBL_DETFACTURACION
(id_sucursal   ASC,id_facturacion   ASC);



CREATE  INDEX XIF2TBL_DETALLEVENTA ON VENTAS.TBL_DETFACTURACION
(id_producto   ASC,id_unidadventa   ASC,id_listaprecio   ASC);



CREATE  INDEX XIF3TBL_DETALLEVENTA ON VENTAS.TBL_DETFACTURACION
(id_almacen   ASC);



CREATE  INDEX XIF4TBL_DETALLEVENTA ON VENTAS.TBL_DETFACTURACION
(id_manguera   ASC,id_isla   ASC,id_lado   ASC,id_producto   ASC,id_unidadventa   ASC);




CREATE UNIQUE INDEX XPKTBL_DETALLEVENTA ON VENTAS.TBL_DETFACTURACION
(item   ASC,id_producto   ASC,id_unidadventa   ASC,id_listaprecio   ASC,id_sucursal   ASC,id_facturacion   ASC);


CREATE INDEX idxfkidvendedor
  ON ventas.tbl_facturacion
  USING btree
  (id_vendedor COLLATE pg_catalog."default");



CREATE INDEX idxfkid_producto
  ON almacen.tbl_precio
  USING btree
  (id_producto COLLATE pg_catalog."default");

CREATE TABLE compras.tbl_detegreso
(
  id_detegreso bigint,
  item integer NOT NULL,
  cantidad numeric(20,4),
  precio numeric(20,4),
  id_concepto character varying(7) NOT NULL,
  id_sucursalcompra integer NOT NULL,
  anio integer NOT NULL,
  id_compra integer NOT NULL,
  imp_dscto numeric(20,4),
  id_estado integer,
  imp_igv numeric(20,4),
  imp_incluido numeric(20,4),
  imp_venta numeric(20,4),
  imp_flete numeric(20,5),
  imp_total numeric(20,4),
  porcent_igv numeric(20,4),
  porcent_dscto numeric(20,4),
  id_mes integer NOT NULL,
  CONSTRAINT tbl_detegreso_pkey PRIMARY KEY (item, id_detegreso, id_sucursalcompra, anio, id_compra, id_mes),
  CONSTRAINT tbl_detcompras_id_concepto_fkey FOREIGN KEY (id_concepto)
      REFERENCES  common.tbl_concepto (id_concepto) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE SET NULL, 
  CONSTRAINT tbl_detcompras_id_sucursalcompra_fkey FOREIGN KEY (id_sucursalcompra, anio, id_compra, id_mes)
      REFERENCES compras.tbl_compra (id_sucursalcompra, anio, id_compra, id_mes) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

SELECT *FROM VENTAS.TBL_PERIODO

CREATE TABLE VENTAS.TBL_PERIODO(
	id_periodo integer primary key,
	periodo varchar(50),
	id_estado integer,
	id_usuario char(5)
);

CREATE TABLE VENTAS.TBL_TIPOOBJETIVO(
	Id_tipoObjetivo integer primary key,
	descripcion varchar(100),
	id_estado integer,
	id_usuario char(5)
);

CREATE   TABLE  VENTAS.TBL_OBJETIVOVENTA(
	ID_OBJETIVO BIGINT PRIMARY KEY,
	IMPORTE_OBJ NUMERIC(20,4) DEFAULT 0,
	IMPORTE_CUMPLIDO NUMERIC(20,4) DEFAULT 0,
	PORCENT_OBJ NUMERIC(20,4) DEFAULT 0,
	PORCENT_PART_ANTERIOR NUMERIC(20,4) DEFAULT 0,
	CANTIDAD_ANTERIOR NUMERIC(20,4) DEFAULT 0,
	id_periodo integer references VENTAS.TBL_PERIODO(id_periodo),
	Id_tipoObjetivo integer references VENTAS.TBL_TIPOOBJETIVO(Id_tipoObjetivo),
	id_tipoventa integer references common.tbl_tipoventa(id_tipoventa)	,
	id_mes	 integer references common.tbl_mes(id_mes),
	id_persona varchar(15) references planillas.tbl_persona(id_persona),
	id_estado	integer,
	id_usuarior char(5),
	id_usuarioa char(5),
	fecha_reg timestamp default now(),
	fecha_act timestamp default now(),
	fecha_final timestamp,
	finalizado boolean default false,
	id_mesInicial integer,
	id_MesFinal integer
);


INSERT INTO VENTAS.TBL_TIPOOBJETIVO(Id_tipoObjetivo,descripcion,id_estado,id_usuario)VALUES(0,'SELECCIONE',1,'');
INSERT INTO VENTAS.TBL_TIPOOBJETIVO(Id_tipoObjetivo,descripcion,id_estado,id_usuario)VALUES(1,'VENTAS',1,'');
INSERT INTO VENTAS.TBL_TIPOOBJETIVO(Id_tipoObjetivo,descripcion,id_estado,id_usuario)VALUES(2,'COBRANZAS',1,'');
INSERT INTO VENTAS.TBL_TIPOOBJETIVO(Id_tipoObjetivo,descripcion,id_estado,id_usuario)VALUES(3,'VENTAS Y COBRANZAS',1,'');

 INSERT INTO VENTAS.TBL_PERIODO(id_periodo,periodo,id_estado,id_usuario) values(0,'Seleccione',1,'');
 INSERT INTO VENTAS.TBL_PERIODO(id_periodo,periodo,id_estado,id_usuario) values(1,'2015',1,'');
 


CREATE TABLE ALMACEN.TBL_SALDOSEXISTENCIA(
	id_saldos bigint primary key,
	stockh numeric(20,4) default 0,
	stockTransito numeric(20,4) default 0,
	stockComprometido numeric(20,4) default 0,
	fechaActualiza numeric(20,4) default 0,
	costounitario numeric(20,4) default 0,
	id_unidad integer references almacen.tbl_unidad(id_unidadventa),
	id_producto varchar(20) references almacen.tbl_producto(id_producto),
	id_sucursal integer references common.tbl_sucursal(id_sucursal)
);



CREATE TABLE seguridad.tbl_menu
(
  id_menu integer NOT NULL,
  fk_codmenu integer,
  descripcion character varying(30),
  item_orden integer,
  evento character varying(200),
  estado boolean,
  menu_item boolean,
  orden character(18),
  menu character varying(100),
  tooltip text,
  icono text,
  maximised character(1),
  toolbar boolean,
  habilitar boolean,
  CONSTRAINT id_menu_pkey PRIMARY KEY (id_menu),
  CONSTRAINT id_menu_fk_codmenu_fkey FOREIGN KEY (fk_codmenu)
      REFERENCES seguridad.tbl_menu (id_menu) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE SET NULL
)
WITH (
  OIDS=FALSE
);


CREATE SCHEMA TESORERIA

select *from CAJA.TBL_CUENTABANCARIA

alter table caja.tbl_cuentabancaria add column id_concepto varchar(4) references common.tbl_concepto(id_concepto);

CREATE TABLE caja.tbl_cuentabancaria
(
  id_cuenta integer NOT NULL,
  nro_cuenta character varying(100) DEFAULT ''::character varying,
  id_sucursal integer,
  id_moneda integer,
  id_plancuenta bigint,
  id_cajabanco integer,
  id_estado integer,
  observacion text DEFAULT ''::text,
  id_concepto varchar(4) references common.tbl_concepto(id_concepto),
  CONSTRAINT id_cuentapk PRIMARY KEY (id_cuenta),
  CONSTRAINT tbl_cuentabancaria_id_cajabanco_fkey FOREIGN KEY (id_cajabanco)
      REFERENCES caja.tbl_cajabanco (id_cajabanco) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT tbl_cuentabancaria_id_moneda_fkey FOREIGN KEY (id_moneda)
      REFERENCES common.tbl_moneda (id_moneda) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT tbl_cuentabancaria_id_plancuenta_fkey FOREIGN KEY (id_plancuenta)
      REFERENCES contabilidad.tbl_plancuenta (id_plancuenta) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT tbl_cuentabancaria_id_sucursal_fkey FOREIGN KEY (id_sucursal)
      REFERENCES common.tbl_sucursal (id_sucursal) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)


CREATE TABLE creditos.tbl_cuota_notacredito
(
  id_notacredito integer,
  id_sucursalnc integer,
  id_cuota integer,
  id_credito integer,
  id_sucursal_cred integer,
  imp_dscto numeric(20,4) DEFAULT 0,
  fecha_reg timestamp without time zone,
  fecha_act timestamp without time zone,
  fecha_anula timestamp without time zone,
  id_usuario_reg character(5),
  id_usuario_act character(5),
  id_usuario_anula character(5),
  id_estado integer,
  glosa character varying(500),
  id__compra bigint
)

select *from CONTABILIDAD.TBL_AXULIARDOCUMENTO

CREATE TABLE CONTABILIDAD.TBL_AXULIARDOCUMENTO(
	ID_AUXILIARDOCUMENTO INTEGER PRIMARY KEY,
	ID_EMPRESA INTEGER REFERENCES COMMON.TBL_EMPRESA(ID_EMPRESA),
	id_comprobante INTEGER REFERENCES  common.tbl_comprobante(id_comprobante),
	ID_AUXILIAR INTEGER REFERENCES contabilidad.tbl_auxiliar(ID_AUXILIAR),
	ID_ESTADO INTEGER,
	OBSERVACION TEXT
);

CREATE TABLE CONTABILIDAD.TBL_CONFIGURACIONCUENTA(
	ID_CONFIGURACICON BIGINT PRIMARY KEY,
	id_cuentaDebe BIGINT REFERENCES contabilidad.tbl_plancuenta(id_plancuenta),
	id_cuentaHaber BIGINT REFERENCES contabilidad.tbl_plancuenta(id_plancuenta),
	id_producto varchar(20) references almacen.tbl_producto(id_producto),
	id_auxiliar integer references contabilidad.tbl_auxiliar(id_auxiliar),
	id_empresa integer references common.tbl_empresa(id_empresa),
	id_estado integer,
	id_usuarior char(5),
	id_usuarioa char(5),
	fecha_reg timestamp,
	fecha_act timestamp,
	observaciones varchar(500)
);


alter table common.tbl_igv add column descripcion varchar(100) default '';

CREATE  TABLE contabilidad.tbl_auxiliarimpuesto(
	id_configimpuesto integer,
	id_cuentaDebe BIGINT REFERENCES contabilidad.tbl_plancuenta(id_plancuenta),
	id_cuentaHaber BIGINT REFERENCES contabilidad.tbl_plancuenta(id_plancuenta),
	id_auxiliar integer references contabilidad.tbl_auxiliar(id_auxiliar),
	id_empresa integer references common.tbl_empresa(id_empresa),
	id_igv     integer references common.tbl_igv(id_igv),
	id_estado integer,
	id_usuarior char(5),
	id_usuarioa char(5),
	fecha_reg timestamp,
	fecha_act timestamp,
	observaciones varchar(500)
);


ALTER TABLE contabilidad.tbl__detalle__asiento__contable ADD COLUMN ID_PRODUCTO VARCHAR(20) DEFAULT '';
alter table contabilidad.tbl__asiento__contable drop column id_sucursal;
alter table contabilidad.tbl__asiento__contable add column id_empresa integer;

alter table contabilidad.tbl__detalle__asiento__contable add column id_sucursal integer references common.tbl_sucursal(id_sucursal) 


SELECT *FROM VENTAS.TBL_COMISIONPORCENT




CREATE TABLE VENTAS.TBL_COMISIONPORCENT
(
	id_tipocomision      INTEGER NOT NULL ,
	fecha_inicio         TIMESTAMP NULL ,
	fecha_fin            TIMESTAMP NULL ,
	id_empresa           INTEGER NULL ,
	descripcion          VARCHAR(100) NULL ,
	porcentaje           NUMERIC(20,4) NULL ,
	id_tipoventa         INTEGER NULL ,
	id_usuarior          CHAR(5) NULL ,
	id_usuarioa          CHAR(5) NULL ,
	fecha_reg            TIMESTAMP NULL ,
	id_estado	     integer,
 PRIMARY KEY (id_tipocomision),
FOREIGN KEY (id_tipoventa) REFERENCES COMMON.TBL_TIPOVENTA (id_tipoventa) ON DELETE SET NULL
);



CREATE UNIQUE INDEX XPKVENTAS_TBL_TIPOCOMISION ON VENTAS.TBL_COMISIONPORCENT
(id_tipocomision   ASC);



CREATE  INDEX XIF1VENTAS_TBL_TIPOCOMISION ON VENTAS.TBL_COMISIONPORCENT
(id_tipoventa   ASC);

alter table VENTAS.TBL_COMISIONPORCENT add column id_estado integer;
ALTER TABLE VENTAS.TBL_COMISIONPORCENT ADD COLUMN imp_desde numeric(20,4);
ALTER TABLE VENTAS.TBL_COMISIONPORCENT ADD COLUMN imp_hasta numeric(20,4);


CREATE TABLE VENTAS.TBL_COMICPERSONA
(
	id_tipocomision      INTEGER NOT NULL ,
	id_estado            INTEGER NULL ,
	fecha_Registro       TIMESTAMP NULL ,
	id_usuarior          CHAR(5) NULL ,
	id_usuarioa          CHAR(5) NULL ,
	id_detcomicpersona   bigint NOT NULL ,
	id_persona           VARCHAR(15) NOT NULL ,
	porcentaje           NUMERIC(20,4) NULL ,
 PRIMARY KEY (id_detcomicpersona),
FOREIGN KEY (id_tipocomision) REFERENCES VENTAS.TBL_COMISIONPORCENT (id_tipocomision),
FOREIGN KEY (id_persona) REFERENCES PLANILLAS.TBL_PERSONA (id_persona)
);

SELECT *FROM VENTAS.TBL_COMICPERSONA

CREATE UNIQUE INDEX XPKVENTAS_TBLCOLABORADO ON VENTAS.TBL_COMICPERSONA
(id_detcomicpersona   ASC);



CREATE  INDEX XIF1VENTAS_TBLCOLABORADO ON VENTAS.TBL_COMICPERSONA
(id_tipocomision   ASC);



CREATE  INDEX XIF2VENTAS_TBLCOLABORADO ON VENTAS.TBL_COMICPERSONA
(id_persona   ASC);

alter table contabilidad.tbl_auxiliar add cod_libro integer;
alter table ventas.tbl_detpreventacotiza add column porcent_percepcion numeric(20,6) default 0;
alter table ventas.tbl_detpreventacotiza add column imp_percepcion numeric(20,6) default 0;
alter table ventas.tbl_detpreventacotiza add column cantidad_old numeric(20,6) default 0;
alter table ventas.tbl_detpreventacotiza add column printed boolean default false
alter table almacen.TBL_SALDOSEXISTENCIA  add column id_estado integer default 1;


alter table ventas.tbl_detpreventacotiza add column descuenta_stock boolean default false;


delete from contabilidad.tbl__detalle__asiento__contable;
delete from contabilidad.tbl__asiento__contable;


select *from  contabilidad.tbl__detalle__asiento__contable;

delete from contabilidad.tbl_configuracioncuenta where id_estado=3;
delete from contabilidad.tbl_auxiliarimpuesto;

select *from contabilidad.tbl_configuracioncuenta

select *from compras.tbl_compra where id_compra=4712 and id_sucursal=2

select *from contabilidad.tbl__detalle__asiento__contable

alter table contabilidad.tbl__detalle__asiento__contable add column codigo__cuo__dia integer default 0;
alter table contabilidad.tbl__detalle__asiento__contable add column correlativo__dia integer default 0;


alter table compras.tbl_detcompra  add column contabilizado_cad varchar(50) default '';
alter table compras.tbl_detcompra  add column actualizado boolean default false;

select *from contabilidad.tbl__detalle__asiento__contable

alter table  contabilidad.tbl_plancuenta add column numeracion_cta varchar(30) default '';
alter table contabilidad.tbl__detalle__asiento__contable add column id_tipocambio integer default 1;
alter table contabilidad.tbl__detalle__asiento__contable add column id_moneda integer default 1;
select *from contabilidad.tbl__asiento__contable;


alter table ventas.tbl_cotizacionpreventa add column imp_percepcion numeric(20,4) DEFAULT 0.00;
alter table ventas.tbl_cotizacionpreventa add column imp_neto numeric(20,4) DEFAULT 0.00;
alter table ventas.tbl_detpreventacotiza add column precio_sinpercepcion numeric(20,4) DEFAULT 0.00;
alter table ventas.tbl_detpreventacotiza add column id_retazo bigint;
alter table ventas.tbl_cotizacionpreventa add column id_transportista integer;
alter table ventas.tbl_facturacion add column id_transportista integer;
alter table  contabilidad.tbl_configuracioncuenta add column tabla varchar(50);

select *from ventas.tbl_cotizacionpreventa

alter table seguridad.tbl_usuario add column editar_pedidos boolean default false;
alter table seguridad.tbl_usuario add column editar_ventas boolean default false;
alter table seguridad.tbl_usuario add column solicitar_clave boolean default false;
alter table seguridad.tbl_usuario add column todas_ventas boolean default false;


select *from almacen.v_precios

alter table caja.tbl_movcaja   add column id_usuario_autoriza char(5);

alter table contabilidad.tbl_configuracioncuenta  add column  id_concepto character varying(7) 
alter table almacen.tbl_producto add column activo_fijo boolean default false;

alter table ventas.tbl_detfacturacion add column id_detfacturacion bigint;

update ventas.tbl_detfacturacion set id_detfacturacion= (id_sucursal::text || id_facturacion::text  || id_unidadventa ||  item::text  || case when isnumeric(id_producto)=true then trim(id_producto) end)::bigint;

select *from ventas.tbl_detpreventacotiza
---modificar numeracion del plan de cuentas
select 
	nro_cuenta ,
	substring(nro_cuenta  from 1 for 2)|| 
	case when length(nro_cuenta)=2 then  
		'' else '.'||
		substring(nro_cuenta  from 3 for 1) || 
		case when length(nro_cuenta)=3 THEN '' ELSE '.'||
			substring(nro_cuenta  from 4 for 1)|| case when length(nro_cuenta)=4 THEN '' ELSE  '.'||
			substring(nro_cuenta  from 5 for 1) END
		END
	end
	from contabilidad.tbl_plancuenta

	

select *from contabilidad.tbl_plancuenta 

	UPDATE  contabilidad.tbl_plancuenta SET NUMERACION_CTA=(substring(nro_cuenta  from 1 for 2)|| 
	case when length(nro_cuenta)=2 then  
		'' else '.'||
		substring(nro_cuenta  from 3 for 1) || 
		case when length(nro_cuenta)=3 THEN '' ELSE '.'||
			substring(nro_cuenta  from 4 for 1)|| case when length(nro_cuenta)=4 THEN '' ELSE  '.'||
			substring(nro_cuenta  from 5 for 1) END
		END
	end)



alter table caja.tbl_movcaja add column id_cuenta integer references caja.tbl_cuentabancaria(id_cuenta);
alter table caja.tbl_detmovpago add column id_cuenta integer references caja.tbl_cuentabancaria(id_cuenta);


alter table caja.tbl_movcaja add column id_centrocostos integer references contabilidad.tbl_centrocosto(id_centrocostos);
alter table caja.tbl_movcaja add column endosado boolean;
alter table caja.tbl_movcaja add column cheque boolean; 



create table common.tbl_tipoimpuesto(
	id_tipoimpuesto integer primary key,
	descripcion varchar(50),
	id_estado integer
);


--SELECT *FROM  common.tbl_tipoimpuesto
insert into common.tbl_tipoimpuesto values(0,'NINGUNO 0%',1);
insert into common.tbl_tipoimpuesto values(1,'IGV 18%	',1);
insert into common.tbl_tipoimpuesto values(2,'PRECEPCIÓN 2%',1);
insert into common.tbl_tipoimpuesto values(3,'IMPUESTO A LA RENTA %8',1);
insert into common.tbl_tipoimpuesto values(4,'ISC',1);

alter table common.tbl_igv add column id_tipoimpuesto integer references common.tbl_tipoimpuesto(id_tipoimpuesto);


UPDATE  common.tbl_igv  SET id_tipoimpuesto=0 where id_igv=0;
UPDATE  common.tbl_igv  SET id_tipoimpuesto=1 where id_igv=1;
UPDATE  common.tbl_igv  SET id_tipoimpuesto=2 where id_igv=2;
UPDATE  common.tbl_igv  SET id_tipoimpuesto=3 where id_igv=3;


select *from common.tbl_igv

ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN id__compra bigint;
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN id_centrocostos integer default 0 references contabilidad.tbl_centrocosto(id_centrocostos);
ALTER TABLE COMPRAS.TBL_DETCOMPRA ADD COLUMN id__compra bigint;
ALTER TABLE creditos.tbl_creditoscompra ADD COLUMN id__compra bigint;
ALTER TABLE COMPRAS.TBL_DETCOMPRA ADD COLUMN id__detcompra bigint;
ALTER TABLE COMPRAS.tbl_detegreso ADD COLUMN id__compra bigint;

update  COMPRAS.TBL_COMPRA set id__compra=(id_sucursalcompra::text || anio::text || id_mes::text||  id_compra::text)::bigint;
update  COMPRAS.TBL_DETCOMPRA set id__compra=(id_sucursalcompra::text || anio::text || id_mes::text||  id_compra::text)::bigint;
update  creditos.tbl_creditoscompra set id__compra=(id_sucursalcompra::text || anio::text || id_mes::text||  id_compra::text)::bigint;
update  compras.tbl_detegreso set id__compra=(id_sucursalcompra::text || anio::text || id_mes::text||  id_compra::text)::bigint;

--update  COMPRAS.TBL_DETCOMPRA set id__detcompra=(id_sucursalcompra::text || anio::text || id_mes::text||  id_compra::text)::bigint;

select *from compras.isp_genid__detcompra();

ALTER TABLE almacen.tbl_cabmovalm ADD COLUMN ing_kit boolean default false;


select *from compras.tbl_detcompra

UPDATE compras.tbl_detcompra SET id__Detcompra=0

create or replace function compras.isp_genid__detcompra(
) returns text[] as $$
declare
	dat record;
	_id bigint;
	res text[];
begin
for dat in select item, id_almacen, id_unidadventa, id_producto, id_sucursalcompra, anio, id_compra, id_mes from COMPRAS.TBL_DETCOMPRA loop
	select max(id__detcompra) into _id from COMPRAS.TBL_DETCOMPRA;
	if _id is null then
		_id:=1;
	else
		_id:=_id+1;
	end if;
	update COMPRAS.TBL_DETCOMPRA set id__detcompra=_id where item=dat.item and 
		id_almacen=dat.id_almacen and 
		id_unidadventa=dat.id_unidadventa and
		id_producto=dat.id_producto and 
		id_sucursalcompra=dat.id_sucursalcompra and 
		anio=dat.anio and 
		id_compra=dat.id_compra and 
		id_mes=dat.id_mes;
	  RAISE NOTICE 'i is %', _id;
end loop;
res:=array['0'];
return res;
end;$$
language 'plpgsql';


ALTER TABLE compras.tbl_detegreso DROP CONSTRAINT tbl_detcompras_id_sucursalcompra_fkey;
ALTER TABLE compras.tbl_detcompra DROP CONSTRAINT tbl_detcompras_pkey;
ALTER TABLE compras.tbl_detcompra DROP CONSTRAINT tbl_detcompras_id_sucursalcompra_fkey;


ALTER TABLE creditos.tbl_creditoscompra DROP CONSTRAINT tbl_creditoscompra_id_sucursalcompra_fkey;
ALTER TABLE compras.tbl_detcompra DROP CONSTRAINT tbl_detcompras_id_sucursalcompra_fkey1;
ALTER TABLE compras.tbl_compra DROP CONSTRAINT tbl_compras_pkey;


ALTER TABLE compras.tbl_detegreso ALTER COLUMN id_compra SET default  0;
ALTER TABLE creditos.tbl_creditoscompra ALTER COLUMN anio SET default 0;
ALTER TABLE creditos.tbl_creditoscompra ALTER COLUMN id_mes SET default 1;
ALTER TABLE creditos.tbl_creditoscompra ALTER COLUMN id_compra SET default 0;

ALTER TABLE compras.tbl_detegreso DROP CONSTRAINT tbl_detegreso_pkey;

ALTER TABLE compras.tbl_detegreso
  ADD CONSTRAINT tbl_detegreso_pkey PRIMARY KEY(id__compra, id_detegreso, id_sucursalcompra);

 DROP INDEX compras.xpktbl_compras;

CREATE UNIQUE INDEX xpktbl_compras
  ON compras.tbl_compra
  USING btree
  (id__compra,id_sucursalcompra);


DROP INDEX compras.xpktbl_detcompras;

CREATE UNIQUE INDEX xpktbl_detcompras
  ON compras.tbl_detcompra
  USING btree
  (id__detcompra, id__compra, id_sucursalcompra);


ALTER TABLE compras.tbl_compra
  ADD CONSTRAINT tbl_compras_pkey PRIMARY KEY(id_sucursalcompra, id__compra);



ALTER TABLE compras.tbl_detcompra
  ADD CONSTRAINT tbl_detcompras_pkey PRIMARY KEY(id__detcompra, id__compra,id_sucursalcompra);




ALTER TABLE compras.tbl_detegreso
  ADD CONSTRAINT tbl_detcompras_id_sucursalcompra_fkey FOREIGN KEY (id_sucursalcompra, id__compra)
      REFERENCES compras.tbl_compra (id_sucursalcompra, id__compra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;





ALTER TABLE creditos.tbl_creditoscompra
  ADD CONSTRAINT tbl_creditoscompra_id_sucursalcompra_fkey FOREIGN KEY (id_sucursalcompra, id__compra)
      REFERENCES compras.tbl_compra (id_sucursalcompra, id__compra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
      









CREATE TABLE CAJA.TBL_TARJETACUENTABANCO
(
	id_tarjetacuenta     INTEGER NOT NULL ,
	id_tarjeta           INTEGER NOT NULL ,
	id_cuenta            INTEGER NOT NULL ,
	fecha_reg            TIMESTAMP NULL ,
	fecha_actualiza      TIMESTAMP NULL ,
	usuario_reg          CHAR(5) NULL ,
	usuario_act          CHAR(5) NULL ,
	observacion          text NULL ,
	id_estado            INTEGER NULL ,
 PRIMARY KEY (id_tarjetacuenta),
FOREIGN KEY (id_tarjeta) REFERENCES COMMON.TBL_TARJETA (id_tarjeta),
FOREIGN KEY (id_cuenta) REFERENCES CAJA.TBL_CUENTABANCARIA (id_cuenta)
);



CREATE TABLE CAJA.TBL_PLANILLACOBRANZA
(
	id_planilla bigint,
	id_comprobante integer references common.tbl_comprobante(id_comprobante),
	serie char(4),
	numero char(7),
	fecha_plla timestamp,
	id_usuario char(5),
	id_usuario_anula char(5),
	fecha_anula timestamp,
	id_tipocambio integer,
	id_caja integer
)


CREATE UNIQUE INDEX XPKCAJA_TBL_TARJETACUENTABANCO ON CAJA.TBL_TARJETACUENTABANCO
(id_tarjetacuenta   ASC);



CREATE  INDEX XIF1CAJA_TBL_TARJETACUENTABANC ON CAJA.TBL_TARJETACUENTABANCO
(id_tarjeta   ASC);



CREATE  INDEX XIF2CAJA_TBL_TARJETACUENTABANC ON CAJA.TBL_TARJETACUENTABANCO
(id_cuenta   ASC);

INSERT INTO caja.tbl_tarjetacuentabanco(
            id_tarjetacuenta, id_tarjeta, id_cuenta, fecha_reg, fecha_actualiza, 
            usuario_reg, usuario_act, observacion, id_estado)
    VALUES (1, 1, 1, now(), now(), 
            '', '','', 1);

INSERT INTO caja.tbl_tarjetacuentabanco(
            id_tarjetacuenta, id_tarjeta, id_cuenta, fecha_reg, fecha_actualiza, 
            usuario_reg, usuario_act, observacion, id_estado)
    VALUES (2, 2, 1, now(), now(), 
            '', '','', 1);


INSERT INTO caja.tbl_tarjetacuentabanco(
            id_tarjetacuenta, id_tarjeta, id_cuenta, fecha_reg, fecha_actualiza, 
            usuario_reg, usuario_act, observacion, id_estado)
    VALUES (3, 2, 1, now(), now(), 
            '', '','', 1);


INSERT INTO caja.tbl_tarjetacuentabanco(
            id_tarjetacuenta, id_tarjeta, id_cuenta, fecha_reg, fecha_actualiza, 
            usuario_reg, usuario_act, observacion, id_estado)
    VALUES (4, 3, 2, now(), now(), 
            '', '','', 1);



CREATE TABLE VENTAS.TBL_CONCEPTOTIPOVENTA
(
	id_conceptotv        INTEGER NOT NULL ,
	descripcion          text NULL ,
	id_estado            INTEGER NULL ,
	id_tipoventa         INTEGER NOT NULL ,
	id_concepto          VARCHAR(4) NOT NULL ,
 PRIMARY KEY (id_conceptotv),
FOREIGN KEY (id_tipoventa) REFERENCES COMMON.TBL_TIPOVENTA (id_tipoventa),
FOREIGN KEY (id_concepto) REFERENCES COMMON.TBL_CONCEPTO (id_concepto)
);

VENTAS.TBL_CONCEPTOTIPOVENTA

select *from VENTAS.TBL_CONCEPTOTIPOVENTA
select *from common.tbl_concepto where id::integer='6606'

CREATE UNIQUE INDEX XPKVENTAS_TBL_CONCEPTOTIPOVENT ON VENTAS.TBL_CONCEPTOTIPOVENTA
(id_conceptotv   ASC);



CREATE  INDEX XIF1VENTAS_TBL_CONCEPTOTIPOVEN ON VENTAS.TBL_CONCEPTOTIPOVENTA
(id_tipoventa   ASC);



CREATE  INDEX XIF2VENTAS_TBL_CONCEPTOTIPOVEN ON VENTAS.TBL_CONCEPTOTIPOVENTA
(id_concepto   ASC);

INSERT INTO ventas.tbl_conceptotipoventa(
            id_conceptotv, descripcion, id_estado, id_tipoventa, id_concepto)
    VALUES (1,'',1,1,6606);


select *from common.tbl_concepto where id_concepto='6606'

ALTER TABLE caja.tbl_movcaja ADD COLUMN ACTUALIZADO BOOLEAN DEFAULT TRUE;
ALTER TABLE caja.tbl_movcaja ADD COLUMN CONTABILIZADO_CAD TEXT;

ALTER TABLE caja.tbl_movcaja ADD COLUMN id__compra bigint;
ALTER TABLE caja.tbl_movcaja ADD COLUMN id__sucursal__compra integer;

ALTER TABLE ventas.tbl_unidadtransporte ADD razon_social text default '';
ALTER TABLE ventas.tbl_unidadtransporte ADD ruc text default '';
ALTER TABLE ventas.tbl_unidadtransporte ADD direccion text default '';
ALTER TABLE ventas.tbl_unidadtransporte ADD column id_producto varchar(30);

ALTER TABLE caja.tbl_movcaja
  ADD CONSTRAINT r_1024 FOREIGN KEY (id__compra, id__sucursal__compra)
      REFERENCES  compras.tbl_compra (id__compra, id_sucursalcompra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

s

CREATE  TABLE ALMACEN.TBL__CONVERSION__UNIDAD(
	ID__CONVERSION BIGINT,
	ID__SUCURSAL INTEGER REFERENCES COMMON.TBL_SUCURSAL(ID_SUCURSAL),
	ID__COMPROBANTE_NI INT REFERENCES COMMON.TBL_COMPROBANTE(ID_COMPROBANTE),
	ID__COMPROBANTE_NS INT REFERENCES COMMON.TBL_COMPROBANTE(ID_COMPROBANTE),
	SERIE__NI CHAR(4),
	SERIE__NS CHAR(4),
	NUMERO__NI VARCHAR(7),
	NUMERO__NS VARCHAR(7),
	FECHA TIMESTAMP,
	FECHA__ACT TIMESTAMP,
	FECHA__REG TIMESTAMP,
	ID__PRODUCTO VARCHAR(20) REFERENCES ALMACEN.TBL_PRODUCTO(ID_PRODUCTO),
	ID__ALMACEN INTEGER REFERENCES ALMACEN.TBL_ALMACEN(ID_ALMACEN),
	ID__UNIDAD__BASE INTEGER REFERENCES ALMACEN.TBL_UNIDAD(ID_UNIDADVENTA),
	ID__UNIDAD__DESTINO INTEGER REFERENCES ALMACEN.TBL_UNIDAD(ID_UNIDADVENTA),
	CANTIDAD__A__CONVERTIR NUMERIC(20,4),
	CANTIDAD__CONVERTIDAD NUMERIC(20,4),
	ID__TRANZACCION CHAR(2) REFERENCES COMMON.TBL_TRANZACCION(ID_TRANZACCION),
	VAL__UNIDAD__BASE NUMERIC(20,4) DEFAULT 0,
	VAL__UNIDAD__DESTINO NUMERIC(20,4) DEFAULT 0
);


ALTER TABLE almacen.tbl__conversion__unidad
  ADD CONSTRAINT tbl__conversion__unidad_pkey PRIMARY KEY(id__conversion,ID__SUCURSAL);


ALTER TABLE almacen.tbl_existencia ADD COLUMN UND_INVENTARIO BOOLEAN DEFAULT FALSE;
ALTER TABLE almacen.tbl_detmovalm ADD COLUMN ing_conversion BOOLEAN DEFAULT FALSE;

ALTER TABLE almacen.tbl_cabmovalm ADD COLUMN id_movimientoref bigint;
ALTER TABLE almacen.tbl_cabmovalm ADD COLUMN id_sucursalref bigint;
ALTER TABLE almacen.tbl_cabmovalm ADD COLUMN ing_conversion boolean default false;


ALTER TABLE almacen.tbl_saldosexistencia DROP COLUMN fechaactualiza;
ALTER TABLE almacen.tbl_saldosexistencia ADD COLUMN fechaactualiza TIMESTAMP DEFAULT NOW();





select *from ventas.f_gentitems();

create or replace function ventas.f_gentitems()
returns text[] as $$
declare 
_item integer;
dat record;
res text[];
begin
for dat in select *from ventas.tbl_detfacturacion loop
	select max(item) into _item from ventas.tbl_detfacturacion where id_facturacion=dat.id_facturacion and id_sucursal=dat.id_sucursal;
	if _item is null then
		_item:=0;
	else
		_item:=_item+1;
	end if;
	RAISE NOTICE  'Index %'  ,_item::text;
	update ventas.tbl_detfacturacion set item=_item where 
			id_facturacion=dat.id_facturacion and 
			id_sucursal=dat.id_sucursal and 
			id_producto=dat.id_producto and 
			id_unidadventa=dat.id_unidadventa and
			item=dat.item ;
end loop;
return res;
end;$$
language 'plpgsql';


select *from ventas.f_gentiddetfacturacion()


create or replace function ventas.f_gentiddetfacturacion()
returns text[] as $$
declare 
_item bigint;
dat record;
res text[];
begin
for dat in select *from ventas.tbl_detfacturacion  loop
	select max(id_detfacturacion) into _item from ventas.tbl_detfacturacion  ;
	if _item is null then
		_item:=0;
	else
		_item:=_item+1;
	end if;
	RAISE NOTICE  'Index %'  ,_item::text;
	update ventas.tbl_detfacturacion set id_detfacturacion=_item where 
			id_facturacion=dat.id_facturacion and 
			id_sucursal=dat.id_sucursal and 
			id_producto=dat.id_producto and 
			id_unidadventa=dat.id_unidadventa and
			item=dat.item ;
end loop;
return res;
end;$$
language 'plpgsql';


update ventas.tbl_detfacturacion set id_detfacturacion=null

select *from ventas.tbl_detfacturacion where  id_detfacturacion is not null

select *from ventas.tbl_detfacturacion order by id_detfacturacion asc limit 100 

116205

CREATE TABLE ALMACEN.TBL__KITPRODUCTO
(
	id__kit              BIGINT NOT NULL ,
	id__sucursal         INTEGER NOT NULL ,
	id__producto         VARCHAR(20) NOT NULL ,
	id__unidadventa      INTEGER NOT NULL ,
	id__concepto         VARCHAR(4) NOT NULL ,
	id__comprobante__kit INTEGER NOT NULL ,
	ID__COMPROBANTE__NI  INT REFERENCES COMMON.TBL_COMPROBANTE(ID_COMPROBANTE),
	ID__COMPROBANTE__NS  INT REFERENCES COMMON.TBL_COMPROBANTE(ID_COMPROBANTE),
	serie__kit           CHAR(4) NULL ,
	SERIE__NI 	     CHAR(4),
	SERIE__NS 	     CHAR(4),
	NUMERO__NI 	     VARCHAR(7),
	NUMERO__NS 	     VARCHAR(7),	
	numero__kit          CHAR(7) NULL ,
	cantidad             NUMERIC(20,4) NULL ,
	costo                NUMERIC(20,4) NULL ,
	id__almacen          INTEGER NOT NULL ,
	fecha__reg           TIMESTAMP NULL ,
	fecha__act           TIMESTAMP NULL ,
	fecha__anula         TIMESTAMP NULL ,
	id__usuario__reg     CHAR(5) NULL ,
	id__usuario__act     CHAR(5) NULL ,
	id_usuario_anula     CHAR(5) NULL ,
	glosa                TEXT NULL ,
	id__estado           INTEGER NULL ,	
 PRIMARY KEY (id__kit,id__sucursal),
FOREIGN KEY (id__sucursal) REFERENCES COMMON.TBL_SUCURSAL (id_sucursal),
FOREIGN KEY (id__producto, id__unidadventa) REFERENCES ALMACEN.TBL_DETPRODUCTO (id_producto, id_unidadventa),
FOREIGN KEY (id__concepto) REFERENCES COMMON.TBL_CONCEPTO (id_concepto),
FOREIGN KEY (id__almacen) REFERENCES ALMACEN.TBL_ALMACEN (id_almacen),
FOREIGN KEY (id__comprobante__kit) REFERENCES COMMON.TBL_COMPROBANTE (id_comprobante)
);



CREATE UNIQUE INDEX XPKALMACEN__TBL_KITPRODUCTOS ON ALMACEN.TBL__KITPRODUCTO
(id__kit   ASC,id__sucursal   ASC);



CREATE  INDEX XIF1ALMACEN__TBL_KITPRODUCTOS ON ALMACEN.TBL__KITPRODUCTO
(id__sucursal   ASC);



CREATE  INDEX XIF2ALMACEN__TBL_KITPRODUCTOS ON ALMACEN.TBL__KITPRODUCTO
(id__producto   ASC,id__unidadventa   ASC);



CREATE  INDEX XIF3ALMACEN__TBL_KITPRODUCTOS ON ALMACEN.TBL__KITPRODUCTO
(id__concepto   ASC);



CREATE  INDEX XIF4ALMACEN__TBL_KITPRODUCTOS ON ALMACEN.TBL__KITPRODUCTO
(id__almacen   ASC);



CREATE  INDEX XIF5ALMACEN__TBL_KITPRODUCTOS ON ALMACEN.TBL__KITPRODUCTO
(id__comprobante__kit   ASC);



CREATE TABLE ALMACEN.TBL__DETALLEKIT
(
	id__kit              BIGINT NOT NULL ,
	id__detalle          bigint NOT NULL ,
	item                 INTEGER NOT NULL ,
	cantidad             NUMERIC(20,4) NULL ,
	costo                NUMERIC(20,4) NULL ,
	total                NUMERIC(20,4) NULL ,
	id__producto         VARCHAR(20) NOT NULL ,
	id__unidadventa      INTEGER NOT NULL ,
	id__estado           INTEGER NULL ,
	id__sucursal         INTEGER NOT NULL ,
 PRIMARY KEY (id__detalle,id__kit,item,id__sucursal),
FOREIGN KEY (id__kit, id__sucursal) REFERENCES ALMACEN.TBL__KITPRODUCTO (id__kit, id__sucursal),
FOREIGN KEY (id__producto, id__unidadventa) REFERENCES ALMACEN.TBL_DETPRODUCTO (id_producto, id_unidadventa)
);



CREATE UNIQUE INDEX XPKALMACEN__TBL_DETALLEKIT ON ALMACEN.TBL__DETALLEKIT
(id__detalle   ASC,id__kit   ASC,item   ASC,id__sucursal   ASC);



CREATE  INDEX XIF1ALMACEN__TBL_DETALLEKIT ON ALMACEN.TBL__DETALLEKIT
(id__kit   ASC,id__sucursal   ASC);



CREATE  INDEX XIF2ALMACEN__TBL_DETALLEKIT ON ALMACEN.TBL__DETALLEKIT
(id__producto   ASC,id__unidadventa   ASC);


SELECT *FROM VENTAS.TBL_FACTURACION LIMIT 10


ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN FECHA_ACT TIMESTAMP DEFAULT NOW();
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN FECHA_REG TIMESTAMP DEFAULT NOW();
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN FECHA_ANULA TIMESTAMP;

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN ID_USUARIO_REG CHAR(5);
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN ID_USUARIO_ACT CHAR(5);
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN ID_USUARIO_ANULA CHAR(5);


ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN ID__COMPRA__REF BIGINT;
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN ID__SUCURSAL__REF INTEGER;
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN NOTA__CREDITO boolean default false;
ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN ID__CONCEPTO CHAR(4) REFERENCES COMMON.TBL_CONCEPTO(ID_CONCEPTO) ;

CREATE  INDEX XIF15COMPRA__TBL__COMPRA ON COMPRAS.TBL_COMPRA
(id__COMPRA__REF   ASC,ID__SUCURSAL__REF ASC);


 alter table common.tbl_sucursal add column id__direccion bigint ;
 alter table common.tbl_sucursal add column id__cliente character varying(15);

alter table almacen.tbl__conversion__unidad add column id__estado integer default 1;


ALTER TABLE common.tbl_sucursal
  ADD CONSTRAINT RFK_1024 FOREIGN KEY (id__cliente, id__direccion)
      REFERENCES  ventas.tbl_direccion (id_persona, id_direccion) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
      


 ALTER TABLE almacen.tbl_cabmovalm ADD COLUMN ing_kit boolean default false;


CREATE TABLE ventas.tbl_lineacredito
(
  id_linea bigint NOT NULL,
  id_sucursal integer,
  limite_linea numeric(20,2),
  fec_aprobacion timestamp without time zone,
  fec_actualizacion timestamp without time zone DEFAULT now(),
  id_moneda integer,
  id_usuarior character(5),
  id_usuarioaprueba character(5),
  id_usuarioanula character(4),
  id_usuarioactualiza character(5),
  imp_ampliacion numeric(20,4),
  id_estado integer,
  id_cliente character(15),
  CONSTRAINT tbl_lineacredito_pkey PRIMARY KEY (id_linea)
)
WITH (
  OIDS=FALSE
);

 alter table seguridad.item add column url text default '';

select * from grifo.v_liquidaisla   where nom_isla||turno||to_char(fecha,'dd/MM/yyyy')::text ilike'%%' and id_usuario='1' and fecha='2014-07-26'

CREATE TABLE ALMACEN.TBL__LOTE(
	id__lote bigint ,
	id__sucursal integer references common.tbl_sucursal(id_sucursal),
	id__almacen integer references almacen.tbl_almacen(id_almacen),
	nro__lote varchar(50),
	stock numeric(20,4),
	stock__inicial numeric(20,4),
	costo__inicial numeric(20,4),
	valor__actual numeric(20,4),
	fecha__registro timestamp,
	fecha__vencimiento timestamp,
	fecha__actualizacion timestamp,
	id__producto varchar(20),
	id__unidadventa integer,
	id__estado integer	,
	id__usuario__reg char(5),
	id__usuario__act char(5),
	PRIMARY KEY (id__lote,id__sucursal),
	FOREIGN KEY (id__producto, id__unidadventa) REFERENCES ALMACEN.TBL_DETPRODUCTO (id_producto, id_unidadventa)
);


ALTER TABLE ALMACEN.TBL_PRODUCTO ADD COLUMN GESTIONA_LOTES BOOLEAN DEFAULT FALSE;
ALTER TABLE ALMACEN.TBL_PRODUCTO ADD COLUMN GESTIONA_SERIES BOOLEAN DEFAULT FALSE;

ALTER TABLE COMPRAS.TBL_DETCOMPRA ADD COLUMN ID__LOTE BIGINT;
ALTER TABLE COMPRAS.TBL_DETCOMPRA ADD COLUMN ID__SUCURSAL__LOTE INTEGER;


ALTER TABLE VENTAS.TBL_DETFACTURACION ADD COLUMN  ID__LOTE BIGINT;
ALTER TABLE VENTAS.TBL_DETFACTURACION ADD COLUMN  ID__SUCURSAL__LOTE INTEGER;


SELECT MAX(FECHA_VENTA) FROM VENTAS.TBL_FACTURACION

ALTER TABLE COMPRAS.TBL_DETCOMPRA
  ADD CONSTRAINT RFK_10240 FOREIGN KEY (ID__LOTE, ID__SUCURSAL__LOTE)
      REFERENCES  ALMACEN.TBL__LOTE (ID__LOTE, id__sucursal) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;


alter table contabilidad.tbl__detalle__asiento__contable  add column doc__persona varchar(12) default '';
alter table contabilidad.tbl__detalle__asiento__contable add column id__persona varchar(15) default '';
alter table contabilidad.tbl__detalle__asiento__contable add column id__caja varchar(15) default '';



CREATE TABLE ALMACEN.TBL_MODELO
(
	versions             VARCHAR(150) NULL ,
	potencia_motor       VARCHAR(100) NULL ,
	combustible1         VARCHAR(100) NULL ,
	combustible2         VARCHAR(100) NULL ,
	carroceria           VARCHAR(100) NULL ,
	formula_rodante      VARCHAR(30) NULL ,
	nro_ruedas           VARCHAR(20) NULL ,
	traccion             VARCHAR(20) NULL ,
	nro_ejes             VARCHAR(40) NULL ,
	dist_entre_ejes      VARCHAR(40) NULL ,
	longitud             VARCHAR(50) NULL ,
	ancho                VARCHAR(30) NULL ,
	altura	             VARCHAR(100),
	nro_puertas          VARCHAR(30) NULL ,
	peso_bruto           VARCHAR(50) NULL ,
	peso_neto            VARCHAR(50) NULL ,
	carga_util           VARCHAR(50) NULL ,
	nro_asientos         VARCHAR(50) NULL ,
	nro_pasajeros        VARCHAR(50) NULL ,
	nro_cilindros        VARCHAR(50) NULL ,
	cilindrada           VARCHAR(50) NULL ,
	codigo_cayman        VARCHAR(50) NULL ,
	id_estado            INTEGER NULL ,
	id_modelo            BIGINT NOT NULL ,
	descripcion_larga    VARCHAR(100) NULL ,
	descripcion_corta    VARCHAR(100) NULL ,
	id_marca             CHAR(4) NOT NULL ,
	tiempo_garantia       VARCHAR(100) NULL ,
 PRIMARY KEY (id_modelo),
FOREIGN KEY (id_marca) REFERENCES ALMACEN.TBL_MARCA (id_marca)
);



CREATE UNIQUE INDEX XPKALMACEN_TBL_VEHICULO ON ALMACEN.TBL_MODELO
(id_modelo   ASC);



CREATE  INDEX XIF1ALMACEN_TBL_VEHICULO ON ALMACEN.TBL_MODELO
(id_marca   ASC);


ALTER TABLE ALMACEN.TBL_PRODUCTO ADD COLUMN id_modelo BIGINT;





CREATE TABLE ALMACEN.TBL_SERIEPRODUCTO
(
	NRO_SERIE            VARCHAR(30) NULL ,
	NRO_CHASIS           VARCHAR(30) NULL ,
	ANIO_FARICACION      INTEGER NULL ,
	ANIO_MODELO          INTEGER NULL ,
	NRO_PLACA	     VARCHAR(30),
	id_almacen           INTEGER NOT NULL ,
	id_estado            INTEGER NULL ,
	fecha_registro       TIMESTAMP NULL ,
	fecha_actualiza      TIMESTAMP NULL ,
	id_usuario_r         CHAR(5) NULL ,
	id_usuario_a         CHAR(5) NULL ,
	id_serie             bigint NOT NULL ,
	id_producto          VARCHAR(20) NOT NULL ,
	id_unidadventa       INTEGER NOT NULL ,
 PRIMARY KEY (id_serie),
FOREIGN KEY (id_almacen) REFERENCES ALMACEN.TBL_ALMACEN (id_almacen),
FOREIGN KEY (id_producto, id_unidadventa) REFERENCES ALMACEN.TBL_DETPRODUCTO (id_producto, id_unidadventa)
);

--ALTER TABLE ALMACEN.TBL_SERIEPRODUCTO ADD COLUMN NRO_PLACA VARCHAR(30) DEFAULT '';



CREATE UNIQUE INDEX XPKALMACEN_TBL_SERIEPRODUCTO ON ALMACEN.TBL_SERIEPRODUCTO
(id_serie   ASC);



CREATE  INDEX XIF2ALMACEN_TBL_SERIEPRODUCTO ON ALMACEN.TBL_SERIEPRODUCTO
(id_almacen   ASC);



CREATE  INDEX XIF3ALMACEN_TBL_SERIEPRODUCTO ON ALMACEN.TBL_SERIEPRODUCTO
(id_producto   ASC,id_unidadventa   ASC);



CREATE TABLE ALMACEN.TBL_SERIECOMPRA
(
	fecha_compra         TIMESTAMP NULL ,
	id_usuario_r         CHAR(4) NULL ,
	id_usuario_a         CHAR(4) NULL ,
	fecha_actualiza      TIMESTAMP NULL ,
	id_estado            INTEGER NULL ,
	id_sucursalcompra    INTEGER NOT NULL ,
	id__compra           INTEGER NOT NULL ,
	id_almacen           INTEGER NULL ,
	id_serie             bigint NOT NULL ,
	observaciones        text NULL ,
	fecha_registro       TIMESTAMP NULL ,
 PRIMARY KEY (id_sucursalcompra,id__compra,id_serie),
FOREIGN KEY (id_serie) REFERENCES ALMACEN.TBL_SERIEPRODUCTO (id_serie),
FOREIGN KEY (id_sucursalcompra, id__compra) REFERENCES COMPRAS.TBL_COMPRA (id_sucursalcompra, id__compra)
);

--select *from compras.tbl_compra

CREATE UNIQUE INDEX XPKALMACEN_TBL_PROCESOSSERIE ON ALMACEN.TBL_SERIECOMPRA
(id_sucursalcompra   ASC,id__compra   ASC,id_serie   ASC);



CREATE  INDEX XIF1ALMACEN_TBL_PROCESOSSERIE ON ALMACEN.TBL_SERIECOMPRA
(id_serie   ASC);



CREATE  INDEX XIF2ALMACEN_TBL_PROCESOSSERIE ON ALMACEN.TBL_SERIECOMPRA
(id_sucursalcompra   ASC,id__compra   ASC);


CREATE SCHEMA SERVICIOS;

CREATE TABLE SERVICIOS.TBL_TIPO_SERVICIO
(
	id_tipo_servicio     INTEGER NOT NULL ,
	descripcion_larga    VARCHAR(200) NULL ,
	descripcion_corta    VARCHAR(100) NULL ,
	id_estado            INTEGER NULL ,
	genera_informe       BOOLEAN NULL ,
	importe              NUMERIC(20,4) NULL ,
	fecha_reg            TIMESTAMP NULL ,
	fecha_Act            TIMESTAMP NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
	id_prioridad         INTEGER NULL ,
 PRIMARY KEY (id_tipo_servicio),
FOREIGN KEY (id_prioridad) REFERENCES COMMON.TBL_PRIORIDAD (id_prioridad) ON DELETE SET NULL
);



CREATE UNIQUE INDEX XPKSERVICIO_TBL_TIPO_SERVICIO ON SERVICIOS.TBL_TIPO_SERVICIO
(id_tipo_servicio   ASC);



CREATE  INDEX XIF1SERVICIO_TBL_TIPO_SERVICIO ON SERVICIOS.TBL_TIPO_SERVICIO
(id_prioridad   ASC);



CREATE TABLE SERVICIOS.TBL_ESTADOSERVICIO
(
	descripcion_larga    VARCHAR(200) NULL ,
	id_estado            INTEGER NULL ,
	descripcion_corta    VARCHAR(100) NULL ,
	id_estadosrv         INTEGER NOT NULL ,
 PRIMARY KEY (id_estadosrv)
);



CREATE UNIQUE INDEX XPKSERVICIOS_TBL_ESTADOSERVICI ON SERVICIOS.TBL_ESTADOSERVICIO
(id_estadosrv   ASC);






CREATE TABLE SERVICIOS.TBL_CITA
(
	id_cita              BIGINT NOT NULL ,
	nro_placa            VARCHAR(25) NULL ,
	id_modelo            BIGINT NULL ,
	fecha_emision        TIMESTAMP NULL ,
	libro_servicio       text NULL ,
	fec_servicio_anterior TIMESTAMP NULL ,
	km_serv_anterior     TEXT NULL ,
	recomendacion_srv_anterior text NULL ,
	id_tipo_servicio     INTEGER NOT NULL ,
	id_tipo_servicio_anterior INTEGER NOT NULL ,
	fec_inicio_problema  TIMESTAMP NULL ,
	frecuencia_problema  text NULL ,
	lugar_problema       TEXT NULL ,
	otros_problemas      TEXT NULL ,
	detalle_problema     TEXT NULL ,
	fecha_recepcion      TIMESTAMP NULL ,
	hora_recepcion       TEXT NULL ,
	ingresa_cliente      BOOLEAN NULL ,
	recoge_empresa       BOOLEAN NULL ,
	fecha_entrega        TIMESTAMP NULL ,
	hora_entrega         TEXT NULL ,
	entregar_en_taller   BOOLEAN NULL ,
	entregar_en_casa     BOOLEAN NULL ,
	id_sucursal          INTEGER NOT NULL ,
	id_estado            INTEGER NULL ,
	id_direccion         bigInt NULL ,
	id_cliente           VARCHAR(15) NULL ,
	observaciones_srv    TEXT NULL ,
	serie                CHAR(4) NULL ,
	numero               CHAR(7) NULL ,
	id_comprobante       INTEGER NULL ,
	fecha_Reg            TIMESTAMP NULL ,
	fecha_act            TIMESTAMP NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
 PRIMARY KEY (id_sucursal,id_cita),
FOREIGN KEY (id_modelo) REFERENCES ALMACEN.TBL_MODELO (id_modelo) ON DELETE SET NULL,
FOREIGN KEY (id_tipo_servicio) REFERENCES SERVICIOS.TBL_TIPO_SERVICIO (id_tipo_servicio),
FOREIGN KEY (id_direccion, id_cliente) REFERENCES VENTAS.TBL_DIRECCION (id_direccion, id_persona) ON DELETE SET NULL,
FOREIGN KEY (id_comprobante) REFERENCES COMMON.TBL_COMPROBANTE (id_comprobante) ON DELETE SET NULL,
FOREIGN KEY (id_sucursal) REFERENCES COMMON.TBL_SUCURSAL (id_sucursal),
FOREIGN KEY (id_tipo_servicio_anterior) REFERENCES SERVICIOS.TBL_TIPO_SERVICIO (id_tipo_servicio) ON DELETE SET NULL
);



CREATE UNIQUE INDEX XPKSERVICIOS_TBL_CITA ON SERVICIOS.TBL_CITA
(id_sucursal   ASC,id_cita   ASC);



CREATE  INDEX XIF1SERVICIOS_TBL_CITA ON SERVICIOS.TBL_CITA
(id_modelo   ASC);



CREATE  INDEX XIF2SERVICIOS_TBL_CITA ON SERVICIOS.TBL_CITA
(id_cita   ASC,id_sucursal   ASC);



CREATE  INDEX XIF3SERVICIOS_TBL_CITA ON SERVICIOS.TBL_CITA
(id_tipo_servicio   ASC);



CREATE  INDEX XIF4SERVICIOS_TBL_CITA ON SERVICIOS.TBL_CITA
(id_sucursal   ASC);



CREATE  INDEX XIF5SERVICIOS_TBL_CITA ON SERVICIOS.TBL_CITA
(id_direccion   ASC,id_cliente   ASC);



CREATE  INDEX XIF6SERVICIOS_TBL_CITA ON SERVICIOS.TBL_CITA
(id_comprobante   ASC);



CREATE  INDEX XIF8SERVICIOS_TBL_CITA ON SERVICIOS.TBL_CITA
(id_tipo_servicio_anterior   ASC);





INSERT INTO  SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg",  "genera_informe", "importe")
VALUES (E'0004', E'MANTTO', E'1', E'2013-01-04 13:44:46.168', NULL, E'0013', E'0013',  E'N', 0);

INSERT INTO  SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg", "genera_informe", "importe")
VALUES (E'0007', E'Otros', E'1', E'2013-05-13 18:32:30.373', NULL, E'0013', E'0013', E'N', 0);

INSERT INTO  SERVICIOS.TBL_TIPO_SERVICIO("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg",  "genera_informe", "importe")
VALUES (E'0013', E'Servicio por garantia', E'1', NULL, NULL, NULL, E'0013',  E'N', 0);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg", "genera_informe", "importe")
VALUES (E'0010', E'Servicio de Mantenimiento regular Motokar', E'1', E'2013-05-13 18:35:06.829', NULL, E'0013', E'0013', false, 0);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO  ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg", "genera_informe", "importe")
VALUES (E'0002', E'1r° Servicio de Mantenimiento Gratis Propio', E'1', E'2013-05-13 18:45:29.193', NULL, E'0013', E'0013',  E'N', 15);



INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO  ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg",  "genera_informe", "importe")
VALUES (E'0008', E'2r° Servicio de Mantenimiento Gratis Propio', E'1', E'2013-05-13 18:45:36.592', NULL, E'0013', E'0036', E'N', 15);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO  ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg",  "genera_informe", "importe")
VALUES (E'0011', E'1r° Servicio de Mant. Motokar Gratis Propio', E'1', E'2013-05-13 18:45:55.531', NULL, E'0013', E'0013',  E'N', 10);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO  ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg",  "genera_informe", "importe")
VALUES (E'0012', E'2r° Servicio de Mant. Motokar Gratis Propio', E'1', E'2013-05-13 18:46:00.363', NULL, E'0013', E'0013',  E'N', 10);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg", "genera_informe", "importe")
VALUES (E'0005', E'MANTENIMIENTO GENERAL', E'1', E'2013-05-20 18:24:05.954', NULL, E'0013', E'0013',  E'N', 0);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg",  "genera_informe", "importe")
VALUES (E'0001', E'MANTENIMIENTO REGULAR', E'1', E'2013-05-20 18:24:40.948', NULL, E'0013', E'0013',  E'N', 0);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg",  "genera_informe", "importe")
VALUES (E'0006', E'GARANTIA', E'1', E'2013-05-20 18:27:14.004', NULL, E'0013', E'0013', E'N', 0);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg", "genera_informe", "importe")
VALUES (E'0009', E'Regulacion de Valancines', E'1', E'2013-05-20 18:27:31.041', NULL, E'0013', E'0013', E'N', 0);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg",  "genera_informe", "importe")
VALUES (E'0014', E'Servicio de Mantenimiento General Motokar', E'1', NULL, NULL, NULL, E'0013', E'N', 0);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg", "genera_informe", "importe")
VALUES (E'0003', E'Reparacion de Motor', E'1', E'2013-09-06 17:52:28.518', NULL, E'0013', E'0013',  NULL, 0);

INSERT INTO SERVICIOS.TBL_TIPO_SERVICIO ("id_tipo_servicio", "descripcion_larga", "id_estado", "fecha_act", "fecha_reg", "id_usuario_act", "id_usuario_reg","genera_informe", "importe")
VALUES (E'0015', E'Otras reparaciones', E'1', NULL, NULL, NULL, E'0013',  NULL, 0);



--estados del servicio

select *from SERVICIOS.tbl_estadoservicio

INSERT INTO SERVICIOS.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'001', E'ACEPTADO(en reparación)', 1);

INSERT INTO servicios.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'002', E'TERMINADO(listo para entregar)', 1);

INSERT INTO servicios.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'003', E'ENTREGADO', 1);

INSERT INTO servicios.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'004', E'PEND.REVISION', 1);

INSERT INTO servicios.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'005', E'PEND.REVISION A DOMICILLO ', 1);

INSERT INTO servicios.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'006', E'PEND.RETIRAR DE DOMICILLO', 1);

INSERT INTO servicios.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'007', E'ESPERANDO REPUESTOS', 1);

INSERT INTO servicios.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'008', E'PEND.ACEPTACION PRESUPUESTO', 1);

INSERT INTO servicios.tbl_estadoservicio ("id_estadosrv", "descripcion_larga", "id_estado")
VALUES (E'009', E'NO SE REPARA', 1);




CREATE TABLE SERVICIOS.TBL_ESTACION
(
	id_estacion          INTEGER NOT NULL ,
	descripcion_larga    VARCHAR(200) NULL ,
	descripcion_corta    VARCHAR(100) NULL ,
	id_estado            INTEGER NULL ,
 PRIMARY KEY (id_estacion)
);



CREATE UNIQUE INDEX XPKSERVICIOS_TBL_ESTACION ON SERVICIOS.TBL_ESTACION
(id_estacion   ASC);



CREATE TABLE SERVICIOS.TBL_EST_SUCURSAL
(
	id_estacion          INTEGER NOT NULL ,
	id_estacion_sucursal INTEGER NOT NULL ,
	id_sucursal          INTEGER NOT NULL ,
	id_estado            INTEGER NULL ,
	observacion          text NULL ,
 PRIMARY KEY (id_estacion_sucursal),
FOREIGN KEY (id_estacion) REFERENCES SERVICIOS.TBL_ESTACION (id_estacion),
FOREIGN KEY (id_sucursal) REFERENCES COMMON.TBL_SUCURSAL (id_sucursal)
);



CREATE UNIQUE INDEX XPKSERVICIOS_TBL_ESTACION_SUCU ON SERVICIOS.TBL_EST_SUCURSAL
(id_estacion_sucursal   ASC);



CREATE  INDEX XIF1SERVICIOS_TBL_ESTACION_SUC ON SERVICIOS.TBL_EST_SUCURSAL
(id_estacion   ASC);



CREATE  INDEX XIF2SERVICIOS_TBL_ESTACION_SUC ON SERVICIOS.TBL_EST_SUCURSAL
(id_sucursal   ASC);



INSERT INTO servicios.TBL_ESTACION ("id_estacion", "descripcion_larga", "id_estado")
VALUES (E'01', E'ESTACIÓN RAPIDA', E'1');

INSERT INTO servicios.TBL_ESTACION ("id_estacion", "descripcion_larga", "id_estado")
VALUES (E'02', E'ESTACIÓN 01', E'1');

INSERT INTO servicios.TBL_ESTACION ("id_estacion", "descripcion_larga", "id_estado")
VALUES (E'03', E'ESTACIÓN 02', E'1');


INSERT INTO SERVICIOS.TBL_EST_SUCURSAL(id_estacion_sucursal,id_estacion ,id_sucursal,id_estado,observacion )VALUES(1,1,1,1,'');
INSERT INTO SERVICIOS.TBL_EST_SUCURSAL(id_estacion_sucursal,id_estacion ,id_sucursal,id_estado,observacion )VALUES(2,2,1,1,'');
INSERT INTO SERVICIOS.TBL_EST_SUCURSAL(id_estacion_sucursal,id_estacion ,id_sucursal,id_estado,observacion )VALUES(3,3,1,1,'');

select * from ALMACEN.TBL_IMPORT_PRODUCTO for update


CREATE TABLE ALMACEN.TBL_IMPORT_PRODUCTO(
	ID_PRODUCTO	varchar(20),
	CODIGO		VARCHAR(36),
	PRODUCTO	varchar(200),
	ID_GRUPO CHAR(3),
	GRUPO	VARCHAR(200),
	ID_FAMILIA CHAR(5)	,
	FAMILIA	 varchar(100),
	ID_MARCA char(4),
	MARCA	varchar(100),
	ID_COLOR integer,
	COLOR	varchar(100),
	ID_MODELO	bigint,
	MODELO	varchar(100),	
	ID_UNIDAD	integer,
	UNIDAD	varchar(200),
	VAL_UNIDAD INTEGER,
	ID_INVENTARIO	 integer,
	ID_ALMACEN	integer,
	STOCK	numeric(20,4),
	COSTO	numeric(20,4),
	P1	numeric(20,4),
	P2	numeric(20,4),
	P3 numeric(20,4),
	P4 numeric(20,4),
	P5 numeric(20,4),
	ppuu numeric(20,4)	
)

RUC:10032433923

SELECT distinct id_familia,familia FROM ALMACEN.TBL_IMPORT_PRODUCTO where id_familia ilike '%0067%'
SELECT distinct id_familia,familia FROM ALMACEN.TBL_IMPORT_PRODUCTO where familia ilike '%HISOPOS%'

update ALMACEN.TBL_IMPORT_PRODUCTO set id_familia='0488' where id_familia='155'
--update ALMACEN.TBL_IMPORT_PRODUCTO set FAMILIA='HISOPOS' where id_familia='0488'

SELECT distinct TRIM(id_familia),TRIM(familia) FROM ALMACEN.TBL_IMPORT_PRODUCTO ORDER BY TRIM(FAMILIA)
SELECT distinct id_unidad,unidad FROM ALMACEN.TBL_IMPORT_PRODUCTO  order by id_unidad 

SELECT distinct id_unidad,unidad FROM ALMACEN.TBL_IMPORT_PRODUCTO  where unidad='MILLAR'

update ALMACEN.TBL_IMPORT_PRODUCTO  set id_unidad =12 where unidad='MILLAR'

select *from ALMACEN.ISP_MIGRARDATA()
DELETE from almacen.tbl_COLOR
select *from almacen.tbl_producto
select *from almacen.tbl_producto
select *from almacen.tbl_producto
SELECT *FROM ALMACEN.TBL_FAMILIA
SELECT *FROM ALMACEN.TBL_MARCA
SELECT *FROM almacen.tbl_familiamarca

 alter table almacen.tbl_existencia add  column saldo_inianterior numeric(20,4) DEFAULT 0

create or REPLACE FUNCTION ALMACEN.ISP_MIGRARDATA()
RETURNS TEXT[] AS  $$
DECLARE
	dat record;
	id integer;
	res text[];
BEGIN
--registrando los grupos
for dat in SELECT id_grupo,grupo FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_grupo where descripcion_larga=dat.grupo)then
	INSERT INTO almacen.tbl_grupo(
            id_grupo, descripcion_larga, id_estado, descripcion_corta)
	VALUES (dat.id_grupo, dat.grupo, 1, dat.grupo);
	end if;
end loop;
--familia
for dat in SELECT id_familia,familia,id_grupo FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_familia where descripcion_larga=dat.familia)then
	INSERT INTO almacen.tbl_familia(
            id_familia, descripcion_larga, id_estado, descripcion_corta,id_grupo)
	VALUES (trim(dat.id_familia), dat.familia, 1, trim(dat.familia),dat.id_grupo);
	end if;
end loop;

--marca
for dat in SELECT id_marca,marca FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_marca where descripcion_larga=dat.marca)then
	INSERT INTO almacen.tbl_marca(
            id_marca, descripcion_larga, id_estado, descripcion_corta)
	VALUES (trim(dat.id_marca), trim(dat.marca), 1, trim(dat.marca));
	end if;
end loop;


for dat in SELECT id_familia,id_marca FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_familiamarca where id_familia=dat.id_familia and id_marca=dat.id_marca)then
	INSERT INTO almacen.tbl_familiamarca(
            id_familia, id_marca, id_estado, fecha)
	VALUES (dat.id_familia, dat.id_marca, 1, now());

	end if;
end loop;
--color
for dat in SELECT id_color,color FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_color where descripcion_larga=dat.color)then
	INSERT INTO almacen.tbl_color(
            id_color, descripcion_larga, id_estado, descripcion_corta)
	VALUES (dat.id_color, dat.color, 1, dat.color);
	end if;
end loop;
--modelo
for dat in SELECT id_modelo,modelo,id_marca FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_modelo where descripcion_larga=dat.modelo)then
	INSERT INTO almacen.tbl_modelo(
            id_modelo, descripcion_larga, id_estado, descripcion_corta,id_marca)
	VALUES (dat.id_modelo, dat.modelo, 1, dat.modelo,dat.id_marca);
	end if;
end loop;

for dat in SELECT id_unidad,unidad FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_unidad where desc_larga=dat.unidad)then
	INSERT INTO almacen.tbl_unidad(
            id_unidadventa, desc_larga, id_estado)
	VALUES (dat.id_unidad, dat.unidad, 1);
	end if;
end loop;


for dat in SELECT distinct id_producto,producto || case when marca<>'GENERICO' then ' | ' || upper(marca) ELSE '' END as producto,id_familia,id_marca,stock,0.00 AS costo,id_color,id_modelo FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_producto where descripcion_larga=dat.producto and id_producto=dat.id_producto)then
	INSERT INTO almacen.tbl_producto(
            id_producto, id_familia, id_marca, descripcion_larga, descripcion_corta, 
            cod_barra, servicio, id_estado, impuesto, reintegro_tributario, 
            partida_arancelaria, dev_envases, perecible, sujet_percepcion, 
            vende_pack, obs_compra, obs_venta, favorito, caracteristicas, 
            imagen, stock_inicial, costo_inicial, stockh, costounitario, 
            codigo, image, id_color, id_impuesto, inventariado, activo_fijo, 
            gestiona_lotes, gestiona_series, id_modelo
            )
	VALUES (dat.id_producto, dat.id_familia, dat.id_marca, dat.producto , dat.producto, 
            '', false, 1, 0, false, 
            '', false, false, false, 
            false, '', '', false, '', 
            null, dat.stock, dat.costo, dat.costo, dat.costo, 
            dat.id_producto, null, dat.id_color, 0, true, false, 
            false, false, dat.id_modelo);

	end if;
end loop;

for dat in SELECT DISTINCT id_producto,producto,id_unidad FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_detproducto where id_producto=dat.id_producto and  id_unidadventa=dat.id_unidad)then
	INSERT INTO almacen.tbl_detproducto(
            id_producto, id_unidadventa, fecha, id_estado, val_unidad, val_minimo, 
            unidad_inventario, id_tipoventa, undpred_compra)
    VALUES ( dat.id_producto, dat.id_unidad, now(), 1, 1, 1, 
            true, 1, true);

	end if;
end loop;

--EXISTENCIAS
for dat in SELECT * FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_existencia where id_producto=dat.id_producto and  id_unidadventa=dat.id_unidad and id_almacen=dat.id_almacen and id_inventario=dat.id_inventario)then
	INSERT INTO almacen.tbl_existencia(
            stock_fisico, id_almacen, id_producto, id_unidadventa, stock_reserva, 
            stocktransito, id_lote, id_inventario, fec_inventario, valor_incial, 
            stock_inicial, ubicacion, stock_reparto, id_estado, observaciones, 
            stock_ordencompra, consto_inicial, inv_inicial, costo_promedio, 
            saldo_inianterior, und_inventario)
	VALUES (dat.STOCK, dat.id_almacen, dat.id_producto, dat.id_unidad, 0, 
            0, null, dat.id_inventario, now(), dat.costo, 
            dat.stock, '', 0, 1, 'Importacion de inventario inicial', 
            0, dat.costo, true, dat.costo, 
            0, true);


	end if;
end loop;
--saldos
for dat in SELECT * FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_saldosexistencia where id_producto=dat.id_producto and  id_unidad=dat.id_unidad and id_sucursal=1 )then
	select max(id_saldos) into id from almacen.tbl_saldosexistencia;
	if id is null then
		id=1;
	else
		id:=id+1;
	end if;
	
	INSERT INTO almacen.tbl_saldosexistencia(
            id_saldos, stockh, stocktransito, stockcomprometido, costounitario, 
            id_unidad, id_producto, id_sucursal, id_estado, fechaactualiza)
	VALUES (id, dat.stock, 0, 0, dat.costo, 
            dat.id_unidad, dat.id_producto, 1, 1, null);



	end if;
end loop;
--precios

for dat in SELECT * FROM ALMACEN.TBL_IMPORT_PRODUCTO loop
	if not exists(select 1 from almacen.tbl_precio where id_producto=dat.id_producto and  id_unidadventa=dat.id_unidad and id_listaprecio=1)then
	INSERT INTO almacen.tbl_precio(
            precio1, id_listaprecio, id_producto, id_unidadventa, codbarra, 
            precio2, precio3, val_unidad, val_minimo_venta, costo, flete, 
            otroscostos, id_estado, predeterminado, coste, peso, id_tipoventa, 
            undpred_compra)
	VALUES (dat.p1, 1, dat.id_producto, dat.id_unidad, '', 
            dat.p2, dat.p3, 1, 1, dat.costo, 0, 
            0,1, true, dat.costo, 0, 1, 
            true);


	end if;
end loop;
return res;
END;$$
LANGUAGE 'plpgsql' ;






CREATE  TABLE   SERVICIOS.TBL_SERVICIO
(
	id_servicio          BIGINT NOT NULL ,
	serie                CHAR(4) NULL ,
	numero               CHAR(7) NULL ,
	fecha_servicio       TIMESTAMP NULL ,
	fecha_registro       TIMESTAMP NULL ,
	garantia             TIMESTAMP NULL ,
	id_tipo_servicio     INTEGER NULL ,
	id_tecnico           VARCHAR(15) NULL ,
	id_comprobante       INTEGER NULL ,
	id_prioridad         INTEGER NULL ,
	imp_venta            NUMERIC(20,4) NULL ,
	imp_igv              NUMERIC(20,4) NULL ,
	imp_total            NUMERIC(20,4) NULL ,
	imp_repuestos        NUMERIC(20,4) NULL ,
	imp_accesorios       NUMERIC(20,4) NULL ,
	imp_lubricantes      NUMERIC(20,4) NULL ,
	imp_servicios        NUMERIC(20,4) NULL ,
	id_estadosrv         INTEGER NULL ,
	id_direccion         bigInt NULL ,
	id_cliente           VARCHAR(15) NULL ,
	imp_acuenta          NUMERIC(20,4) NULL ,
	id_estado            INTEGER NULL ,
	id_cita              BIGINT  NULL ,
	id_moneda            INTEGER NULL ,
	id_igv               INTEGER NULL ,
	id_tipocambio        INTEGER NULL ,
	imp_otros            NUMERIC(20,4) NULL ,
	usuario_en           CHAR(5) NULL ,
	tlf_usuario          VARCHAR(15) NULL ,
	id_usuario_servicio  CHAR(15) NOT NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
	fecha_reg            TIMESTAMP NULL ,
	fecha_act            TIMESTAMP NULL ,
	id_responsable       VARCHAR(15) NULL ,
	entregado_por        TEXT NULL ,
	fecha_tentativa_entrega TIMESTAMP NULL ,
	fecha_terminado      TIMESTAMP NULL ,
	hora_tentativa_entrega VARCHAR(20) NULL ,
	fecha_entrega        TIMESTAMP NULL ,
	servicio_garantia    BOOLEAN NULL ,
	requerimiento        text NULL ,
	informe              TEXT NULL ,
	fecha_entrada        TIMESTAMP NULL ,
	nro_ficha            VARCHAR(7) NULL ,
	id_tipoventa         INTEGER NULL ,
	id_operacion         INTEGER NULL ,
	imp_bruto            NUMERIC(20,4) NULL ,
	imp_dscto            NUMERIC(20,4) NULL ,
	obs_entrega          TEXT NULL ,
	id_sucursal          INTEGER NOT NULL ,
	id_sucursal_cita     INTEGER NULL ,
	id_estacion_sucursal INTEGER NULL ,
 PRIMARY KEY (id_servicio,id_sucursal),
FOREIGN KEY (id_tipo_servicio) REFERENCES SERVICIOS.TBL_TIPO_SERVICIO (id_tipo_servicio) ON DELETE SET NULL,
FOREIGN KEY (id_tecnico) REFERENCES PLANILLAS.TBL_PERSONA (id_persona) ON DELETE SET NULL,
FOREIGN KEY (id_comprobante) REFERENCES COMMON.TBL_COMPROBANTE (id_comprobante) ON DELETE SET NULL,
FOREIGN KEY (id_prioridad) REFERENCES COMMON.TBL_PRIORIDAD (id_prioridad) ON DELETE SET NULL,
FOREIGN KEY (id_estadosrv) REFERENCES SERVICIOS.TBL_ESTADOSERVICIO (id_estadosrv) ON DELETE SET NULL,
FOREIGN KEY (id_direccion, id_cliente) REFERENCES VENTAS.TBL_DIRECCION (id_direccion, id_persona) ON DELETE SET NULL,
FOREIGN KEY (id_sucursal_cita, id_cita) REFERENCES SERVICIOS.TBL_CITA (id_sucursal, id_cita),
FOREIGN KEY (id_moneda) REFERENCES COMMON.TBL_MONEDA (id_moneda) ON DELETE SET NULL,
FOREIGN KEY (id_igv) REFERENCES COMMON.TBL_IGV (id_igv) ON DELETE SET NULL,
FOREIGN KEY (id_tipocambio) REFERENCES COMMON.TBL_TIPOCAMBIO (id_tipocambio) ON DELETE SET NULL,
FOREIGN KEY (id_usuario_servicio) REFERENCES VENTAS.TBL_CONTACPERSONA (id_contacpersona),
FOREIGN KEY (id_responsable) REFERENCES PLANILLAS.TBL_PERSONA (id_persona) ON DELETE SET NULL,
FOREIGN KEY (id_tipoventa) REFERENCES COMMON.TBL_TIPOVENTA (id_tipoventa) ON DELETE SET NULL,
FOREIGN KEY (id_operacion) REFERENCES COMMON.TBL_OPERACION (id_operacion) ON DELETE SET NULL,
FOREIGN KEY (id_sucursal) REFERENCES COMMON.TBL_SUCURSAL (id_sucursal),
FOREIGN KEY (id_estacion_sucursal) REFERENCES SERVICIOS.TBL_EST_SUCURSAL (id_estacion_sucursal) ON DELETE SET NULL
);



CREATE UNIQUE INDEX XPKSERVICIO_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_servicio   ASC,id_sucursal   ASC);



CREATE  INDEX XIF1SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_tipo_servicio   ASC);



CREATE  INDEX XIF10SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_tipocambio   ASC);



CREATE  INDEX XIF11SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_usuario_servicio   ASC);



CREATE  INDEX XIF12SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_responsable   ASC);



CREATE  INDEX XIF15SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_tipoventa   ASC);



CREATE  INDEX XIF16SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_operacion   ASC);



CREATE  INDEX XIF17SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_sucursal   ASC);



CREATE  INDEX XIF18SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_estacion_sucursal   ASC);



CREATE  INDEX XIF2SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_tecnico   ASC);



CREATE  INDEX XIF3SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_comprobante   ASC);



CREATE  INDEX XIF4SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_prioridad   ASC);



CREATE  INDEX XIF5SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_estadosrv   ASC);



CREATE  INDEX XIF6SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_direccion   ASC,id_cliente   ASC);



CREATE  INDEX XIF7SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_cita   ASC,id_sucursal_cita   ASC);



CREATE  INDEX XIF8SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_moneda   ASC);



CREATE  INDEX XIF9SERVICIOS_TBL_SERVICIO ON SERVICIOS.TBL_SERVICIO
(id_igv   ASC);


CREATE TABLE SERVICIOS.TBL_DETSERVICIO
(
	id_servicio          BIGINT NOT NULL ,
	id_sucursal          INTEGER NOT NULL ,
	item                 INTEGER NOT NULL ,
	id_detservicio       bigint NOT NULL ,
	cantidad             NUMERIC(20,4) NULL ,
	imp_precio           NUMERIC(20,4) NULL ,
	imp_igv              NUMERIC(20,4) NULL ,
	porcent_igv          NUMERIC(20,4) NULL ,
	imp_dscto            NUMERIC(20,4) NULL ,
	imp_venta            NUMERIC(20,4) NULL ,
	imp_total            NUMERIC(20,4) NULL ,
	id_estado            INTEGER NULL ,
	id_producto          VARCHAR(20) NOT NULL ,
	id_unidadventa       INTEGER NOT NULL ,
	id_listaprecio       INTEGER NOT NULL ,
	imp_bruto            NUMERIC(20,4) NULL ,
	id_almacen           INTEGER NOT NULL ,
	r                    BOOLEAN NULL ,
	a                    BOOLEAN NULL ,
	l                    BOOLEAN NULL ,
	s                    BOOLEAN NULL ,
	lista                INTEGER NULL ,
	observacion          TEXT NULL ,
	descripcion_linea    TEXT NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
	fecha_reg            TIMESTAMP NULL ,
	fecha_act            TIMESTAMP NULL ,
 PRIMARY KEY (id_servicio,id_sucursal,item,id_detservicio,id_producto,id_unidadventa,id_listaprecio),
FOREIGN KEY (id_servicio, id_sucursal) REFERENCES SERVICIOS.TBL_SERVICIO (id_servicio, id_sucursal),
FOREIGN KEY (id_producto, id_unidadventa, id_listaprecio) REFERENCES ALMACEN.TBL_PRECIO (id_producto, id_unidadventa, id_listaprecio),
FOREIGN KEY (id_almacen) REFERENCES ALMACEN.TBL_ALMACEN (id_almacen)
);



CREATE UNIQUE INDEX XPKSERVICIOS_TBL_DETSERVICIO ON SERVICIOS.TBL_DETSERVICIO
(id_servicio   ASC,id_sucursal   ASC,item   ASC,id_detservicio   ASC,id_producto   ASC,id_unidadventa   ASC,id_listaprecio   ASC);



CREATE  INDEX XIF1SERVICIOS_TBL_DETSERVICIO ON SERVICIOS.TBL_DETSERVICIO
(id_servicio   ASC,id_sucursal   ASC);



CREATE  INDEX XIF2SERVICIOS_TBL_DETSERVICIO ON SERVICIOS.TBL_DETSERVICIO
(id_producto   ASC,id_unidadventa   ASC,id_listaprecio   ASC);



CREATE  INDEX XIF3SERVICIOS_TBL_DETSERVICIO ON SERVICIOS.TBL_DETSERVICIO
(id_almacen   ASC);






CREATE TABLE SERVICIOS.TBL_SERVICIO_SERIE
(
	id_servicio          BIGINT NOT NULL ,
	id_sucursal          INTEGER NOT NULL ,
	id_serie             BIGINT NOT NULL ,
	id_srvserie          bigint NOT NULL ,
	fecha_reg            TIMESTAMP NULL ,
	fecha_act            TIMESTAMP NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
	km                   TEXT NULL ,
	observacion          TEXT NULL ,
	id_color             INTEGER NOT NULL ,
	id_modelo            BIGINT NOT NULL ,
 PRIMARY KEY (id_servicio,id_sucursal,id_serie,id_srvserie),
FOREIGN KEY (id_servicio, id_sucursal) REFERENCES SERVICIOS.TBL_SERVICIO (id_servicio, id_sucursal),
FOREIGN KEY (id_serie) REFERENCES ALMACEN.TBL_SERIEPRODUCTO (id_serie),
FOREIGN KEY (id_color) REFERENCES ALMACEN.TBL_COLOR (id_color),
FOREIGN KEY (id_modelo) REFERENCES ALMACEN.TBL_MODELO (id_modelo)
);



CREATE UNIQUE INDEX XPKSERVICIOS_TBL_SERVICIO_SERI ON SERVICIOS.TBL_SERVICIO_SERIE
(id_servicio   ASC,id_sucursal   ASC,id_serie   ASC,id_srvserie   ASC);



CREATE  INDEX XIF1SERVICIOS_TBL_SERVICIO_SER ON SERVICIOS.TBL_SERVICIO_SERIE
(id_servicio   ASC,id_sucursal   ASC);



CREATE  INDEX XIF2SERVICIOS_TBL_SERVICIO_SER ON SERVICIOS.TBL_SERVICIO_SERIE
(id_serie   ASC);



CREATE  INDEX XIF3SERVICIOS_TBL_SERVICIO_SER ON SERVICIOS.TBL_SERVICIO_SERIE
(id_color   ASC);



CREATE  INDEX XIF4SERVICIOS_TBL_SERVICIO_SER ON SERVICIOS.TBL_SERVICIO_SERIE
(id_modelo   ASC);


ALTER TABLE almacen.tbl_seriecompra ADD COLUMN ITEM  INTEGER DEFAULT 0;

update common.tbl_estado set des_estado='FACTURADO' WHERE ID_ESTADO=18;




CREATE TABLE ALMACEN.TBL_SERIEVENTA
(
	fecha_venta          TIMESTAMP NULL ,
	fecha_reg            TIMESTAMP NULL ,
	id_usuario_r         CHAR(5) NULL ,
	id_usuario_a         CHAR(5) NULL ,
	id_estado            INTEGER NULL ,
	id_sucursal          INTEGER NOT NULL ,
	id_facturacion       BIGINT NOT NULL ,
	id_almacen           INTEGER NULL ,
	id_serie             BIGINT NOT NULL ,
	item                 INTEGER NULL ,
	observacion          text NULL ,
	fecha_act            TIMESTAMP NULL ,
	id_serieventa        BIGINT NOT NULL ,
 PRIMARY KEY (id_sucursal,id_facturacion,id_serie,id_serieventa),
FOREIGN KEY (id_serie) REFERENCES ALMACEN.TBL_SERIEPRODUCTO (id_serie),
FOREIGN KEY (id_sucursal, id_facturacion) REFERENCES VENTAS.TBL_FACTURACION (id_sucursal, id_facturacion)
);




CREATE UNIQUE INDEX XPKALMACEN_TBL_SERIEVENTA ON ALMACEN.TBL_SERIEVENTA
(id_sucursal   ASC,id_facturacion   ASC,id_serie   ASC,id_serieventa   ASC);



CREATE  INDEX XIF1ALMACEN_TBL_SERIEVENTA ON ALMACEN.TBL_SERIEVENTA
(id_serie   ASC);



CREATE  INDEX XIF2ALMACEN_TBL_SERIEVENTA ON ALMACEN.TBL_SERIEVENTA
(id_sucursal   ASC,id_facturacion   ASC);


CREATE TABLE COMMON.TBL_REPORTES(
	id_reporte BIGINT primary key,
	descripcion TEXT,
	path text,
	item integer references seguridad.item(item),
	id_estado integer
);

INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(1,'DOCUMENTO DE VENTA','',126,1);
INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(2,'ACTA DE ENTREGA','D:\Sistemas\app-resort-v2\Plantillas\ventas\clientes\resort\pnlActaEntregaVehicular.jasper',126,1);
INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(3,'CLAUSULA ADICIONAL','D:\Sistemas\app-resort-v2\Plantillas\ventas\clientes\resort\pnlClausulaAdicional.jasper',126,1);
INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(4,'CONTRATO','',126,1);
INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(5,'CARTA PODER','D:\Sistemas\app-resort-v2\Plantillas\ventas\clientes\resort\pnlCartaPoder.jasper',126,1);
INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(6,'DOCUMENTO PRIVADO DE ENTREGA','D:\Sistemas\app-resort-v2\Plantillas\ventas\clientes\resort\pnlDocPrivadoEntrega.jasper',126,1);
INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(7,'INSCRIPCIÓN SUNARP','D:\Sistemas\app-resort-v2\Plantillas\ventas\clientes\resort\pnlInscripSunart.jasper',126,1);
INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(8,'CARTA DE COMPROMISO','D:\Sistemas\app-resort-v2\Plantillas\ventas\clientes\resort\pnlCartaCompromiso.jasper',126,1);
INSERT INTO COMMON.TBL_REPORTES(id_reporte,descripcion,path,item,id_estado)VALUES(9,'RESOLUCIÓN DE CONTRATO','',126,1);

select *from COMMON.TBL_REPORTES


CREATE TABLE ALMACEN.TBL_SERIEMOVALM
(
	fecha_movalm         TIMESTAMP NULL ,
	fecha_act            TIMESTAMP NULL ,
	id_usuario_r         CHAR(5) NULL ,
	id_usuario_a         CHAR(5) NULL ,
	id_estado            INTEGER NULL ,
	id_movimiento        BIGINT NOT NULL ,
	id_almacen           INTEGER NULL ,
	id_serie             BIGINT NOT NULL ,
	id_sucursal          INTEGER NOT NULL ,
	id_seriemovalm       BIGINT NOT NULL ,
	ITEM                 INTEGER NULL ,
	observaciones        TEXT NULL ,
	nota_ingreso	     boolean,
	nota_salida	     boolean,
 PRIMARY KEY (id_movimiento,id_serie,id_sucursal,id_seriemovalm),
FOREIGN KEY (id_serie) REFERENCES ALMACEN.TBL_SERIEPRODUCTO (id_serie),
FOREIGN KEY (id_movimiento) REFERENCES ALMACEN.TBL_CABMOVALM (id_movimiento),
FOREIGN KEY (id_sucursal) REFERENCES COMMON.TBL_SUCURSAL (id_sucursal)
);



CREATE UNIQUE INDEX XPKALMACEN_TBL_SEIREMOVALM ON ALMACEN.TBL_SERIEMOVALM
(id_movimiento   ASC,id_serie   ASC,id_sucursal   ASC,id_seriemovalm   ASC);



CREATE  INDEX XIF1ALMACEN_TBL_SEIREMOVALM ON ALMACEN.TBL_SERIEMOVALM
(id_serie   ASC);



CREATE  INDEX XIF2ALMACEN_TBL_SEIREMOVALM ON ALMACEN.TBL_SERIEMOVALM
(id_movimiento   ASC);



CREATE  INDEX XIF3ALMACEN_TBL_SEIREMOVALM ON ALMACEN.TBL_SERIEMOVALM
(id_sucursal   ASC);


99 607 389

alter table common.tbl_empresa add column dni_representante varchar(11) default '';
ALTER TABLE common.tbl_empresa ADD COLUMN id_sector integer  REFERENCES ventas.tbl_sector (id_sector);
ALTER TABLE COMMON.TBL_EMPRESA ADD COLUMN emisor_electronico boolean default false;
delete FROM COMMON.TBL_REPORTES

ALTER TABLE seguridad.tbl_usuariodocumento ADD COLUMN ID_SUCURSAL INTEGER default 1;
ALTER TABLE planillas.tbl_persona ADD COLUMN ID_COOPROPIETARIO VARCHAR(15);



CREATE TABLE VENTAS.TBL__SOLICITUD__CREDITO
(
	id__solicitud__credito BIGINT NOT NULL ,
	id__sucursal         INTEGER NOT NULL ,
	fecha__registro      TIMESTAMP NULL ,
	fecha__aprobacion    TIMESTAMP NULL ,
	imp__precio__lista   NUMERIC(20,4) NULL ,
	imp__inicial         NUMERIC(20,4) NULL ,
	nro__cuotas          NUMERIC(20,4) NULL ,
	imp__cuota           NUMERIC(20,4) NULL ,
	imp__total           NUMERIC(20,4) NULL ,
	imp__afinanciar      NUMERIC(20,4) NULL ,
	imp__otros           NUMERIC(20,4) NULL ,
	id__estado           INTEGER NULL ,
	id__vendedor         VARCHAR(15) NOT NULL ,
	id__direcion__cliente bigInt NOT NULL ,
	id__cliente          VARCHAR(15) NOT NULL ,
	id__direccion__coop  bigInt NOT NULL ,
	id__coopropietario   VARCHAR(15) NOT NULL ,
	id__factorcredito    INTEGER NULL ,
	fecha__primer__vencimiento TIMESTAMP NULL ,
	id__producto         VARCHAR(20) NOT NULL ,
	id__unidad           INTEGER NOT NULL ,
	id__lista            INTEGER NOT NULL ,
	lista__precios       INTEGER NULL ,
	id__moneda           INTEGER NOT NULL ,
	id__tipocambio       INTEGER NOT NULL ,
	serie                CHAR(4) NULL ,
	numero               VARCHAR(7) NULL ,
	id__comprobante      INTEGER NOT NULL ,
	id__usuario_aprueba  CHAR(5) NULL ,
	observacion          TEXT NULL ,
	id__estado_aprobacion INTEGER NULL ,
	id__serie            bigint NULL ,
	id__garante          CHAR(15) NULL ,
 PRIMARY KEY (id__solicitud__credito,id__sucursal),
FOREIGN KEY (id__sucursal) REFERENCES COMMON.TBL_SUCURSAL (id_sucursal),
FOREIGN KEY (id__vendedor) REFERENCES PLANILLAS.TBL_PERSONA (id_persona),
FOREIGN KEY (id__direcion__cliente, id__cliente) REFERENCES VENTAS.TBL_DIRECCION (id_direccion, id_persona),
FOREIGN KEY (id__direccion__coop, id__coopropietario) REFERENCES VENTAS.TBL_DIRECCION (id_direccion, id_persona),
FOREIGN KEY (id__factorcredito) REFERENCES CREDITOS.TBL_PRODCREDITO (id_prodcreditos) ON DELETE SET NULL,
FOREIGN KEY (id__producto, id__unidad, id__lista) REFERENCES ALMACEN.TBL_PRECIO (id_producto, id_unidadventa, id_listaprecio),
FOREIGN KEY (id__moneda) REFERENCES COMMON.TBL_MONEDA (id_moneda),
FOREIGN KEY (id__tipocambio) REFERENCES COMMON.TBL_TIPOCAMBIO (id_tipocambio),
FOREIGN KEY (id__comprobante) REFERENCES COMMON.TBL_COMPROBANTE (id_comprobante),
FOREIGN KEY (id__serie) REFERENCES ALMACEN.TBL_SERIEPRODUCTO (id_serie) ON DELETE SET NULL,
FOREIGN KEY (id__garante) REFERENCES VENTAS.TBL_CONTACPERSONA (id_contacpersona) ON DELETE SET NULL
);



CREATE UNIQUE INDEX XPKVENTAS_TBL__SOLICITUD__CRED ON VENTAS.TBL__SOLICITUD__CREDITO
(id__solicitud__credito   ASC,id__sucursal   ASC);



CREATE  INDEX XIF1VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__sucursal   ASC);



CREATE  INDEX XIF10VENTAS_TBL__SOLICITUD__CR ON VENTAS.TBL__SOLICITUD__CREDITO
(id__serie   ASC);



CREATE  INDEX XIF11VENTAS_TBL__SOLICITUD__CR ON VENTAS.TBL__SOLICITUD__CREDITO
(id__garante   ASC);



CREATE  INDEX XIF2VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__vendedor   ASC);



CREATE  INDEX XIF3VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__direcion__cliente   ASC,id__cliente   ASC);



CREATE  INDEX XIF4VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__direccion__coop   ASC,id__coopropietario   ASC);



CREATE  INDEX XIF5VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__factorcredito   ASC);



CREATE  INDEX XIF6VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__producto   ASC,id__unidad   ASC,id__lista   ASC);



CREATE  INDEX XIF7VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__moneda   ASC);



CREATE  INDEX XIF8VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__tipocambio   ASC);



CREATE  INDEX XIF9VENTAS_TBL__SOLICITUD__CRE ON VENTAS.TBL__SOLICITUD__CREDITO
(id__comprobante   ASC);



CREATE TABLE CREDITOS.TBL__SCREDITO__CREDIT
(
	id__solicitud__credito BIGINT NOT NULL ,
	id__sucursal__solicitud INTEGER NOT NULL ,
	id__credito          INTEGER NOT NULL ,
	id__sucursal__credito INTEGER NOT NULL ,
	fecha__registro      TIMESTAMP NULL ,
	fecha__venta         TIMESTAMP NULL ,
	fecha__actualizacion TIMESTAMP NULL ,
	id__usuario__reg     CHAR(5) NULL ,
	id__usuario__act     CHAR(5) NULL ,
	observaciones        TEXT NULL ,
	id__estado           INTEGER NULL ,
	id__usuario__anula   CHAR(5) NULL ,
	fecha__anula         TIMESTAMP NULL ,
 PRIMARY KEY (id__credito,id__sucursal__credito,id__solicitud__credito,id__sucursal__solicitud),
FOREIGN KEY (id__solicitud__credito, id__sucursal__solicitud) REFERENCES VENTAS.TBL__SOLICITUD__CREDITO (id__solicitud__credito, id__sucursal),
FOREIGN KEY (id__credito, id__sucursal__credito) REFERENCES CREDITOS.TBL_CREDITO (id_credito, id_sucursal_credito)
);



CREATE UNIQUE INDEX XPKCREDITOS_TBL_ ON CREDITOS.TBL__SCREDITO__CREDIT
(id__credito   ASC,id__sucursal__credito   ASC,id__solicitud__credito   ASC,id__sucursal__solicitud   ASC);



CREATE  INDEX XIF1CREDITOS_TBL_ ON CREDITOS.TBL__SCREDITO__CREDIT
(id__solicitud__credito   ASC,id__sucursal__solicitud   ASC);



CREATE  INDEX XIF2CREDITOS_TBL_ ON CREDITOS.TBL__SCREDITO__CREDIT
(id__credito   ASC,id__sucursal__credito   ASC);


ALTER TABLE COMMON.TBL_SUCURSAL ADD COLUMN TELEFONO VARCHAR(50) DEFAULT '';
ALTER TABLE COMMON.TBL_SUCURSAL ADD COLUMN CELULAR VARCHAR(50) DEFAULT '';




CREATE TABLE creditos.tbl_NSCreditos
(
  id_nscredito bigint ,
  id_credito integer NOT NULL,
  id_sucursal integer,
  id_sucursal_credito integer NOT NULL,
  id_estado integer,
  id_movimiento bigint NOT NULL,
  id_usuario character(4),
  fec_registro timestamp without time zone DEFAULT now(),
  fec_actualizacion timestamp without time zone,
  id_ussactualiza character(4),
  id_ussanula character(4),
  fec_anual timestamp without time zone,
  CONSTRAINT tbl_nscredito_pkey PRIMARY KEY (id_credito, id_sucursal_credito, id_nscredito, id_movimiento),
  CONSTRAINT tbl_ventacredito_id_credito_fkey FOREIGN KEY (id_credito, id_sucursal_credito)
      REFERENCES creditos.tbl_credito (id_credito, id_sucursal_credito) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT tbl_nscredito_id_sucursal_fkey FOREIGN KEY (id_movimiento)
      REFERENCES almacen.tbl_cabmovalm (id_movimiento) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);


alter table 	almacen.tbl_cabmovalm  add column id_responsableSalida character varying(15) ;

DELETE from CONFIGURACION.TBL_DOCUMENTOCLIENTE

CREATE TABLE CONFIGURACION.TBL_DOCUMENTOCLIENTE(
	ID_DOCLI INTEGER PRIMARY KEY,
	ID_PERSONA VARCHAR(15) REFERENCES PLANILLAS.TBL_PERSONA(ID_PERSONA),
	id_comprobante INTEGER REFERENCES Common.tbl_comprobante(id_comprobante),
	id_estado integer,
	obs text,
	id_sucursal integer references common.tbl_sucursal(id_sucursal)
);

ALTER table almacen.tbl_detmovalm ADD COLUMN lista  integer default 1;

alter table compras.tbl_ordencotizacompra add column tipo_cambio numeric(20,4) default 0;
alter table compras.tbl_compra  add column tipo_cambio numeric(20,4) default 0;
alter table ventas.tbl_facturacion add column tipo_cambio numeric(20,4) default 0;
alter table almacen.tbl_cabmovalm add column fecha_sistema timestamp default now();

ALTER TABLE compras.tbl_ordencotizacompra  ADD COLUMN  total_dolares numeric(20,4) default 0;
ALTER TABLE compras.tbl_detordencotizacomp ADD COLUMN total_dolares numeric(20,4) default 0;

alter table almacen.tbl_detinventario add column fecha_registro timestamp default now();
alter table ventas.tbl_facturacion add column comprobante_manual boolean default false;

alter table compras.tbl_compra add column fecha_registro timestamp default now();

ALTER TABLE VENTAS.TBL_DETFACTURACION ADD COLUMN id_producto_old varchar(700);


ALTER TABLE compras.tbl_detcompra ADD COLUMN id_producto_old varchar(700);

select *from  VENTAS.TBL_DETFACTURACION where id_producto_old is not null
select *from compras.tbl_compra

CREATE TABLE configuracion.tbl_configsucursal(
	id_configsucursal bigint primary key,
	idflagconfig integer references configuracion.config_sistema(idflagconfig),
	id_sucursal integer references common.tbl_sucursal(id_sucursal)	,
	estado boolean,
	value numeric(20,4)
);





CREATE TABLE VENTAS.TBL_CATALOGO_DSCTO
(
	id_catalogo_dscto    BIGINT NOT NULL ,
	id_sucursal          INTEGER NOT NULL ,
	nombre		     TEXT,
	cantidad_desde       NUMERIC(20,4) NULL ,
	fecha_desde          TIMESTAMP NULL ,
	fecha_hasta          TIMESTAMP NULL ,
	descuento            NUMERIC(20,4) NULL ,
	id_moneda            INTEGER NULL ,
	id_tipodscto         INTEGER NULL ,
	id_estado            INTEGER NULL ,
	glosa                text NULL ,
 PRIMARY KEY (id_catalogo_dscto),
FOREIGN KEY (id_sucursal) REFERENCES COMMON.TBL_SUCURSAL (id_sucursal),
FOREIGN KEY (id_moneda) REFERENCES COMMON.TBL_MONEDA (id_moneda) ON DELETE SET NULL
);



CREATE UNIQUE INDEX XPKVENTAS_TBL_CATALO_DSCTO ON VENTAS.TBL_CATALOGO_DSCTO
(id_catalogo_dscto   ASC);



CREATE  INDEX XIF1VENTAS_TBL_CATALO_DSCTO ON VENTAS.TBL_CATALOGO_DSCTO
(id_sucursal   ASC);



CREATE  INDEX XIF2VENTAS_TBL_CATALO_DSCTO ON VENTAS.TBL_CATALOGO_DSCTO
(id_moneda   ASC);



CREATE TABLE VENTAS.TBL_CONDICION_GRUPO
(
	id_condicion         BIGINT NOT NULL ,
	id_catalogo_dscto    BIGINT NOT NULL ,
	id_estado            INTEGER NULL ,
	fecha_registro       TIMESTAMP NULL ,
	fecha_actualizacion  TIMESTAMP NULL ,
	equipo               VARCHAR(100) NULL ,
	ip                   VARCHAR(50) NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
	id_producto          VARCHAR(20) NULL ,
	id_unidad            INTEGER NULL ,
 PRIMARY KEY (id_condicion),
FOREIGN KEY (id_catalogo_dscto) REFERENCES VENTAS.TBL_CATALOGO_DSCTO (id_catalogo_dscto)
);



CREATE UNIQUE INDEX XPKVENTAS_TBL_CONDICION_GRUPO ON VENTAS.TBL_CONDICION_GRUPO
(id_condicion   ASC);



CREATE  INDEX XIF1VENTAS_TBL_CONDICION_GRUPO ON VENTAS.TBL_CONDICION_GRUPO
(id_catalogo_dscto   ASC);


ALTER TABLE ALMACEN.TBL_GRUPO ADD COLUMN FECHA_REGISTRO TIMESTAMP DEFAULT NOW();
ALTER TABLE ALMACEN.TBL_GRUPO ADD COLUMN FECHA_UPDATE TIMESTAMP DEFAULT NOW();




CREATE TABLE creditos.tbl_motivoorden
(
	id_motivo            INTEGER NOT NULL ,
	nombre               VARCHAR(200) NULL ,
	id_estado            INTEGER NULL ,
 PRIMARY KEY (id_motivo)
);



INSERT INTO  creditos.tbl_motivoorden(ID_MOTIVO,NOMBRE,ID_ESTADO)VALUES(1,'Gastos diversos para pagos de impuestos y otros',1);
INSERT INTO  creditos.tbl_motivoorden(ID_MOTIVO,NOMBRE,ID_ESTADO)VALUES(2,'Anticipos al proveedor',1);
INSERT INTO  creditos.tbl_motivoorden(ID_MOTIVO,NOMBRE,ID_ESTADO)VALUES(3,'Transf. A caja chica',1);
INSERT INTO  creditos.tbl_motivoorden(ID_MOTIVO,NOMBRE,ID_ESTADO)VALUES(4,'Entregas de rendir cuenta',1);


CREATE UNIQUE INDEX XPKcreditos_tbl_motivoorden ON creditos.tbl_motivoorden
(id_motivo   ASC);



CREATE TABLE CREDITOS.TBL_REFERENCIA
(
	id_tbreferencia      INTEGER NOT NULL ,
	referencia           VARCHAR(100) NULL ,
	schema               VARCHAR(20) NULL ,
	id_estado            INTEGER NULL ,
 PRIMARY KEY (id_tbreferencia)
);



CREATE UNIQUE INDEX XPKCREDITOS_TBL_REFERENCIA ON CREDITOS.TBL_REFERENCIA
(id_tbreferencia   ASC);



CREATE TABLE CREDITOS.TBL_ORDENPAGO
(
	id_ordenpago         BIGINT NOT NULL ,
	fec_vencimiento      TIMESTAMP NULL ,
	fecha_sistema        TIMESTAMP NULL ,
	serie                CHAR(4) NULL ,
	numero               CHAR(12) NULL ,
	id_motivo            INTEGER NOT NULL ,
	id_moneda            INTEGER NOT NULL ,
	id_sucursal          INTEGER NOT NULL ,
	id_tbreferencia      INTEGER NOT NULL ,
	id_comprobante       INTEGER NOT NULL ,
	imp_tipocambio       NUMERIC(20,4) NULL ,
	imp_total            NUMERIC(20,4) NULL ,
	numero_referencia    VARCHAR(20) NULL ,
	id_referenciafk      BIGINT NULL ,
	id_sucursalfk        INTEGER NULL ,
	glosa                TEXT NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
	fecha_act            TIMESTAMP NULL ,
	schema               TEXT NULL ,
	id_tipocambio        INTEGER NOT NULL ,
	id_estado            INTEGER NULL ,
 PRIMARY KEY (id_ordenpago,id_sucursal),
FOREIGN KEY (id_motivo) REFERENCES creditos.tbl_motivoorden (id_motivo),
FOREIGN KEY (id_moneda) REFERENCES COMMON.TBL_MONEDA (id_moneda),
FOREIGN KEY (id_sucursal) REFERENCES COMMON.TBL_SUCURSAL (id_sucursal),
FOREIGN KEY (id_tbreferencia) REFERENCES CREDITOS.TBL_REFERENCIA (id_tbreferencia),
FOREIGN KEY (id_comprobante) REFERENCES COMMON.TBL_COMPROBANTE (id_comprobante),
FOREIGN KEY (id_tipocambio) REFERENCES COMMON.TBL_TIPOCAMBIO (id_tipocambio)
);



CREATE UNIQUE INDEX XPKCREDITOS_TBL_ORDENPAGO ON CREDITOS.TBL_ORDENPAGO
(id_ordenpago   ASC,id_sucursal   ASC);



CREATE  INDEX XIF1CREDITOS_TBL_ORDENPAGO ON CREDITOS.TBL_ORDENPAGO
(id_motivo   ASC);



CREATE  INDEX XIF2CREDITOS_TBL_ORDENPAGO ON CREDITOS.TBL_ORDENPAGO
(id_moneda   ASC);



CREATE  INDEX XIF3CREDITOS_TBL_ORDENPAGO ON CREDITOS.TBL_ORDENPAGO
(id_sucursal   ASC);



CREATE  INDEX XIF4CREDITOS_TBL_ORDENPAGO ON CREDITOS.TBL_ORDENPAGO
(id_tbreferencia   ASC);



CREATE  INDEX XIF5CREDITOS_TBL_ORDENPAGO ON CREDITOS.TBL_ORDENPAGO
(id_comprobante   ASC);



CREATE  INDEX XIF6CREDITOS_TBL_ORDENPAGO ON CREDITOS.TBL_ORDENPAGO
(id_tipocambio   ASC);



CREATE TABLE CREDITOS.TBL_DETORDENPAGO
(
	id_detordenpago      BIGINT NOT NULL ,
	id_ordenpago         BIGINT NOT NULL ,
	id_sucursal          INTEGER NOT NULL ,
	id_concepto          VARCHAR(4) NOT NULL ,
	item                 INTEGER NULL ,
	importe              NUMERIC(20,4) NULL ,
	id_estado            INTEGER NULL ,
	descripcion_linea    VARCHAR(500) NULL ,
	cantidad             NUMERIC(20,4) NULL ,
 PRIMARY KEY (id_detordenpago,id_ordenpago,id_sucursal),
FOREIGN KEY (id_ordenpago, id_sucursal) REFERENCES CREDITOS.TBL_ORDENPAGO (id_ordenpago, id_sucursal),
FOREIGN KEY (id_concepto) REFERENCES COMMON.TBL_CONCEPTO (id_concepto)
);



CREATE UNIQUE INDEX XPKCREDITOS_TBL_DETORDENPAGO ON CREDITOS.TBL_DETORDENPAGO
(id_detordenpago   ASC,id_ordenpago   ASC,id_sucursal   ASC);



CREATE  INDEX XIF1CREDITOS_TBL_DETORDENPAGO ON CREDITOS.TBL_DETORDENPAGO
(id_ordenpago   ASC,id_sucursal   ASC);



CREATE  INDEX XIF2CREDITOS_TBL_DETORDENPAGO ON CREDITOS.TBL_DETORDENPAGO
(id_concepto   ASC);



CREATE TABLE SERVICIOS.TBL_TRABAJOSERVICIO
(
  id_trbajoservicio integer primary key,
  descripcion_larga text NOT NULL,
  descripcion_corta varchar(100),
  id_estado int NOT NULL  
);


CREATE TABLE SERVICIOS.TBL_INVSERVICIOPRODUCTO
(
  id_invservicioproducto integer primary key,
  descripcion_larga text NOT NULL,
  descripcion_corta varchar(100),
  id_estado int NOT NULL  
);


CREATE TABLE PLANILLAS.TBL_NROCUENTA
(
	id_nrocuenta         BIGINT NOT NULL ,
	nro_cuenta           VARCHAR(20) NULL ,
	id_estado            INTEGER NULL ,
	id_persona           VARCHAR(15) NOT NULL ,
	id_banco             INTEGER NOT NULL ,
	id_moneda            INTEGER NOT NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
	fecha_reg            TIMESTAMP NULL ,
	fecha_act            TIMESTAMP NULL ,
 PRIMARY KEY (id_nrocuenta),
FOREIGN KEY (id_persona) REFERENCES PLANILLAS.TBL_PERSONA (id_persona),
FOREIGN KEY (id_banco) REFERENCES CAJA.TBL_CAJABANCO (id_cajabanco),
FOREIGN KEY (id_moneda) REFERENCES COMMON.TBL_MONEDA (id_moneda)
);



CREATE UNIQUE INDEX XPKPLANILLAS_TBL_NROCUENTA ON PLANILLAS.TBL_NROCUENTA
(id_nrocuenta   ASC);



CREATE  INDEX XIF1PLANILLAS_TBL_NROCUENTA ON PLANILLAS.TBL_NROCUENTA
(id_persona   ASC);



CREATE  INDEX XIF2PLANILLAS_TBL_NROCUENTA ON PLANILLAS.TBL_NROCUENTA
(id_banco   ASC);



CREATE  INDEX XIF3PLANILLAS_TBL_NROCUENTA ON PLANILLAS.TBL_NROCUENTA
(id_moneda   ASC);


ALTER TABLE CREDITOS.TBL_CREDITO ADD COLUMN id_nrocuenta BIGINT REFERENCES PLANILLAS.TBL_NROCUENTA(id_nrocuenta)  ;


alter table creditos.tbl_detpagocuota add column fec_actualiza timestamp;
alter table creditos.tbl_detpagocuota add column fec_anula timestamp;


ALTER TABLE CAJA.TBL_MOVCAJA ADD COLUMN IMPORTE_MN NUMERIC(20,4) DEFAULT 0;
ALTER TABLE CAJA.TBL_MOVCAJA ADD COLUMN IMPORTE_TC NUMERIC(20,4) DEFAULT 0;

ALTER TABLE CAJA.tbl_detmovpago ADD COLUMN IMPORTE_MN NUMERIC(20,4) DEFAULT 0;
ALTER TABLE CAJA.tbl_detmovpago ADD COLUMN IMPORTE_TC NUMERIC(20,4) DEFAULT 0;

ALTER TABLE creditos.tbl_detpagocuota ADD COLUMN IMPORTE_MN NUMERIC(20,4) DEFAULT 0;
ALTER TABLE creditos.tbl_detpagocuota ADD COLUMN IMPORTE_TC NUMERIC(20,4) DEFAULT 0;

ALTER TABLE CREDITOS.TBL_CUOTA ADD COLUMN NRO_UNICO_PAGO VARCHAR(100) ;
ALTER TABLE CREDITOS.TBL_CUOTA ADD COLUMN FECHA_PROTESTO TIMESTAMP ;
ALTER TABLE CREDITOS.TBL_CUOTA ADD COLUMN dias_protesto integer ;


alter table  almacen.tbl_cabmovalm add column id_cotizaorden bigint references compras.tbl_ordencotizacompra(id_cotizaorden);
ALTER TABLE CAJA.TBL_MOVCAJA add column vaucher bytea;


ALTER TABLE ALMACEN.TBL_PRODUCTO ADD COLUMN venta_retaceo boolean default false;



select *from  ALMACEN.TBL_RETAZOPRODUCTO


CREATE TABLE ALMACEN.TBL_RETAZOPRODUCTO
(
	id_retazo            BIGINT NOT NULL ,
	id_producto          VARCHAR(20)   ,
	id_unidadventa       INTEGER NOT NULL ,
	id_almacen           INTEGER NOT NULL ,
	halto                NUMERIC(20,4) NULL ,
	ancho                NUMERIC(20,4) NULL ,
	salida               NUMERIC(20,4) NULL ,
	area                 NUMERIC(20,4) NULL ,
	stock                NUMERIC(20,4) NULL ,
	fecha_registro       TIMESTAMP NULL ,
	fecha_actualizacion  TIMESTAMP NULL ,
	id_usuario_reg       CHAR(5) NULL ,
	id_usuario_act       CHAR(5) NULL ,
	id_estado            INTEGER NULL ,	
	id_cotizapreventa bigint ,
 PRIMARY KEY (id_retazo)
);



CREATE UNIQUE INDEX XPKALMACEN_TBL_RETAZOPRODUCTO ON ALMACEN.TBL_RETAZOPRODUCTO
(id_retazo   ASC);



CREATE  INDEX XIF1ALMACEN_TBL_RETAZOPRODUCTO ON ALMACEN.TBL_RETAZOPRODUCTO
(id_producto   ASC,id_unidadventa   ASC,id_inventario   ASC,id_almacen   ASC);


ALTER TABLE contabilidad.tbl__detalle__asiento__contable ADD COLUMN id_mes integer; 
ALTER TABLE contabilidad.tbl__detalle__asiento__contable ADD COLUMN anio integer; 
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN fecha_registro timestamp;
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN fecha_contable timestamp;
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN id_usuario text;
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN host text;
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN codigo__cuo__dia bigint;
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN correlativo__dia bigint;
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN codigo_movcab bigint;
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN modificable boolean default false;
alter table contabilidad.tbl__detalle__asiento__contable ADD COLUMN tipo_cambio numeric(20,4) default 0;

alter table compras.tbl_compra add column serie_nc char(4);
alter table compras.tbl_compra add column fecha_nc timestamp;


--
alter table almacen.tbl_listaprecio add column id_sucursal integer references common.tbl_sucursal(id_sucursal);
alter table almacen.tbl_listaprecio add column predeterminado boolean default true;
alter table almacen.tbl_listaprecio add column nombre varchar(200) default '';
alter table almacen.tbl_listaprecio add column precision_precio numeric(20,4) default 2;
alter table almacen.tbl_listaprecio add column id_moneda integer default 1;
alter table almacen.tbl_listaprecio add column precio_incluye_impuesto boolean default true;
alter table almacen.tbl_listaprecio add column precio_lista boolean default false;
alter table almacen.tbl_listaprecio add column precio_limit_forzado boolean default false;
alter table almacen.tbl_listaprecio add column net_price boolean default false;



---tablas para veterinarias
create schema veterinaria;

create table veterinaria.tbl_especie(
	id_especie integer primary key,
	nombre varchar(100),
	id_estado integer,
	apuntes text
);

create table veterinaria.tbl_raza(
	id_raza integer primary key,
	nombre varchar(100),
	id_estado integer,
	id_especie integer references veterinaria.tbl_especie(id_especie),
	apuntes text
);

create table veterinaria.tbl_paciente(
	id_paciente bigint primary key,
	nombres varchar(100),
	apellidos varchar(100),
	identificacion varchar(100),
	id_raza integer references veterinaria.tbl_raza(id_raza),
	id_sexo integer,
	observaciones text,
	fec_nacimiento timestamp	,
	id_estado integer
);

CREATE TABLE veterinaria.tbl_pacienteDuenio(
	id_pacienteDuenio bigint primary key,
	id_paciente bigint references veterinaria.tbl_paciente(id_paciente),
	id_amo varchar(15) references planillas.tbl_persona(id_persona),
	fecha_reg timestamp,
	id_usuarioreg char(5),
	id_estado integer,
	observaciones text
);

CREATE TABLE veterinaria.tbl_alergia(
	id_alergia integer primary key,
	nombre varchar(100),
	notas text,
	id_estado integer
);

create  table  veterinaria.tbl_alergiapaciente(
	id_alergiapaciente bigint primary key,
	id_alergia integer references veterinaria.tbl_alergia(id_alergia),
	fecha_reg timestamp,
	id_doctor varchar(15) references planillas.tbl_persona(id_persona),
	id_paciente bigint references veterinaria.tbl_paciente(id_paciente),
	id_estado integer,
	apuntes text,
	id_usuarioreg char(5),
	id_usuarioact char(5),
	fecha_act timestamp
);


create  table  veterinaria.tbl_datoscontrol(
	id_datoscontrol bigint primary key,
	fecha timestamp,
	peso numeric(20,4),
	Temperatura  numeric(20,4) ,
	altura numeric(20,4),
	presion_diastolica numeric(20,4),
	presion_sistolica numeric(20,4),
	frec_respiratoria numeric(20,4),
	frec_cardiaca numeric(20,4),
	Schirmer numeric(20,4),
	Presion_intraocular numeric(20,4),
	id_paciente bigint references veterinaria.tbl_paciente(id_paciente),
	id_doctor varchar(16) references planillas.tbl_persona(id_persona),
	fecha_reg timestamp,
	fecha_act timestamp,
	id_usuarioreg char(5),
	id_usuarioact char(5),
	id_estado integer
);

create table veterinaria.tbl_tipoprocedimiento(
	id_tipoprocedimiento integer primary key,
	nombre text,
	dias_notificacion integer,
	apuntes text,
	id_estado integer
);


create table veterinaria.tbl_procedimiento(
	id_procedimiento bigint primary key,
	fecha timestamp,
	id_tipoprocedimiento integer references veterinaria.tbl_tipoprocedimiento(id_tipoprocedimiento),
	fecha_expiracion timestamp,
	apuntes text,
	remp_procedanteriores boolean,
	id_doctor varchar(15) references planillas.tbl_persona(id_persona),
	id_estado integer,
	fecha_reg timestamp,
	fecha_act timestamp,
	id_usuarioreg char(5),
	id_usuarioact char(5),
	id_paciente bigint references veterinaria.tbl_paciente(id_paciente)
);

create table veterinaria.tbl_status(
	id_status integer primary key,
	nombre varchar(50),
	id_estado integer
);

create  table veterinaria.tbl_tipodiagnostico(
	id_tipodiagnostico integer primary key,
	nombre varchar(50),
	codigo_estandarint varchar(100),
	apuntes text,
	id_estado integer
);

create table veterinaria.tbl_diagnostico(
	id_diagnostico bigint primary key,
	id_tipodiagnostico integer references veterinaria.tbl_tipodiagnostico(id_tipodiagnostico),
	id_estatus integer references veterinaria.tbl_status(id_status),
	apuntus text,
	id_estado integer,
	id_doctor varchar(16) references planillas.tbl_persona(id_persona),
	fecha timestamp,
	fecha_reg timestamp,
	fecha_act timestamp,
	id_usuarioreg char(5),
	id_usuarioact char(5)
	
);

create table veterinaria.tbl_PrescripcionMedica(
	id_Prescripcion  bigint primary key,
	fecha timestamp,	
	fecha_reg timestamp,
	fecha_act timestamp,
	id_usuarioreg char(5),
	id_usuarioact char(5),
	id_estado integer,
	id_doctor varchar(16) references planillas.tbl_persona(id_persona)
);

create table veterinaria.tbl_detPrescripcionMedica(
	id_detprescripcion integer primary key,
	item integer,
	cantidad  numeric(20,4),
	dosis_notas text,
	id_producto character varying(20) NOT NULL,
	id_unidadventa integer NOT NULL,
	id_Prescripcion bigint references veterinaria.tbl_PrescripcionMedica(id_Prescripcion),
	id_estado integer,
	fecha_reg timestamp,
	fecha_act timestamp,
	id_usuarioreg char(5),
	id_usuarioact char(5),
	apuntes text,
	CONSTRAINT r_presc52 FOREIGN KEY (id_producto, id_unidadventa)
      REFERENCES almacen.tbl_detproducto (id_producto, id_unidadventa) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

create table veterinaria.tbl_tipovacuna(
	id_tipovacuna integer primary key,
	nombre text,
	dias_expiracion integer,
	apuntes text,
	id_estado integer
);

create table veterinaria.tbl_vacuna(
	id_vacuna bigint primary key,
	fecha timestamp,
	id_tipovacuna integer references veterinaria.tbl_tipovacuna(id_tipovacuna)	,
	fecha_expiracion timestamp,
	apuntes text,
	remplaza_ant_expiran boolean,
	id_estado integer,
	id_usuarioreg char(5),
	id_usuarioact char(5),
	id_doctor varchar(15) references planillas.tbl_persona(id_persona),
	fecha_reg timestamp,
	fecha_act timestamp
);

create table almacen.tbl_tipounidadmedida(
	id_tipounidad integer primary key,
	nombre varchar(100),
	id_estado integer
);

insert into almacen.tbl_tipounidadmedida(id_tipounidad,nombre,id_estado)values(0,'',1);
insert into almacen.tbl_tipounidadmedida(id_tipounidad,nombre,id_estado)values(1,'Aréa',1);
insert into almacen.tbl_tipounidadmedida(id_tipounidad,nombre,id_estado)values(2,'Hora',1);
insert into almacen.tbl_tipounidadmedida(id_tipounidad,nombre,id_estado)values(3,'Longitud',1);
insert into almacen.tbl_tipounidadmedida(id_tipounidad,nombre,id_estado)values(4,'Peso',1);
insert into almacen.tbl_tipounidadmedida(id_tipounidad,nombre,id_estado)values(5,'Volumne',1);

alter table almacen.tbl_unidad add column id_tipounidad integer references almacen.tbl_tipounidadmedida(id_tipounidad);

alter table common.tbl_moneda add column codigo_iso varchar(7);


---retaurante
create schema restaurant;

create table restaurant.tbl_salon(
	id_salon integer primary key,
	nombre varchar(100),
	apuntes text,
	id_estado integer,
	id_sucursal int references common.tbl_sucursal(id_sucursal)
);

create table restaurant.tbl_mesa(
	id_mesa int primary key,
	Nro_mesa varchar(50),
	nro_sillas integer,
	id_salon int references restaurant.tbl_salon(id_salon),
	id_estado int,
	x int,
	y int,
	posicion integer
);

create table restaurant.tbl_mesacomanda(
	id_comandamesa bigint primary key,
	id_mesa int references restaurant.tbl_mesa(id_mesa),
	fecha_reg timestamp,
	fecha_act timestamp,
	id_estado integer,
	notas text,
	id_cotizapreventa bigint references ventas.tbl_cotizacionpreventa(id_cotizapreventa),
	id_mesero varchar(15) references planillas.tbl_persona(id_persona),
	nro_comensajes integer
);


ALTER TABLE common.tbl_tipoimpuesto ADD COLUMN ID VARCHAR(5);
ALTER TABLE common.tbl_tipoimpuesto ADD COLUMN NAME VARCHAR(5);
ALTER TABLE common.tbl_tipoimpuesto ADD COLUMN TypeCode VARCHAR(5);

CREATE  TABLE common.tbl_motivoNotaCredito(
	ID_MOTIVONOTACREDITO char(2) primary key,
	descripcion_larga varchar(200),
	descripcion_corta varchar(50),
	id_estado integer
);

insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('01','Anulación de la operación','Anulación de la operación',1);
insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('02','Anulación por error en el RUC','Anulación por error en el RUC',1);
insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('03','Corrección por error en la descripción','Corrección por error en la descripción',1);
insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('04','Descuento global','Descuento global',1);
insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('05','Descuento por ítem','Descuento por ítem',1);
insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('06','Devolución total','Devolución total',1);
insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('07','Devolución por ítem','Devolución por ítem',1);
insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('08','Bonificación','Bonificación',1);
insert into common.tbl_motivoNotaCredito(ID_MOTIVONOTACREDITO,descripcion_larga,descripcion_corta,id_estado)values('09','Disminución en el valor','Disminución en el valor',1);

select *from common.tbl_motivoNotaCredito;


ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN ID_MOTIVONOTACREDITO CHAR(2);

ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN ID_MOTIVONOTACREDITO CHAR(2) DEFAULT '07';

CREATE  TABLE common.tbl_motivoNotaDebito(
	ID_MOTIVONOTADEBITO char(2) primary key,
	descripcion_larga varchar(200),
	descripcion_corta varchar(50),
	id_estado integer
);

insert into common.tbl_motivoNotaDebito(ID_MOTIVONOTADEBITO,descripcion_larga,descripcion_corta,id_estado)values('01','Intereses por mora','Intereses por mora',1);
insert into common.tbl_motivoNotaDebito(ID_MOTIVONOTADEBITO,descripcion_larga,descripcion_corta,id_estado)values('02','Aumento en el valor','Aumento en el valor',1);
insert into common.tbl_motivoNotaDebito(ID_MOTIVONOTADEBITO,descripcion_larga,descripcion_corta,id_estado)values('03','Penalidades/ otros conceptos','Penalidades/ otros conceptos',1);

select *from common.tbl_motivoNotaDebito

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN ID_MOTIVONOTADEBITO CHAR(2);
ALTER TABLE VENTAS.TBL_FACTURACION add column nota_debito       boolean default false;

select *from ventas.tbl_facturacion

--TIPO DE DOCUMENTO DE INDETIDAD
CREATE TABLE PLANILLAS.TBL_TIPDOCIDENTIDAD(
	id_tipdocidentidad integer primary key,
	Descripcion_larga varchar(100),
	descripcion_corta varchar(50),
	id_estado integer,
	codigo_sunat char(2)
);

INSERT INTO PLANILLAS.TBL_TIPDOCIDENTIDAD(id_tipdocidentidad,Descripcion_larga,descripcion_corta,id_estado,codigo_sunat)values(1,'DOC.TRIB.NO.DOM.SIN.RUC','NO.DOM.SIN.RUC',1,'10');
INSERT INTO PLANILLAS.TBL_TIPDOCIDENTIDAD(id_tipdocidentidad,Descripcion_larga,descripcion_corta,id_estado,codigo_sunat)values(2,'DOC. NACIONAL DE IDENTIDAD','D.N.I',1,'1');
INSERT INTO PLANILLAS.TBL_TIPDOCIDENTIDAD(id_tipdocidentidad,Descripcion_larga,descripcion_corta,id_estado,codigo_sunat)values(3,'CARNET DE EXTRANJERIA','C.E',1,'4');
INSERT INTO PLANILLAS.TBL_TIPDOCIDENTIDAD(id_tipdocidentidad,Descripcion_larga,descripcion_corta,id_estado,codigo_sunat)values(4,'REG. UNICO DE CONTRIBUYENTES','R.U.C',1,'6');
INSERT INTO PLANILLAS.TBL_TIPDOCIDENTIDAD(id_tipdocidentidad,Descripcion_larga,descripcion_corta,id_estado,codigo_sunat)values(5,'PASAPORTE','PAS',1,'7');
INSERT INTO PLANILLAS.TBL_TIPDOCIDENTIDAD(id_tipdocidentidad,Descripcion_larga,descripcion_corta,id_estado,codigo_sunat)values(6,'CED. DIPLOMATICA DE IDENTIDAD','CDI',1,'A');

ALTER TABLE PLANILLAS.TBL_PERSONA ADD COLUMN id_tipdocidentidad INTEGER REFERENCES PLANILLAS.TBL_TIPDOCIDENTIDAD(id_tipdocidentidad);

alter table PLANILLAS.TBL_TURNOCOLABORADOR add column id_caja integer;

select *from planillas.tbl_persona


CREATE TABLE restaurant.TBL_COMANDAMESA(
	ID_MESACOMANDA BIGINT PRIMARY KEY,
	id_cotizapreventa BIGINT,
	id_mesa INTEGER,
	id_facturacion integer,
	id_sucursal int,
	fecha timestamp,
	ocupado boolean,
	id_estado integer,
	id_mesero varchar(15) 
)

ALTER TABLE restaurant.TBL_COMANDAMESA ADD COLUMN nombre_union text default '';

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN PORCONSUMO BOOLEAN DEFAULT FALSE;
ALTER TABLE VENTAS.TBL_FACTURACION  ADD COLUMN MOTIVO_ANULACION TEXT DEFAULT '';

ALTER TABLE ventas.tbl_items ADD COLUMN ID_RETAZO BIGINT;
ALTER TABLE ventas.tbl_items ADD COLUMN fecha timestamp default now();


CREATE TABLE VENTAS.TBL_PROGRAMACIONVISITA(
	Id_programacion bigint primary key,
	Fecha TimeStamp,
	id_diasemana int references ventas.tbl_diasemana(id_diasemana),
	atendido boolean default false,
	observaciones text ,
	Saldo numeric(20,4) default 0,
	abonado numeric(20,4) default 0,
	id_estado integer default 1,
	id_cliente character varying(15) NOT NULL,
	id_direccion bigint NOT NULL,
	id_vendedor varchar(15) references planillas.tbl_persona(id_persona),
	id_sucursal integer references common.tbl_sucursal(id_sucursal),
  CONSTRAINT tbl_facturacion_id_direccion_fkey FOREIGN KEY (id_direccion, id_cliente)
      REFERENCES ventas.tbl_direccion (id_direccion, id_persona) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE CONTABILIDAD.TBL_PROCESOREPORT(
	id_procesoreport bigint primary key,
	nom_proceso varchar(200),
	id_estado integer,
	id_procesoreportref bigint ,
	nivel integer,
	orden integer
);

ALTER TABLE PLANILLAS.TBL_PERSONA ADD COLUMN FECHA_REG TIMESTAMP DEFAULT NOW();

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN STATUS_SUNAT BOOLEAN DEFAULT FALSE;
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN CODE_SUNAT VARCHAR(10) ;
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN MESSAGE_SUNAT VARCHAR(250);
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN OBSERVATION_SUNAT VARCHAR(500);
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN DigestValue VARCHAR(500);
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN SignatureValue VARCHAR(500);
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN Ticket VARCHAR(50);

ALTER TABLE VENTAS.TBL_PERCEPCION ADD COLUMN STATUS_SUNAT BOOLEAN DEFAULT FALSE;
ALTER TABLE VENTAS.TBL_PERCEPCION ADD COLUMN CODE_SUNAT VARCHAR(10) ;
ALTER TABLE VENTAS.TBL_PERCEPCION ADD COLUMN MESSAGE_SUNAT VARCHAR(250);
ALTER TABLE VENTAS.TBL_PERCEPCION ADD COLUMN OBSERVATION_SUNAT VARCHAR(500);
ALTER TABLE VENTAS.TBL_PERCEPCION ADD COLUMN DigestValue VARCHAR(500);
ALTER TABLE VENTAS.TBL_PERCEPCION ADD COLUMN SignatureValue VARCHAR(500);

ALTER TABLE SEGURIDAD.ITEM ADD COLUMN MNU_FAVORITO BOOLEAN DEFAULT FALSE;
ALTER TABLE SEGURIDAD.ITEM ADD COLUMN ICO_FAVORITO VARCHAR(200) DEFAULT 'process';


ALTER TABLE VENTAS.tbl_guiaremisionventa ADD COLUMN STATUS_SUNAT BOOLEAN DEFAULT FALSE;
ALTER TABLE VENTAS.tbl_guiaremisionventa ADD COLUMN CODE_SUNAT VARCHAR(10) ;
ALTER TABLE VENTAS.tbl_guiaremisionventa ADD COLUMN MESSAGE_SUNAT VARCHAR(250);
ALTER TABLE VENTAS.tbl_guiaremisionventa ADD COLUMN OBSERVATION_SUNAT VARCHAR(500);
ALTER TABLE VENTAS.tbl_guiaremisionventa ADD COLUMN DigestValue VARCHAR(500);
ALTER TABLE VENTAS.tbl_guiaremisionventa ADD COLUMN SignatureValue VARCHAR(500);
ALTER TABLE VENTAS.tbl_guiaremisionventa ADD COLUMN Ticket VARCHAR(50);

 

ALTER TABLE COMPRAS.TBL_COMPRA ADD COLUMN APLICA_DSCTOTOTAL BOOLEAN DEFAULT FALSE;
ALTER TABLE COMMON.TBL_MONEDA ADD COLUMN PREDETERMINADO BOOLEAN DEFAULT FALSE;

ALTER TABLE PLANILLAS.TBL_PERSONA ADD COLUMN PORCENT_PERCEPCION NUMERIC(20,4) DEFAULT 0;

 ALTER TABLE common.tbl_configserie ADD COLUMN SERIE_ELECTRONICA BOOLEAN DEFAULT FALSE;
 ALTER TABLE COMMON.TBL_COMPROBANTE ADD COLUMN PREFIX CHAR(1) DEFAULT '';

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN IMP_BASEPERCEPCION NUMERIC(14,2) DEFAULT 0;

ALTER TABLE ALMACEN.TBL_PRECIO ADD COLUMN precio4 NUMERIC(14,6) DEFAULT 0;
ALTER TABLE ALMACEN.TBL_PRECIO ADD COLUMN precio5 NUMERIC(14,6) DEFAULT 0;

ALTER TABLE common.tbl_empresa ADD COLUMN afecto_percepcion boolean;
ALTER TABLE common.tbl_empresa ALTER COLUMN afecto_percepcion SET DEFAULT false;

SELECT *FROM ALMACEN.TBL_PRECIO
--LISTA DE PRECIOS


select * from ventas.v_guiaremisionventa


ALTER TABLE ventas.tbl_detfacturacion ADD COLUMN  ID_USUARIO CHAR(5) DEFAULT '1';

ALTER TABLE ventas.tbl_detfacturacion ADD COLUMN fecha timestamp default now();

CREATE TEMPORARY TABLE  ventas.tmp_kdx_val 
(
	_codarti text,
	_descrip text, 
	_grupo text,
	_linea text,
	_unidmed text,  
	_contenido numeric(20,6) default 0.00,
	_fecha timestamp, 
	_tipodoc text,
	_documento text,
	_cliprov text, 
	_ruc text,
	_cant1 numeric(20,6) default 0.00,
	_c_unid1 numeric(20,6) default 0.00,
	_total1 numeric(20,6) default 0.00,
	_cant2 numeric(20,6) default 0.00,
	_c_unid2 numeric(20,6) default 0.00,
	_total2 numeric(20,6) default 0.00,
	_cant3 numeric(20,6) default 0.00, 
	_c_unid3 numeric(20,6) default 0.00, 
	_total3 numeric(20,6) default 0.00, 
	_movi TEXT,
	_fila integer,
	_idunimed  char(3),
	_idalmacen integer,
	_tot_cant numeric(20,6),
	_tot_saldo numeric(20,6)
)

CREATE TABLE ventas.tbl_consumovales(
	id_consumovale bigint primary key,
	serie char(4),
	numero varchar(7),
	fecha_consumo timestamp,	
	id_comprobante integer references common.tbl_comprobante(id_comprobante),
	id_sucursal integer,
	id_vale integer ,
	vehiculo character varying(50),
	placa character varying(20),
	conductor character varying(50)	,
	id_direccion bigint NOT NULL,
	cantidad numeric(20,4),
	precio numeric(20,4),
	imp_total numeric(20,4),
	id_cliente character varying(15) NOT NULL,
	id_isla integer references tbl_isla(id_isla) ,
	id_producto character varying(20) NOT NULL,
	id_unidadventa integer NOT NULL,
	id_listaprecio integer NOT NULL,
	glosa varchar(250),
	id_almacen integer,
	FOREIGN KEY (id_producto, id_unidadventa, id_listaprecio)
      REFERENCES almacen.tbl_precio (id_producto, id_unidadventa, id_listaprecio)
);


ALTER TABLE ventas.tbl_consumovales ADD COLUMN ID_ESTADO INTEGER DEFAULT 1


select *from ventas.tbl_consumovales

ALTER TABLE ventas.tbl_consumovales ADD COLUMN id_caja INTEGER ;

ALTER TABLE grifo.tbl_leccontometro ADD COLUMN LecInicial NUMERIC(20,4) DEFAULT 0;
ALTER TABLE grifo.tbl_leccontometro ADD COLUMN LecFinal NUMERIC(20,4) DEFAULT 0;

ALTER TABLE ventas.tbl_consumovales ADD id_turno integer;


CREATE TABLE COMMON.TBL_BANCO(
	Id_Banco integer primary key,
	Id_Empresa integer references common.tbl_empresa(Id_empresa),
	Nombre_Ban varchar(50),	
	NombreCorto_Ban varchar(50),
	Id_Estado Integer,
	Id_UsuarioIns integer,
	Id_UsuarioAct integer,
	FechaIns timestamp default Now(),
	FechaAct timestamp,
	Equipo_Uss varchar(50)	
)
DROP VIEW caja.v_cuentas_bancarias;
ALTER TABLE CAJA.TBL_CUENTABANCARIA DROP COLUMN ID_CAJABANCO
ALTER TABLE CAJA.TBL_CUENTABANCARIA ADD COLUMN Id_Banco INTEGER REFERENCES COMMON.TBL_BANCO(Id_Banco);

UPDATE CAJA.TBL_CUENTABANCARIA SET ID_BANCO=1

ALTER TABLE ALMACEN.tbl_existencia ADD COLUMN ctrlstock boolean default false;
ALTER TABLE ALMACEN.tbl_existencia ADD COLUMN StockMin numeric(20,4) default 0;
ALTER TABLE ALMACEN.tbl_existencia ADD COLUMN StockMax numeric(20,4) default 0;

select *from almacen.tbl_existencia

ALTER TABLE ALMACEN.tbl_cabmovalm ADD COLUMN dniruc_cliente varchar(15);
ALTER TABLE ALMACEN.tbl_cabmovalm ADD COLUMN nomape_cliente varchar(250);
ALTER TABLE ALMACEN.tbl_cabmovalm ADD COLUMN direccion_cliente varchar(250);

ALTER TABLE COMMON.TBL_EMPRESA ADD COLUMN Nro_resolucion varchar(50) default '';
select *from ventas.tbl_facturacion


ALTER TABLE almacen.tbl_detproducto ADD COLUMN ctl_stock boolean DEFAULT false;

SELECT *FROM ALMACEN.tbl_cabmovalm 
 
delete from seguridad.tbl_usuariocaja

caja.v_pagoscuota
caja.v_cheques
caja.v_cuentas_bancarias

SELECT *FROM CAJA.TBL_CUENTABANCARIA
 

select *from caja.v_liquidacion_operacionesDiversas
select *from tbl_isla




CREATE TABLE CONTABILIDAD.TBL_SUBDIARIO
( 
	id         	integer  NOT NULL primary key ,
	uuid		varchar(36),
	auxiliar_id     integer  NOT NULL ,
	name 		varchar(100)  NULL ,
	shortname 	varchar(50)  NULL ,
	status_Id       integer  NULL ,
	datecreated     timestamp  default now() ,
	dateupdate      timestamp  NULL ,
	IpInsert        varchar(50)  NULL ,
	IpUpdate        varchar(50)  NULL ,
	userinsert      integer  NULL ,
	userupdate      integer  NULL ,
	enterprise_id	integer  NOT NULL ,	 
	 
	CONSTRAINT R_13 FOREIGN KEY (auxiliar_id) REFERENCES CONTABILIDAD.TBL_AUXILIAR(id_auxiliar)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_62 FOREIGN KEY (enterprise_id) REFERENCES COMMON.TBL_EMPRESA(id_empresa)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)


ALTER TABLE contabilidad.tbl_configuracioncuenta ADD COLUMN subdiario_id integer;

ALTER TABLE contabilidad.tbl_configuracioncuenta
  ADD CONSTRAINT tbl_configuracioncuenta_subdiario_id_fkey FOREIGN KEY (subdiario_id)
      REFERENCES contabilidad.tbl_subdiario (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;


ALTER TABLE almacen.tbl__kitproducto DROP CONSTRAINT tbl__kitproducto_id__concepto_fkey  ;
ALTER TABLE almacen.tbl_cabmovalm DROP CONSTRAINT tbl_cabmovalm_id_motivo_fkey;
ALTER TABLE caja.tbl_cuentabancaria DROP CONSTRAINT tbl_cuentabancaria_id_concepto_fkey;
ALTER TABLE compras.tbl_compra DROP CONSTRAINT tbl_compra_id__concepto_fkey ;
ALTER TABLE compras.tbl_detegreso DROP CONSTRAINT tbl_detcompras_id_concepto_fkey;
ALTER TABLE creditos.tbl_detordenpago DROP CONSTRAINT tbl_detordenpago_id_concepto_fkey;
ALTER TABLE molino.tbl_habilitacion DROP CONSTRAINT tbl_habilitacion_id_concepto_fkey;
ALTER TABLE ventas.tbl_conceptotipoventa DROP CONSTRAINT tbl_conceptotipoventa_id_concepto_fkey ;
ALTER TABLE ventas.tbl_guiaremisionventa DROP CONSTRAINT tbl_guiaremisionventa_id_motivo_fkey;
 ALTER TABLE common.tbl_concepto drop CONSTRAINT tbl_concepto_pkey ;

DELETE FROM common.tbl_concepto  WHERE NOT ISNUMERIC(ID_CONCEPTO)

ALTER TABLE common.tbl_concepto ADD COLUMN id bigint;
ALTER TABLE common.tbl_concepto ADD COLUMN enterprise_id integer;

update common.tbl_concepto set enterprise_id=1;

ALTER TABLE common.tbl_concepto
  ADD CONSTRAINT tbl_concepto_pkey PRIMARY KEY(id);
  

alter table ventas.tbl_guiaremisionventa add column  concepto_id BIGINT;
ALTER TABLE ventas.tbl_conceptotipoventa ADD concepto_id bigint;
ALTER TABLE ventas.tbl_conceptotipoventa ADD concepto_id bigint;
ALTER TABLE molino.tbl_habilitacion ADD concepto_id bigint;
ALTER TABLE creditos.tbl_detordenpago ADD concepto_id bigint;
ALTER TABLE contabilidad.tbl_configuracioncuenta ADD concepto_id bigint;
ALTER TABLE almacen.tbl_cabmovalm ADD concepto_id bigint;
ALTER TABLE compras.tbl_detegreso ADD concepto_id bigint;
ALTER TABLE compras.tbl_compra ADD concepto_id bigint;
ALTER TABLE caja.tbl_cuentabancaria ADD concepto_id bigint;
ALTER TABLE almacen.tbl__kitproducto ADD concepto_id bigint;

update common.tbl_concepto set id=id_concepto::bigint

select *from common.tbl_concepto

--ALTER TABLE common.tbl_concepto ALTER COLUMN id_concepto SET DATA TYPE BIGINT




ALTER TABLE ventas.tbl_guiaremisionventa
  ADD CONSTRAINT tbl_guiaremisionventa_id_motivo_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;


ALTER TABLE ventas.tbl_conceptotipoventa
  ADD CONSTRAINT tbl_conceptotipoventa_id_concepto_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE molino.tbl_habilitacion
  ADD CONSTRAINT tbl_habilitacion_id_concepto_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE creditos.tbl_detordenpago
  ADD CONSTRAINT tbl_detordenpago_id_concepto_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE almacen.tbl_cabmovalm
  ADD CONSTRAINT tbl_cabmovalm_id_motivo_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
      
ALTER TABLE compras.tbl_detegreso
  ADD CONSTRAINT tbl_detcompras_id_concepto_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE SET NULL;



ALTER TABLE compras.tbl_compra
  ADD CONSTRAINT tbl_compra_id__concepto_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE caja.tbl_cuentabancaria
  ADD CONSTRAINT tbl_cuentabancaria_id_concepto_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
      
ALTER TABLE almacen.tbl__kitproducto
  ADD CONSTRAINT tbl__kitproducto_id__concepto_fkey FOREIGN KEY (concepto_id)
      REFERENCES common.tbl_concepto (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
            


  

ALTER TABLE CONTABILIDAD.TBL_CONFIGIMPUESTO ADD COLUMN enterprise_id int;

CREATE TABLE CONTABILIDAD.TBL_CONFIGIMPUESTO
( 
	id                   bigint  NOT NULL primary key ,
	uuid		     varchar(36),
	subdiario_id         integer  NOT NULL ,
	PlanCuentaDebe_id    bigint  NOT NULL ,
	PlanCuentaHaber_id   bigint  NULL ,
	status_id            integer  NULL default 1 ,
	datecreated          timestamp  default now() ,
	dateupdate           timestamp  NULL ,
	ipinserted           varchar(50)  NULL ,
	ipupdate             varchar(50)  NULL ,
	userinserted         integer  NULL ,
	userupdated          integer  NULL ,
	TipoImpuesto_id      integer  NULL ,
	 FOREIGN KEY (subdiario_id) REFERENCES CONTABILIDAD.TBL_SUBDIARIO(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
 FOREIGN KEY (PlanCuentaDebe_id) REFERENCES CONTABILIDAD.TBL_PLANCUENTA(id_PlanCuenta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
 FOREIGN KEY (PlanCuentaHaber_id) REFERENCES CONTABILIDAD.TBL_PLANCUENTA(id_PlanCuenta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
 FOREIGN KEY (TipoImpuesto_id) REFERENCES COMMON.TBL_TIPOIMPUESTO(id_TipoImpuesto)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
) ;

select *from COMMON.TBL_TIPOIMPUESTO
select *from CONTABILIDAD.TBL_PLANCUENTA
select *from CONTABILIDAD.TBL_CONFIGIMPUESTO


CREATE   INDEX XIF1CONTABILIDAD_TBL_CONFIGIMPUESTO ON CONTABILIDAD.TBL_CONFIGIMPUESTO
( 
	subdiario_id          ASC
)
go



CREATE   INDEX XIF3CONTABILIDAD_TBL_CONFIGIMPUESTO ON CONTABILIDAD.TBL_CONFIGIMPUESTO
( 
	PlanCuentaDebe_id     ASC
)
go



CREATE   INDEX XIF4CONTABILIDAD_TBL_CONFIGIMPUESTO ON CONTABILIDAD.TBL_CONFIGIMPUESTO
( 
	PlanCuentaHaber_id    ASC
)
go



CREATE   INDEX XIF5CONTABILIDAD_TBL_CONFIGIMPUESTO ON CONTABILIDAD.TBL_CONFIGIMPUESTO
( 
	TipoImpuesto_id       ASC
)
go



alter table seguridad.tbl_usuario add column username varchar(50);
alter table seguridad.tbl_usuario add column password text;
alter table seguridad.tbl_usuario add column email varchar(50);
alter table seguridad.tbl_usuario add column name varchar(250);
alter table seguridad.tbl_usuario add column id bigint;

alter table compras.tbl_compra add column fec_vencimiento timestamp;
alter table compras.tbl_compra add column fec_pago timestamp;
alter table compras.tbl_compra add column afecto_detraccion boolean default false;
alter table compras.tbl_compra add column NroOperacion_detatracion varchar(30) default '';
alter table compras.tbl_compra add column imp_detraccion numeric(20,4) default 0;

ALTER TABLE ventas.tbl_cotizacionpreventa ADD COLUMN solicitud_credito_id bigint;
ALTER TABLE ventas.tbl_cotizacionpreventa ADD COLUMN sucursal_solicitud_credito_id bigint;


select *from almacen.V_PRODUCTOSALMACEN

ALTER TABLE common.tbl_configserie ADD COLUMN imp_directa boolean default false;
select *from VENTAS.TBL_FACTURACION 

ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN UUID VARCHAR(36) DEFAULT upper((uuid_in((md5(((random())::text || (now())::text)))::cstring))::text)
ALTER TABLE VENTAS.TBL_FACTURACION ADD COLUMN ID BIGINT
CREATE EXTENSION pgcrypto;

update seguridad.tbl_usuario set email='ylatoma@hotmail.com',password=crypt(camp1, gen_salt('bf', 8)) where id_usuario='1'

update seguridad.tbl_usuario set id=id_usuario::integer ,name='Jose Guevara', username=camp2,password=crypt(camp1, gen_salt('bf', 8)),email='softdonet@gmail.com'


ALTER TABLE ventas.tbl_cotizacionpreventa ADD COLUMN TELEFONO_CLI VARCHAR(36) DEFAULT '';

select *from ventas.tbl_cotizacionpreventa

select *from contabilidad.tbl_configuracioncuenta

SELECT *FROM ventas.tbl_tratopersona

INSERT INTO ventas.tbl_tipovivienda(ID_TIPVIVIENDA,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(1,'PROPIA','PROPIA',1);
INSERT INTO ventas.tbl_tipovivienda(ID_TIPVIVIENDA,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(2,'ALQUILADA','ALQUILADA',1);
INSERT INTO ventas.tbl_tipovivienda(ID_TIPVIVIENDA,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(3,'FAMILIAR','FAMILIAR',1);

INSERT INTO ventas.tbl_tratopersona(id_trato,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(1,'Señor','Sr.',1);
INSERT INTO ventas.tbl_tratopersona(ID_TIPVIVIENDA,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(2,'ALQUILADA','ALQUILADA',1);
INSERT INTO ventas.tbl_tratopersona(ID_TIPVIVIENDA,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(3,'FAMILIAR','FAMILIAR',1);


alter table common.tbl_configserie add column plantilla_generica boolean default false;

CREATE TABLE ALMACEN.ATTRIBUTES (
    id bigint  NOT NULL,
    code varchar(30)  NULL,
    uuid varchar(36)  NOT NULL DEFAULT upper((uuid_in((md5(((random())::text || (now())::text)))::cstring))::text),
    name varchar(100)  NOT NULL,
    shortName varchar(50)  NULL,
    status  boolean  NOT NULL DEFAULT true,
    deleted boolean  NOT NULL DEFAULT false,
    datecreated timestamp  NOT NULL DEFAULT NOW(),
    datedeleted timestamp  NULL,
    CONSTRAINT ATTRIBUTES_pk PRIMARY KEY (id)
);

-- Table: ATTRIBUTE_VALUES
CREATE TABLE ALMACEN.ATTRIBUTE_VALUES (
    id bigint  NOT NULL,
    uuid varchar(36)  NOT NULL DEFAULT upper((uuid_in((md5(((random())::text || (now())::text)))::cstring))::text),
    name varchar(100)  NOT NULL,
    shortname varchar(50)  NULL,
    custom boolean  NOT NULL,
    status  boolean  NOT NULL DEFAULT true,
    deleted boolean  NOT NULL DEFAULT false,
    datecreated timestamp  NOT NULL DEFAULT NOW(),
    datedeleted timestamp  NULL,
    code varchar(50)  NULL,
    attribute_id bigint  NOT NULL,
    CONSTRAINT ATTRIBUTE_VALUES_pk PRIMARY KEY (id)
);

-- Table: PRODUCT_ATTRIBUTES
CREATE TABLE ALMACEN.PRODUCT_ATTRIBUTES (
    id bigint  NOT NULL,
    uuid varchar(36)  NOT NULL DEFAULT upper((uuid_in((md5(((random())::text || (now())::text)))::cstring))::text),
    status boolean  NOT NULL DEFAULT true,
    deleted boolean  NOT NULL DEFAULT false,
    datecreated timestamp  NOT NULL DEFAULT NOW(),
    datedeleted timestamp  NULL,
    isvariation boolean  NOT NULL DEFAULT false,
    attribute_id bigint  NOT NULL,
    product_Id varchar(20)  NOT NULL,
    CONSTRAINT PRODUCT_ATTRIBUTES_pk PRIMARY KEY (id)
);
select *from almacen.PRODUCT_ATTRIBUTES

-- Table: PRODUCT_ATTRIBUTE_VALUES
CREATE TABLE ALMACEN.PRODUCT_ATTRIBUTE_VALUES (
    id bigint  NOT NULL,
    uuid varchar(36)  NOT NULL DEFAULT upper((uuid_in((md5(((random())::text || (now())::text)))::cstring))::text),
    custom boolean  NOT NULL,
    barcode varchar(60)  NOT NULL,
    printable boolean  NOT NULL,
    datecreate timestamp  NOT NULL DEFAULT NOW(),
    datedeleted timestamp  NULL,
    status boolean  NOT NULL DEFAULT true,
    deleted boolean  NOT NULL DEFAULT false,
    visible_web boolean  NOT NULL DEFAULT true,
    product_attribute_id bigint  NOT NULL,
    attribute_value_id bigint  NOT NULL,
    CONSTRAINT PRODUCT_ATTRIBUTE_VALUES_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: ATTRIBUTE_VALUES_ATTRIBUTES (table: ATTRIBUTE_VALUES)
ALTER TABLE ALMACEN.ATTRIBUTE_VALUES ADD CONSTRAINT ATTRIBUTE_VALUES_ATTRIBUTES
    FOREIGN KEY (attribute_id)
    REFERENCES ALMACEN.ATTRIBUTES (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: PRODUCT_ATTRIBUTES_ATTRIBUTES (table: PRODUCT_ATTRIBUTES)
ALTER TABLE ALMACEN.PRODUCT_ATTRIBUTES ADD CONSTRAINT PRODUCT_ATTRIBUTES_ATTRIBUTES
    FOREIGN KEY (attribute_id)
    REFERENCES ALMACEN.ATTRIBUTES (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: PRODUCT_ATTRIBUTE_VALUES_ATTRIBUTE_VALUES (table: PRODUCT_ATTRIBUTE_VALUES)
ALTER TABLE ALMACEN.PRODUCT_ATTRIBUTE_VALUES ADD CONSTRAINT PRODUCT_ATTRIBUTE_VALUES_ATTRIBUTE_VALUES
    FOREIGN KEY (attribute_value_id)
    REFERENCES ALMACEN.ATTRIBUTE_VALUES (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: PRODUCT_ATTRIBUTE_VALUES_PRODUCT_ATTRIBUTES (table: PRODUCT_ATTRIBUTE_VALUES)
ALTER TABLE ALMACEN.PRODUCT_ATTRIBUTE_VALUES ADD CONSTRAINT PRODUCT_ATTRIBUTE_VALUES_PRODUCT_ATTRIBUTES
    FOREIGN KEY (product_attribute_id)
    REFERENCES ALMACEN.PRODUCT_ATTRIBUTES (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

ALTER TABLE ALMACEN.PRODUCT_ATTRIBUTES ADD CONSTRAINT PRODUCT_ATTRIBUTES_PRODUCTS
   FOREIGN KEY (product_Id)
   REFERENCES ALMACEN.tbl_producto (id_producto)  
   NOT DEFERRABLE 
   INITIALLY IMMEDIATE
;

ALTER TABLE compras.tbl_compra ADD COLUMN NOTA__DEBITO BOOLEAN DEFAULT FALSE; 


select *from ventas.tbl_contacpersona 
alter table ventas.tbl_contacpersona  add column garante boolean default false;

select *from creditos.tbl_cuota
select *from caja.tbl_movcaja
                           
ALTER TABLE caja.tbl_movcaja  ADD COLUMN pronto_pago boolean default false;



CREATE  TABLE  ventas.tbl_solicitud_credito
(
  id bigint NOT NULL primary key,
  id_sucursal integer,
  uuid varchar(36),
  id_comprobante integer NOT NULL,
  serie varchar(4)  ,
  numero varchar(10),
  fecha_registro timestamp without time zone default now(),
  fecha_aceptacion timestamp without time zone,
  fecha_actualiza timestamp without time zone,
  tipo_credito character(2),
  precio_lista numeric(14,6) default 0,
  inicial numeric(14,6) default 0,
  nro_cuotas numeric(14,6) default 0,
  importe_cuotas numeric(14,6) default 0,
  importe_financiamiento numeric(14,6) default 0,
  monto_afinanciar numeric(14,6) default 0,
  id_vendedor character varying(10) NOT NULL,
  id_serie bigint,
  id_pedido bigint,
  id_facturacion  integer,
  id_estado integer,
  id_usuario character(4) NOT NULL,  
  id_cliente character varying(15) NOT NULL,
  id_dircliente bigint NOT NULL,
  id_evaluacioncliente bigint,   
  id_cliente_conyuge character varying(15),
  id_dircli_conyuge bigint,
  id_garante varchar(15), 
  id_credito integer,
  id_tranzaccion character(2),
  id_tipoventa integer,
  observaciones text DEFAULT ''::text,
  id_ussaprueba char(5) DEFAULT ''::text,
  id_producto varchar(20),
  id_unidadventa integer, 
  id_listaprecios integer,
  fec_primer_vencimiento timestamp without time zone,
  fec_vencimiento timestamp without time zone,
  otros_imp numeric(20,4) DEFAULT 0,
  id_moneda integer   
)

select id_serie,*from almacen.tbl_serieproducto

select *from planillas.tbl_persona


CREATE TABLE almacen.tbl_serieinventario
(
  id_serieinventario bigint GENERATED ALWAYS AS IDENTITY,
  fecha_inventario timestamp without time zone,
  fecha_reg timestamp without time zone,
  id_usuario_r character(5),
  id_usuario_a character(5),
  id_estado integer,
  id_sucursal integer NOT NULL,
  id_detinventario bigint NOT NULL,
  id_almacen integer,
  id_serie bigint NOT NULL,
  item integer,
  observacion text,
  fecha_act timestamp without time zone,
  CONSTRAINT tbl_serieinventario_pkey PRIMARY KEY (id_serieinventario),
  CONSTRAINT tbl_serieinventario_id_serie_fkey FOREIGN KEY (id_serie)
      REFERENCES almacen.tbl_serieproducto (id_serie) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);



CREATE TABLE common.tbl_motivotraslado
(
  id_motivo integer NOT NULL primary key,
  codigo_sunat varchar(10),
  descripcion_larga character varying(200),
  descripcion_corta character varying(200),
  id_estado integer
   
);

INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(1,'01','VENTA','VENTA',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(2,'02','COMPRA','COMPRA',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(3,'04','TRASLADO ENTRE ESTABLECIMIENTOS DE LA MISMA EMPRESA','TRASLADO ENTRE ESTABLECIMIENTOS DE LA MISMA EMPRESA',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(4,'08','IMPORTACIÓN','IMPORTACIÓN',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(5,'09','EXPORTACIÓN','EXPORTACIÓN',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(6,'13','OTROS MOTIVOS','OTROS MOTIVOS',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(7,'14','VENTA SUJETA A CONFIRMACIÓN DEL COMPRADOR ','VENTA SUJETA A CONFIRMACIÓN DEL COMPRADOR ',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(8,'17','TRASLADO DE BIENES PARA TRANSFORMACIÓN','TRASLADO DE BIENES PARA TRANSFORMACIÓN',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(9,'18','TRASLADO EMISOR ITINERANTE DE COMPROBANTE DE PAGO','TRASLADO EMISOR ITINERANTE DE COMPROBANTE DE PAGO',1);
INSERT INTO COMMON.tbl_motivotraslado(ID_MOTIVO,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(10,'19','TRASLADO ZONA PRIMARIA','TRASLADO ZONA PRIMARIA',1);

CREATE TABLE common.tbl_modalidadtraslado
(
  id_modalidad integer NOT NULL primary key,
  codigo_sunat varchar(10),
  descripcion_larga character varying(200),
  descripcion_corta character varying(200),
  id_estado integer
   
);

INSERT INTO COMMON.tbl_modalidadtraslado(id_modalidad,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(1,'01','TRANSPORTE PÚBLICO','TRANSPORTE PÚBLICO',1);
INSERT INTO COMMON.tbl_modalidadtraslado(id_modalidad,CODIGO_SUNAT,DESCRIPCION_LARGA,DESCRIPCION_CORTA,ID_ESTADO)VALUES(2,'02','TRANSPORTE PRIVADO','TRANSPORTE PRIVADO',1);

ALTER TABLE ventas.tbl_guiaremisionventa ADD COLUMN id_modalidad integer REFERENCES COMMON.tbl_modalidadtraslado(id_modalidad);

--ALTER TABLE VENTAS.tbl_percepcion ADD COLUMN ID_COMPROBANTE INTEGER REFERENCES COMMON.TBL_COMPROBANTE(ID_COMPROBANTE);

select *from almacen.tbl_serieguia


CREATE TABLE almacen.tbl_serieguia
(
  id_serieguia bigint NOT NULL primary key  GENERATED ALWAYS AS IDENTITY,
  fecha_venta timestamp without time zone,
  fecha_reg timestamp without time zone,
  id_usuario_r character(5),
  id_usuario_a character(5),
  id_estado integer,
  id_sucursal integer NOT NULL,
  id_guia bigint NOT NULL,
  id_almacen integer,
  id_almacendestino integer,
  id_serie bigint NOT NULL,
  item integer,
  observacion text,
  fecha_act timestamp without time zone,
  
  CONSTRAINT tbl_serieguia_id_serie_fkey FOREIGN KEY (id_serie)
      REFERENCES almacen.tbl_serieproducto (id_serie) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT tbl_serieguia_id_sucursal_fkey FOREIGN KEY (id_sucursal, id_guia)
      REFERENCES ventas.tbl_guiaremisionventa (id_sucursal, id_guia) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

ALTER TABLE almacen.tbl_serieguia ADD COLUMN id_almacendestino integer;


CREATE TABLE common.tbl_tipomoneda(
	id_tipomoneda integer,
	descripcion_larga varchar(200),
	descripcion_corta varchar(100),
	valor numeric(14,4),
	usar boolean,
        id_moneda integer,
        id_estado integer
)

INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(1,'1 CENTIMO','1 CENTIMO',0.01,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(2,'2 CENTIMOS','1 CENTIMOS',0.02,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(3,'3 CENTIMOS','1 CENTIMOS',0.03,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(4,'4 CENTIMOS','1 CENTIMOS',0.04,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(5,'5 CENTIMOS','1 CENTIMOS',0.05,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(6,'10 CENTIMOS','1 CENTIMOS',0.10,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(7,'20 CENTIMOS','1 CENTIMOS',0.20,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(8,'50 CENTIMOS','1 CENTIMOS',0.50,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(9,'1 SOL','1 SOL',1,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(10,'2 SOLES','2 SOLES',2,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(11,'5 SOLES','5 SOLES',5,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(12,'10 SOLES','10 SOLES',10,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(13,'20 SOLES','20 SOLES',20,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(14,'50 SOLES','50 SOLES',50,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(15,'100 SOLES','100 SOLES',100,TRUE,1,1);
INSERT INTO common.tbl_tipomoneda(id_tipomoneda,descripcion_larga,descripcion_corta,valor,usar,id_moneda,id_estado)VALUES(16,'200 SOLES','200 SOLES',200,TRUE,1,1);

select *from 

CREATE TABLE almacen.tbl_despacho (
	id_despacho bigint primary key  GENERATED ALWAYS AS IDENTITY,
	fecha_despacho timestamp,
	id_vendedor varchar(15),
	id_usuario char(5),
	id_sucursal integer,
	fecha_reg timestamp,
	id_estado integer
);


CREATE   TABLE almacen.tbl_detdespacho(
	id_detdespacho bigint primary key  GENERATED ALWAYS AS IDENTITY,
	id_despacho bigint,
	id_sucursal bigint,
	id_facturacion integer,
	id_sucursalfac integer,
	fecha_reg timestamp,
	fecha_act timestamp,
	id_usuario char(5)
	id_estado integer
);
alter table almacen.tbl_detdespacho add column id_estado integer default 1;
select *from planillas.tbl_persona

SELECT* FROM common.tbl_tipomoneda

CREATE OR REPLACE VIEW compras.v_compras 
AS 
 SELECT 
    lpad(c.nro_doc_compra,7,'0') as nro_doc_compra,
    c.fec_documento,
    c.id_dirproveedor,
    c.id_comprobante,
    c.id_tranzaccion,
    c.id_igv,
    c.anio,
    c.id_compra,
    c.fec_ingsistema,
    c.imp_venta,
    c.imp_dcsto,
    c.porcent_dcsto,
    c.imp_igv,
    c.porcent_reintegro,
    c.imp_reintegro,
    c.sujeto_percepcion,
    c.id_sucursalcompra,
    lpad(c.serie,4,'0') as serie,
    c.id_tipocambio,
    c.mercaderia_transito,
    c.actualizar_precios,
    c.paga_flete,
    c.doc_referencia,
    c.imp_bruto,
    c.imp_total,
    c.imp_exonerado,
    c.id_operacion,
    c.imp_percepcion,
    c.genera_letra,
    c.reintegro_tributario,
 c.fec_ingalmacen,
        /*CASE
            WHEN c.fec_ingalmacen IS NOT NULL THEN to_char(c.fec_ingalmacen, 'dd/mm/yyyy'::text)
            ELSE '01/01/1900'::text
        END AS fec_ingalmacen,*/
    c.id_mes,
    c.imp_flete,
    c.imp_factor,
    COALESCE(c.id_orden, 0) AS id_orden,
    COALESCE(c.id_sucursalorden, 0) AS id_sucursalorden,
    c.pesototal,
    c.imp_afecto,
    c.actualiza_stock,
    c.pesovolumen,
    p.id_persona AS id_proveedor,
    p.doc_persona AS doc_proveedor,
    p.nombre_razon AS nom_proveedor,
    m.id_moneda,
    m.simbolo,
    t.id_tipoventa AS id_tipocompra,
    t.descripcion_larga AS des_tipo_compra,
    e.id_estado,
    e.des_estado AS estado,
    c.destinarventaconigv ,
    (CT.DESCRIPCION_CORTA ||'/' ||  lpad(c.serie,4,'0') || '-' || lpad(c.nro_doc_compra,7,'0')) AS DOC_COMPRA,
    SUC.ID_EMPRESA,
    C.ID_RESPONSABLE,
    RES.NOMBRE_RAZON,
    c.referencia_ncr,
    COALESCE(REFMOV_ALMACEN,'') as REFMOV_ALMACEN,
    c.id__compra
   FROM compras.tbl_compra c
   JOIN planillas.tbl_persona p ON p.id_persona::text = c.id_proveedor::text
   JOIN common.tbl_moneda m ON m.id_moneda = c.id_moneda
   JOIN common.tbl_tipoventa t ON t.id_tipoventa = c.id_tipocompra
   JOIN common.tbl_estado e ON c.id_estado = e.id_estado
   INNER JOIN COMMON.TBL_COMPROBANTE CT ON (CT.ID_COMPROBANTE=C.ID_COMPROBANTE)
   INNER JOIN COMMON.TBL_SUCURSAL SUC ON (SUC.ID_SUCURSAL=C.ID_SUCURSALCOMPRA)
   INNER JOIN PLANILLAS.TBL_PERSONA RES ON (RES.ID_PERSONA=C.ID_RESPONSABLE)
   where c.nota__credito=false
   order by c.fec_ingalmacen

CREATE TABLE COMMON.TBL_PAIS(
	id_pais integer primary key,
	descripcion_larga varchar(100),
	codigosunat varchar(20),
	id_estado integer
);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(1,'PERU','PE',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(2,'UNITED STATES','US',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(3,'ECUADOR','EC',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(4,'COLOMBIA','CO',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(5,'BRAZIL','BR',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(6,'CHILE','CL',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(7,'VENEZUELA','VE',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(8,'URUGUAY','UY',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(9,'PARAGUAY','PY',1);
INSERT INTO COMMON.TBL_PAIS(id_pais,descripcion_larga,codigosunat,id_estado)values(10,'ARGENTINA','AR',1);


ALTER TABLE common.tbl_dpto ADD COLUMN id_pais integer;
update common.tbl_dpto set id_pais=1;


CREATE TABLE VENTAS.TBL_METAVENTA(
	id bigint primary key GENERATED ALWAYS AS IDENTITY,	
	id_mes integer,
	id_anio integer,
	familia boolean,
	proveedor boolean,
	item boolean,
	fecha_reg timestamp default now(),
	fecha_act timestamp,
	id_usuario integer,
	id_usuarioact integer,
	id_estado integer
);

CREATE TABLE VENTAS.TBL_METAFAMILIA(
	id integer primary key GENERATED ALWAYS AS IDENTITY,
	id_familia char(5),
	id_metaventa bigint,
	meta_porcent numeric(20,4),
	fecha_reg timestamp default now(),
	fecha_act timestamp,
	id_usuario integer,
	id_usuarioact integer,	
	id_estado integer
);
 
CREATE TABLE VENTAS.TBL_METAVENDEDOR(
	id integer primary key GENERATED ALWAYS AS IDENTITY,
	id_vendedor varchar(15),
	id_metaventa bigint,
	imp_meta numeric(20,4),
	fecha_reg timestamp default now(),
	fecha_act timestamp,
	id_usuario integer,
	id_usuarioact integer,	
	id_estado integer
);


CREATE  TABLE VENTAS.TBL_METAVENDEDORFAMILIA(
	id bigint primary key GENERATED ALWAYS AS IDENTITY,
	metavendedor_id bigint,
	familia_id char(5),
	imp_meta numeric(20,4),
	fecha_reg timestamp default now(),
	fecha_act timestamp,
	id_usuario integer,
	id_usuarioact integer,	
	id_estado integer
);

CREATE TABLE COMMON.TBL_AFECTACIONIGV(
	id integer primary key,
	name text,
	codigo_sunat text,
	id_estado integer

);
ALTER TABLE ALMACEN.TBL_PRODUCTO ADD COLUMN afectacionigv_id integer;


INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(1,'Gravado - Operación Onerosa','10',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(2,'Gravado – Retiro por premio','11',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(3,'Gravado – Retiro por donación','12',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(4,'Gravado – Retiro ','13',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(5,'Gravado – Retiro por publicidad','14',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(6,'Gravado – Bonificaciones','15',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(7,'Gravado – Retiro por entrega a trabajadores','16',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(8,'Gravado – IVAP','17',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(9,'Exonerado - Operación Onerosa','20',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(10,'Exonerado – Transferencia Gratuita','21',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(11,'Inafecto - Operación Onerosa ','30',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(12,'Inafecto – Retiro por Bonificación','31',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(13,'Inafecto – Retiro','32',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(14,'Inafecto – Retiro por Muestras Médicas','33',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(15,'Inafecto - Retiro por Convenio Colectivo','34',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(16,'Inafecto – Retiro por premio','35',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(17,'Inafecto - Retiro por publicidad','36',1);
INSERT INTO COMMON.TBL_AFECTACIONIGV(ID,name,codigo_sunat,id_estado)values(18,'Exportación','40',1);


--update ventas.tbl_facturacion set fecha_venta='18/09/2019' where fecha_venta::date in ('13/09/2019','14/09/2019','15/09/2019','16/09/2019','17/09/2019') and id_comprobante=3;
--update ventas.tbl_facturacion set fecha_venta=fecha_registros where fecha_venta::date in ('13/09/2019','14/09/2019','15/09/2019','16/09/2019','17/09/2019') and id_comprobante=3;


CREATE   TABLE ventas.tbl_solicitudcomprobante(
	id bigint primary key   GENERATED ALWAYS AS IDENTITY,
	fecha_solicitud timestamp default now(),
	fecha_aprobacion timestamp,
	fecha_denegacion timestamp,
	usuario_solicita integer,
	usuario_aprueba integer,
	id_facturacion integer,
	id_sucursal integer,
	anulacion boolean default false,
	modificacion boolean default false,
	aprobado boolean default false,
	denegado boolean default false,
	justificacion text default '',
	id_estado integer default 1,
	atendido boolean default false,
	clave text
);

CREATE TABLE ventas.tbl_facturacionanticipo
(
  id bigint,
  fecha timestamp without time zone,
  id_facturacion integer,
  id_sucursal integer,
  id_anticipo integer,
  id_sucursalanticipo integer,
  id_estado integer,
  id_usuario_r integer,
  paidamount numeric(2,2) DEFAULT 0
)
  
alter table ventas.tbl_solicitudcomprobante add column clave text;

CREATE TABLE public.USER(
id bigint primary key GENERATED ALWAYS AS IDENTITY,
name text,
email text,
password text
)


select *from almacen.tbl_producto

select *from COMMON.TBL_AFECTACIONIGV
select *from almacen.tbl_familia

select *from common.tbl_pais
select *from common.tbl_dpto



select *from common.tbl_moneda
select *from COMMON.TBL_ESTADOSUNAT


select *from ventas.tbl_puntos

CREATE SCHEMA garantias;

create table garantias.tbl_programaciongarantia(
	id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	fecha_programada timestamp,
	id_producto varchar(20),
	id_facturacion bigint,
	id_cliente varchar(15),
	id_vendedor varchar(15),
	id_sucursal integer,
	glosa text default '',
	id_estado integer default 1,
	fecha_reg timestamp default now(),
	fecha_act timestamp,
	fecha_del timestamp
);
create table garantias.tbl_cita(
	id bigint primary key,
	
);

CREATE TABLE VENTAS.TBL_PREMIO(
	id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	fecha timestamp default now(),
	genera_cupon boolean default false,
	descuenta_stock boolean default false,
	descripcion_premio text default '',
	glosa text default '',
	id_producto varchar(20),
	id_unidadventa integer,
	cantidad numeric(20,2),
	precio numeric(20,2),
	puntos numeric(20,2),
	id_estado integer default 1,
	id_usuario integer
	
)

CREATE TABLE VENTAS.TBL_CANJEPUNTOS(
	id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	serie varchar(4),
	numero varchar(12),
	fecha timestamp default now(),
	id_comprobante integer,
	id_cliente varchar(15),
	puntos_canjeados numeric(20,2),
	id_estado integer default 1,
	id_usuario integer,
	premio_id bigint,
	id_sucursal integer default 1
);

CREATE TABLE temp_detproducto(
	id_producto character varying(20) NOT NULL,
	id_unidadventa integer NOT NULL,
	fecha timestamp without time zone,
	id_estado integer,
	val_unidad numeric(20,4) DEFAULT 1,
	val_minimo numeric(20,4) DEFAULT 1,
	unidad_inventario boolean DEFAULT false,
	id_tipoventa integer DEFAULT 1,
	undpred_compra boolean DEFAULT false,
	ctl_stock boolean DEFAULT false,
	codigo_barra text
);

CREATE TABLE temp_existencia(
	 stock_fisico numeric(20,6),
	  id_almacen integer NOT NULL,
	  id_producto character varying(20) NOT NULL,
	  id_unidadventa integer NOT NULL,
	  stock_reserva numeric(20,6),
	  stocktransito numeric(20,6),
	  id_lote character varying(15),
	  id_inventario integer NOT NULL,
	  fec_inventario timestamp without time zone,
	  valor_incial numeric(20,6),
	  stock_inicial numeric(20,6),
	  ubicacion character varying(100),
	  stock_reparto numeric(20,6),
	  id_estado integer,
	  observaciones text,
	  stock_ordencompra numeric(20,6) DEFAULT 0,
	  consto_inicial numeric(20,6) DEFAULT 0,
	  inv_inicial boolean DEFAULT false,
	  costo_promedio numeric(20,6) DEFAULT 0,
	  saldo_inianterior numeric(20,6) DEFAULT 0,
	  und_inventario boolean DEFAULT false,
	  ctrlstock boolean DEFAULT false,
	  stockmin numeric(20,6) DEFAULT 0,
	  stockmax numeric(20,6) DEFAULT 0
);


CREATE TABLE temp_producto
(
  id_producto character varying(20) NOT NULL,
  id_familia character(5) NOT NULL,
  id_marca character(4) NOT NULL,
  descripcion_larga character varying(200),
  descripcion_corta character varying(1000),
  cod_barra character varying(30) DEFAULT ''::character varying,
  servicio boolean DEFAULT false,
  id_estado integer,
  impuesto numeric(14,6) DEFAULT 0,
  reintegro_tributario boolean DEFAULT false,
  partida_arancelaria character varying(30) DEFAULT ''::character varying,
  dev_envases boolean DEFAULT false,
  perecible boolean DEFAULT false,
  sujet_percepcion boolean DEFAULT false,
  vende_pack boolean DEFAULT false,
  obs_compra text DEFAULT ''::text,
  obs_venta text DEFAULT ''::text,
  favorito boolean DEFAULT false,
  caracteristicas text DEFAULT ''::text,
  imagen text DEFAULT '/res/avatares/placeholder.png'::text,
  stock_inicial numeric(20,4) DEFAULT 0,
  costo_inicial numeric(20,4) DEFAULT 0,
  stockh numeric(20,4) DEFAULT 0,
  costounitario numeric(20,4) DEFAULT 0,
  codigo character(30) DEFAULT ''::bpchar,
  image bytea,
  id_color integer,
  id_impuesto integer DEFAULT 0,
  inventariado boolean DEFAULT false,
  activo_fijo boolean DEFAULT false,
  gestiona_lotes boolean DEFAULT false,
  gestiona_series boolean DEFAULT false,
  id_modelo bigint,
  venta_retaceo boolean DEFAULT false,
  afectacionigv_id integer,
  garantia_meses integer DEFAULT 0,
  frecuencia_reviciones integer DEFAULT 0,
  cantidad_fraccionada boolean ,
  afecto_icbper boolean default false;

);


alter table VENTAS.TBL_CANJEPUNTOS add column id_sucursal integer default 1;

create table common.tbl_TipoReporte(
	id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	nombre varchar(500),
	fecha_reg timestamp default now(),
	id_usuario char(5),
	id_estado integer
	
);

create table almacen.tbl_ProductosReporte(
	id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	nombre text,
	id_producto varchar(30),
	id_tiporeporte bigint ,
	fecha_reg timestamp default now(),
	id_usuario char(5),
	id_estado integer
);

select *from ventas.v_premios

CREATE TABLE VENTAS.TBL_DETCANJE(
	id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	
)


CREATE TABLE ventas.tbl_resumen
(
    resumen_id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    emisor_ruc character varying(11) COLLATE pg_catalog."default" NOT NULL,
    documentos_emision_fecha timestamp without time zone NOT NULL,
    resumen_name character varying(17) COLLATE pg_catalog."default" NOT NULL,
    resumen_fecha timestamp without time zone NOT NULL,
    resumen_firma character varying(3000) COLLATE pg_catalog."default",
    resumen_enviado_lote integer,
    resumen_enviado_fecha timestamp without time zone,
    resumen_enviado_archivo character varying(50) COLLATE pg_catalog."default",
    resumen_enviado_status integer,
    resumen_creado_fecha timestamp without time zone,
    resumen_ticket character varying(25) COLLATE pg_catalog."default",
    resumen_tipo_documento character varying(2) COLLATE pg_catalog."default",
    agrupado boolean DEFAULT true,
    id_usuario character(5) COLLATE pg_catalog."default",
    tipo_resumen text COLLATE pg_catalog."default" DEFAULT ''::text,
    message_sunat text COLLATE pg_catalog."default" DEFAULT ''::text,
    code_sunat text COLLATE pg_catalog."default" DEFAULT ''::text,
    CONSTRAINT tbl_resumen_pkey PRIMARY KEY (resumen_id)
);

CREATE TABLE ventas.tbl_detresumen
(
    resumen_detalle_id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    item integer,
    tipo_documento character varying(2) COLLATE pg_catalog."default" NOT NULL,
    serie_documento character varying(13) COLLATE pg_catalog."default" NOT NULL,
    numero_documento character varying(13) COLLATE pg_catalog."default" NOT NULL,
    adquirente_tipo_documento character varying(2) COLLATE pg_catalog."default" NOT NULL,
    adquirente_documento character varying(15) COLLATE pg_catalog."default" NOT NULL,
    venta_gravada numeric(18,2) NOT NULL,
    venta_exonerada numeric(18,2) NOT NULL,
    venta_inafecta numeric(18,2) NOT NULL,
    otros_cargos numeric(18,2) NOT NULL,
    isc numeric(18,2) NOT NULL,
    igv numeric(18,2) NOT NULL,
    otros_tributos numeric(18,2) NOT NULL,
    venta_cesion numeric(18,2) NOT NULL,
    venta_gratuita numeric(12,2),
    tipo_relacionado character varying(13) COLLATE pg_catalog."default",
    serie_relacionado character varying(13) COLLATE pg_catalog."default",
    numero_relacionado character varying(13) COLLATE pg_catalog."default",
    regimen_percepcion character varying(4) COLLATE pg_catalog."default",
    base_percepcion numeric(12,2),
    percepcion_tasa numeric(12,2),
    monto_percepcion numeric(12,2),
    total_cobrado numeric(12,2),
    estado_item integer NOT NULL,
    id_facturacion integer,
    id_sucursal integer,
    resumen_id bigint,
    CONSTRAINT tbl_detresumen_pkey PRIMARY KEY (resumen_detalle_id)
)

CREATE SCHEMA hotel;

select *from caja.tbl_movcaja



create table hotel.tbl_tipohabitacion(
	id integer primary key,
	codigo varchar(20),
	descripcion text,
	nro_personas integer,
	nro_habitaciones integer,
	id_estado integer
);

create table hotel.tbl_situacionhabitacion(
	id integer primary key,
	descripcion text,
	id_estado integer
);

create table hotel.tbl_habitacion(
	id bigint primary key,
	codigo varchar(10),
	descripcion text,
	id_tipohabitacion integer,
	id_situacionhabitacion integer,
	id_estado integer
);

CREATE TABLE hotel.tbl_checking(
	id bigint,
	id_sucursal integer,
	fecha_checking timestamp,
	id_huesped varchar(15),
	id_direccion bigint,
	direccion_text text,
	fecha_entrada timestamp,
	hora_entrada text,
	fecha_salida timestamp,
	hora_salida text,
	id_estado integer,
	id_respnsablepago varchar(15),

);


CREATE TABLE CAJA.TBL_OPERACIONESBANCOS(
	id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	id_operacion integer,--DEPOSITO, RETIRO, TRANSFERENCIA
);


select *from planillas.tbl_persona

alter table ventas.tbl_detfacturacion add column id_detfacturacion bigint GENERATED BY DEFAULT AS IDENTITY;
 

select *from almacen.tbl_existenciakardex

create table ventas.tbl_pesaje(
	pesaje_id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	sucursal_id integer,
	id_comprobante integer,
	serie varchar(5),
	numero varchar(10),
	id_cliente varchar(15),
	id_direccion bigint,
	placa varchar(30),
	marca varchar(30),
	color varchar(50),
	modelo varchar(50),
	peso_bruto numeric(20,4),
	peso_tara numeric(20,4),
	peso_neto numeric(20,4),
	observaciones text
)

select *from planillas.tbl_persona

CREATE TABLE almacen.tbl_existenciakardex
(
  stock_fisico numeric(20,6),
  id_almacen integer NOT NULL,
  id_producto character varying(20) NOT NULL,
  id_unidadventa integer NOT NULL,
  stock_reserva numeric(20,6),
  stocktransito numeric(20,6),
  id_lote character varying(15),
  id_inventario integer NOT NULL,
  fec_inventario timestamp without time zone,
  valor_incial numeric(20,6),
  stock_inicial numeric(20,6),
  ubicacion character varying(100),
  stock_reparto numeric(20,6),
  id_estado integer,
  observaciones text,
  stock_ordencompra numeric(20,6) DEFAULT 0,
  consto_inicial numeric(20,6) DEFAULT 0,
  inv_inicial boolean DEFAULT false,
  costo_promedio numeric(20,6) DEFAULT 0,
  saldo_inianterior numeric(20,6) DEFAULT 0,
  und_inventario boolean DEFAULT false,
  ctrlstock boolean DEFAULT false,
  stockmin numeric(20,6) DEFAULT 0,
  stockmax numeric(20,6) DEFAULT 0,
  CONSTRAINT xpktbl_inventario_kardex PRIMARY KEY (id_producto, id_unidadventa, id_almacen, id_inventario),
  CONSTRAINT r_53 FOREIGN KEY (id_producto, id_unidadventa)
      REFERENCES almacen.tbl_detproducto (id_producto, id_unidadventa) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT r_54 FOREIGN KEY (id_almacen)
      REFERENCES almacen.tbl_almacen (id_almacen) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE common.tbl_estadocomprobante(
	id integer primary key  GENERATED BY DEFAULT AS IDENTITY,
	nombre text,
	codigo text
);
--select *from common.tbl_estadocomprobante
INSERT INTO common.tbl_estadocomprobante(nombre,codigo)values('NO EXISTE','0');
INSERT INTO common.tbl_estadocomprobante(nombre,codigo)values('ACEPTADO','1');
INSERT INTO common.tbl_estadocomprobante(nombre,codigo)values('ANULADO','2');
INSERT INTO common.tbl_estadocomprobante(nombre,codigo)values('AUTORIZADO','3');
INSERT INTO common.tbl_estadocomprobante(nombre,codigo)values('NO AUTORIZADO','4');

CREATE TABLE common.tbl_estadocontribuyente(
	id integer primary key  GENERATED BY DEFAULT AS IDENTITY,
	nombre text,
	codigo text
);

INSERT INTO common.tbl_estadocontribuyente(nombre,codigo)values('ACTIVO','00');
INSERT INTO common.tbl_estadocontribuyente(nombre,codigo)values('BAJA PROVISIONAL','01');
INSERT INTO common.tbl_estadocontribuyente(nombre,codigo)values('BAJA PROV. POR OFICIO','02');
INSERT INTO common.tbl_estadocontribuyente(nombre,codigo)values('SUSPENSION TEMPORAL','03');
INSERT INTO common.tbl_estadocontribuyente(nombre,codigo)values('BAJA DEFINITIVA','10');
INSERT INTO common.tbl_estadocontribuyente(nombre,codigo)values('BAJA DE OFICIO','11');
INSERT INTO common.tbl_estadocontribuyente(nombre,codigo)values('INHABILITADO-VENT.UNICA','12');

 

CREATE TABLE common.tbl_condicioncontribuyente(
	id integer primary key  GENERATED BY DEFAULT AS IDENTITY,
	nombre text,
	codigo text
);
INSERT INTO common.tbl_condicioncontribuyente(nombre,codigo)values('HABIDO','00');
INSERT INTO common.tbl_condicioncontribuyente(nombre,codigo)values('PENDIENTE','09');
INSERT INTO common.tbl_condicioncontribuyente(nombre,codigo)values('POR VERIFICAR','11');
INSERT INTO common.tbl_condicioncontribuyente(nombre,codigo)values('NO HABIDO','12');
INSERT INTO common.tbl_condicioncontribuyente(nombre,codigo)values('NO HALLADO','20');




CREATE TABLE creditos.tbl_compromisopago
(
  id bigint NOT NULL,
  fecha timestamp without time zone,
  tema text,
  concepto text,
  fec_compromisopago timestamp without time zone,
  id_estado integer,
  id_usuario character(5),
  id_credito integer NOT NULL,
  id_cuota integer NOT NULL,
  id_sucursal integer NOT NULL,
  importe_compromiso numeric(20,4),
  nro_cuota text,
  CONSTRAINT tbl_compromiso_pago_pkey PRIMARY KEY (id)
);

create table caja.tbl_operacionbanco(
	id bigint primary key GENERATED BY DEFAULT AS IDENTITY,
	fecha timestamp,
	id_comprobante integer,
	serie text,
	numero text,
	id_persona text,
	tipo_operacion integer,
	id_cuentabancaria integer,
	concepto_id bigint,
	id_moneda integer,
	importe numeric(20,4),
	tipo_cambio numeric(20,4),
	nro_operacion text,
	glosa text,
	id_estado integer,
	fecha_add timestamp default now(),
	usuario_add integer,
	id_sucursal integer,
	operacionbancoref_id bigint,
	operacion integer --1:deposito 2:retiro
);



CREATE TABLE almacen.tbl_serienotasalida
(
  fecha_venta timestamp without time zone,
  fecha_reg timestamp without time zone,
  id_usuario_r character(5),
  id_usuario_a character(5),
  id_estado integer,
  id_sucursal integer NOT NULL,
  id_notasalida bigint NOT NULL,
  id_almacen integer,
  id_serie bigint NOT NULL,
  item integer,
  observacion text,
  fecha_act timestamp without time zone,
  id_serieventa bigint NOT NULL 
)