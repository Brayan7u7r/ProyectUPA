-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2021 a las 18:52:48
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sara_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_apoyo`
--

CREATE TABLE `d_tbl_apoyo` (
  `Oid` int(11) NOT NULL,
  `Apo_descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_calificador`
--

CREATE TABLE `d_tbl_calificador` (
  `Oid` int(3) NOT NULL,
  `Cal_descripcion` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_caracter`
--

CREATE TABLE `d_tbl_caracter` (
  `Oid` int(3) NOT NULL,
  `Car_descripcion` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_causas`
--

CREATE TABLE `d_tbl_causas` (
  `Oid` int(3) NOT NULL,
  `Tpc_descripcion` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_departamento`
--

CREATE TABLE `d_tbl_departamento` (
  `Oid` int(2) NOT NULL,
  `Dep_descripcion` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_estado`
--

CREATE TABLE `d_tbl_estado` (
  `Oid` int(2) NOT NULL,
  `Est_descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_fuentelesion`
--

CREATE TABLE `d_tbl_fuentelesion` (
  `Oid` int(5) NOT NULL,
  `Fnt_descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_grupo`
--

CREATE TABLE `d_tbl_grupo` (
  `Oid` int(3) NOT NULL,
  `Gru_descripcion` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_intervencion`
--

CREATE TABLE `d_tbl_intervencion` (
  `Oid` int(3) NOT NULL,
  `Int_descripcion` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_jornadalaboral`
--

CREATE TABLE `d_tbl_jornadalaboral` (
  `Oid` int(2) NOT NULL,
  `jor_descripcion` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_labores`
--

CREATE TABLE `d_tbl_labores` (
  `Oid` int(3) NOT NULL,
  `Lab_descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_laborhabitual`
--

CREATE TABLE `d_tbl_laborhabitual` (
  `Oid` int(2) NOT NULL,
  `Lab_descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_lugarat`
--

CREATE TABLE `d_tbl_lugarat` (
  `Oid` int(3) NOT NULL,
  `Lat_descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_mecanismoat`
--

CREATE TABLE `d_tbl_mecanismoat` (
  `Oid` int(3) NOT NULL,
  `Mat_descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_modpuesto`
--

CREATE TABLE `d_tbl_modpuesto` (
  `Oid` int(3) NOT NULL,
  `Mod_descripcion` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_municipio`
--

CREATE TABLE `d_tbl_municipio` (
  `Oid` int(2) NOT NULL,
  `Mun_descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_origen`
--

CREATE TABLE `d_tbl_origen` (
  `Oid` int(3) NOT NULL,
  `ori_descripcion` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_parteafectada`
--

CREATE TABLE `d_tbl_parteafectada` (
  `Oid` int(5) NOT NULL,
  `Paf_descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_partecuerpo`
--

CREATE TABLE `d_tbl_partecuerpo` (
  `Oid` int(4) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_perfilapoyo`
--

CREATE TABLE `d_tbl_perfilapoyo` (
  `Oid` int(3) NOT NULL,
  `Pap_descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dApoyo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_razonsocial`
--

CREATE TABLE `d_tbl_razonsocial` (
  `Oid` int(2) NOT NULL,
  `Raz_descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_riesgo`
--

CREATE TABLE `d_tbl_riesgo` (
  `Oid` int(3) NOT NULL,
  `Rie_descripcion` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_segmento`
--

CREATE TABLE `d_tbl_segmento` (
  `Oid` int(3) NOT NULL,
  `Seg_descripcion` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_tipoat`
--

CREATE TABLE `d_tbl_tipoat` (
  `Oid` int(2) NOT NULL,
  `Tat_descripcion` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_tipoaus`
--

CREATE TABLE `d_tbl_tipoaus` (
  `Oid` int(3) NOT NULL,
  `Tpa_descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Tpa_sigla` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `Tpa_modi_user` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `Tpa_modi_admin` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_tipocausa`
--

CREATE TABLE `d_tbl_tipocausa` (
  `Oid` int(2) NOT NULL,
  `Tpc_descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_tipocierre`
--

CREATE TABLE `d_tbl_tipocierre` (
  `Oid` int(3) NOT NULL,
  `Tpc_descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_tipocontrol`
--

CREATE TABLE `d_tbl_tipocontrol` (
  `Oid` int(2) NOT NULL,
  `Tct_descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_tipolesion`
--

CREATE TABLE `d_tbl_tipolesion` (
  `Oid` int(4) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d_tbl_zonaat`
--

CREATE TABLE `d_tbl_zonaat` (
  `Oid` int(2) NOT NULL,
  `Zat_descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_accidente`
--

CREATE TABLE `tbl_accidente` (
  `Oid` int(11) NOT NULL,
  `Fk_tblPersona` int(11) NOT NULL,
  `Acc_fecha_at` date NOT NULL,
  `Fk_dJorlab` int(2) NOT NULL,
  `Acc_lab_hab` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dLaborhabitual` int(2) NOT NULL,
  `Acc_hora_at` time NOT NULL,
  `Fk_dTipoat` int(2) NOT NULL,
  `Acc_mortal` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dMunicipio` int(3) NOT NULL,
  `Fk_dZona` int(2) NOT NULL,
  `Acc_at_empresa` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dLugarat` int(3) NOT NULL,
  `Acc_otro_lugar_at` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Acc_descripcion_at` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `Acc_otro_mecanismo_at` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dTipolesion` int(4) NOT NULL,
  `Fk_tblUsuario` int(2) NOT NULL,
  `Fk_dParteafectada` int(5) NOT NULL,
  `Fk_dFuentelesion` int(5) NOT NULL,
  `Fk_dMecanismo_at` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_aspirante`
--

CREATE TABLE `tbl_aspirante` (
  `Oid` int(11) NOT NULL,
  `Asp_nombrecompleto` int(90) NOT NULL,
  `Asp_documento` int(20) NOT NULL,
  `Asp_lugarexpedicion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Asp_fechanacimiento` date NOT NULL,
  `Asp_direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Asp_correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Asp_telefono` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `Asp_estadocivil` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dDepartamento` int(2) NOT NULL,
  `Fk_dMunicipio` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ausentismo`
--

CREATE TABLE `tbl_ausentismo` (
  `Oid` int(11) NOT NULL,
  `Aus_fecha_registro` date NOT NULL,
  `Fk_dTipoaus` int(3) NOT NULL,
  `Fk_tblPersona` int(11) NOT NULL,
  `Fk_tblCentrotrabajo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `Aus_dias` int(3) NOT NULL,
  `Aus_prorroga` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_tblDiagx` int(6) NOT NULL,
  `Aus_fecha_inicio` date NOT NULL,
  `Aus_fecha_fin` date NOT NULL,
  `Aus_cod_inca` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Aus_observacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_calificaciones`
--

CREATE TABLE `tbl_calificaciones` (
  `Oid` int(11) NOT NULL,
  `Fk_tblPersona` int(11) NOT NULL,
  `Fk_dOrigen` int(3) NOT NULL,
  `Fk_dCalificador` int(3) NOT NULL,
  `Cal_pcl` double NOT NULL,
  `Cal_fecha_calificacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Cal_concepto_reha` int(11) NOT NULL,
  `Cal_pcl_enfirme` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Cal_fecha_estruc` date DEFAULT NULL,
  `Fk_tblCentroTrabajo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `Cal_fecha_at` date DEFAULT NULL,
  `Cal_observacion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_centrotrabajo`
--

CREATE TABLE `tbl_centrotrabajo` (
  `Ibm` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `ct_nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cierre_reintegros`
--

CREATE TABLE `tbl_cierre_reintegros` (
  `Oid` int(11) NOT NULL,
  `Fk_tblReintegro` int(11) NOT NULL,
  `Cre_fechacierre` date NOT NULL,
  `Fk_tblCentrotrabajo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dTipocierre` int(2) NOT NULL,
  `Cre_nombremedico` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `Cre_especialidad` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Cre_entidad` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Cre_analistasst` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `Cre_observacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_diagnostico`
--

CREATE TABLE `tbl_diagnostico` (
  `Oid` int(6) NOT NULL,
  `Dgx_codigo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `Dgx_descripcion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dGrupo` int(3) NOT NULL,
  `Fk_dRiesgo` int(3) NOT NULL,
  `Fk_dSegmento` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_enfermedadeslaborales`
--

CREATE TABLE `tbl_enfermedadeslaborales` (
  `Oid` int(11) NOT NULL,
  `Fk_tblPersona` int(11) NOT NULL,
  `Enf_fecha_siniestro` date NOT NULL,
  `Enf_fecha_calificacion` date NOT NULL,
  `Fk_tblDiagx` int(6) NOT NULL,
  `Fk_dEstado` int(2) NOT NULL,
  `Fk_dPartesCuerpo` int(4) NOT NULL,
  `Fk_tblCalificaciones` int(11) NOT NULL,
  `Fk_tblCentroTrabajo` varchar(6) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_investigaciones_emf`
--

CREATE TABLE `tbl_investigaciones_emf` (
  `Oid` int(11) NOT NULL,
  `Fk_tblEnfermedad` int(11) NOT NULL,
  `Iemf_fecha_inves` date DEFAULT NULL,
  `Iemf_investigador` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `Iemf_empresa_investigador` varchar(70) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_investigacion_x_at`
--

CREATE TABLE `tbl_investigacion_x_at` (
  `Oid` int(11) NOT NULL,
  `Fk_tblAccidente` int(11) NOT NULL,
  `Fk_dTipocausa` int(2) NOT NULL,
  `Iat_causa` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dTipocontrol` int(2) NOT NULL,
  `Iat_control` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Iat_fechaejecucion` date NOT NULL,
  `Iat_fechaverificacion` date NOT NULL,
  `Iat_responsable` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_invest_x_tipointer_emf`
--

CREATE TABLE `tbl_invest_x_tipointer_emf` (
  `Oid` int(11) NOT NULL,
  `Fk_tblEnfermedad` int(11) NOT NULL,
  `Fk_dTipoInter` int(3) NOT NULL,
  `col_observacion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_persona`
--

CREATE TABLE `tbl_persona` (
  `Oid` int(11) NOT NULL,
  `Per_tipo_doc` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Per_documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Per_nombres` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Per_primer_apellido` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Per_segundo_apellido` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Per_direccion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Per_telefono` int(35) DEFAULT NULL,
  `Per_sexo` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Per_vinculacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Per_fecha_expedicion` date NOT NULL,
  `Per_nivel_academico` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Per_fecha_ingreso` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Per_cargo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Per_eps` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Per_pension` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Per_arl` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Per_caja` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Per_sindicato` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fk_dEstado` int(2) NOT NULL,
  `Fk_tblCentroTrabajo` varchar(6) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_personal_apoyo`
--

CREATE TABLE `tbl_personal_apoyo` (
  `Oid` int(6) NOT NULL,
  `Fk_tblPersona` int(11) NOT NULL,
  `Fk_tblCentrotrabajo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dPerfilapoyo` int(3) NOT NULL,
  `Fk_dEstado` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reintegro`
--

CREATE TABLE `tbl_reintegro` (
  `Oid` int(11) NOT NULL,
  `Fk_tblPersona` int(11) NOT NULL,
  `Fk_tblCentrotrabajo` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_dCausa` int(3) NOT NULL,
  `Rei_fecha` date NOT NULL,
  `Fk_dModpuesto` int(3) NOT NULL,
  `Fk_dCaracter` int(3) NOT NULL,
  `Rei_duraccion` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `Rei_fecha_fin` date NOT NULL,
  `Rei_nombremedico` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Rei_especialidad` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Rei_entidad` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Fk_tblCalificacion` int(11) NOT NULL,
  `Fk_dEstado` int(2) NOT NULL,
  `Rei_productividad` varchar(2) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reintegro_x_diagx`
--

CREATE TABLE `tbl_reintegro_x_diagx` (
  `Oid` int(11) NOT NULL,
  `Fk_tblReintegro` int(11) NOT NULL,
  `Fk_tblDiagx` int(11) NOT NULL,
  `Rdx_tipo` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Rdx_observacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reintegro_x_labor`
--

CREATE TABLE `tbl_reintegro_x_labor` (
  `Oid` int(11) NOT NULL,
  `Fk_tblReintegro` int(11) NOT NULL,
  `Fk_dLabores` int(3) NOT NULL,
  `Rla_tipo` varchar(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_testigo`
--

CREATE TABLE `tbl_testigo` (
  `Oid` int(11) NOT NULL,
  `Fk_tblAccidente` int(11) NOT NULL,
  `Tes_tipo_doc` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `Tes_documento` int(15) NOT NULL,
  `Tes_nombre` int(50) NOT NULL,
  `Tes_cargo` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `d_tbl_apoyo`
--
ALTER TABLE `d_tbl_apoyo`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_calificador`
--
ALTER TABLE `d_tbl_calificador`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_caracter`
--
ALTER TABLE `d_tbl_caracter`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_causas`
--
ALTER TABLE `d_tbl_causas`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_departamento`
--
ALTER TABLE `d_tbl_departamento`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_estado`
--
ALTER TABLE `d_tbl_estado`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_fuentelesion`
--
ALTER TABLE `d_tbl_fuentelesion`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_grupo`
--
ALTER TABLE `d_tbl_grupo`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_intervencion`
--
ALTER TABLE `d_tbl_intervencion`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_jornadalaboral`
--
ALTER TABLE `d_tbl_jornadalaboral`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_labores`
--
ALTER TABLE `d_tbl_labores`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_laborhabitual`
--
ALTER TABLE `d_tbl_laborhabitual`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_lugarat`
--
ALTER TABLE `d_tbl_lugarat`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_mecanismoat`
--
ALTER TABLE `d_tbl_mecanismoat`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_modpuesto`
--
ALTER TABLE `d_tbl_modpuesto`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_municipio`
--
ALTER TABLE `d_tbl_municipio`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_origen`
--
ALTER TABLE `d_tbl_origen`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_parteafectada`
--
ALTER TABLE `d_tbl_parteafectada`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_partecuerpo`
--
ALTER TABLE `d_tbl_partecuerpo`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_perfilapoyo`
--
ALTER TABLE `d_tbl_perfilapoyo`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_dApoyo` (`Fk_dApoyo`);

--
-- Indices de la tabla `d_tbl_razonsocial`
--
ALTER TABLE `d_tbl_razonsocial`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_riesgo`
--
ALTER TABLE `d_tbl_riesgo`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_segmento`
--
ALTER TABLE `d_tbl_segmento`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_tipoat`
--
ALTER TABLE `d_tbl_tipoat`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_tipoaus`
--
ALTER TABLE `d_tbl_tipoaus`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_tipocausa`
--
ALTER TABLE `d_tbl_tipocausa`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_tipocierre`
--
ALTER TABLE `d_tbl_tipocierre`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_tipocontrol`
--
ALTER TABLE `d_tbl_tipocontrol`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_tipolesion`
--
ALTER TABLE `d_tbl_tipolesion`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `d_tbl_zonaat`
--
ALTER TABLE `d_tbl_zonaat`
  ADD PRIMARY KEY (`Oid`);

--
-- Indices de la tabla `tbl_accidente`
--
ALTER TABLE `tbl_accidente`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblPersona` (`Fk_tblPersona`),
  ADD KEY `Fk_dMecanismo_at` (`Fk_dMecanismo_at`),
  ADD KEY `Fk_dFuentelesion` (`Fk_dFuentelesion`),
  ADD KEY `Fk_dParteafectada` (`Fk_dParteafectada`),
  ADD KEY `Fk_tblUsuario` (`Fk_tblUsuario`),
  ADD KEY `Fk_dTipolesion` (`Fk_dTipolesion`),
  ADD KEY `Fk_dLugarat` (`Fk_dLugarat`),
  ADD KEY `Fk_dZona` (`Fk_dZona`),
  ADD KEY `Fk_dMunicipio` (`Fk_dMunicipio`),
  ADD KEY `Fk_dTipoat` (`Fk_dTipoat`),
  ADD KEY `Fk_dLaborhabitual` (`Fk_dLaborhabitual`),
  ADD KEY `Fk_dJorlab` (`Fk_dJorlab`);

--
-- Indices de la tabla `tbl_aspirante`
--
ALTER TABLE `tbl_aspirante`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_dMunicipio` (`Fk_dMunicipio`),
  ADD KEY `Fk_dDepartamento` (`Fk_dDepartamento`);

--
-- Indices de la tabla `tbl_ausentismo`
--
ALTER TABLE `tbl_ausentismo`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_dTipoaus` (`Fk_dTipoaus`),
  ADD KEY `Fk_tblPersona` (`Fk_tblPersona`),
  ADD KEY `Fk_tblCentrotrabajo` (`Fk_tblCentrotrabajo`),
  ADD KEY `Fk_tblDiagx` (`Fk_tblDiagx`);

--
-- Indices de la tabla `tbl_calificaciones`
--
ALTER TABLE `tbl_calificaciones`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_dOrigen` (`Fk_dOrigen`),
  ADD KEY `Fk_dCalificador` (`Fk_dCalificador`),
  ADD KEY `Fk_tblCentroTrabajo` (`Fk_tblCentroTrabajo`),
  ADD KEY `Fk_tblPersona` (`Fk_tblPersona`);

--
-- Indices de la tabla `tbl_centrotrabajo`
--
ALTER TABLE `tbl_centrotrabajo`
  ADD PRIMARY KEY (`Ibm`);

--
-- Indices de la tabla `tbl_cierre_reintegros`
--
ALTER TABLE `tbl_cierre_reintegros`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_dTipocierre` (`Fk_dTipocierre`),
  ADD KEY `Fk_tblCentrotrabajo` (`Fk_tblCentrotrabajo`),
  ADD KEY `Fk_tblReintegro` (`Fk_tblReintegro`);

--
-- Indices de la tabla `tbl_diagnostico`
--
ALTER TABLE `tbl_diagnostico`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_dGrupo` (`Fk_dGrupo`),
  ADD KEY `Fk_dRiesgo` (`Fk_dRiesgo`),
  ADD KEY `Fk_dSegmento` (`Fk_dSegmento`);

--
-- Indices de la tabla `tbl_enfermedadeslaborales`
--
ALTER TABLE `tbl_enfermedadeslaborales`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblPersona` (`Fk_tblPersona`),
  ADD KEY `Fk_tblDiagx` (`Fk_tblDiagx`),
  ADD KEY `Fk_dEstado` (`Fk_dEstado`),
  ADD KEY `Fk_dPartesCuerpo` (`Fk_dPartesCuerpo`),
  ADD KEY `Fk_tblCalificaciones` (`Fk_tblCalificaciones`),
  ADD KEY `Fk_tblFinca` (`Fk_tblCentroTrabajo`);

--
-- Indices de la tabla `tbl_investigaciones_emf`
--
ALTER TABLE `tbl_investigaciones_emf`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblEnfermedad` (`Fk_tblEnfermedad`);

--
-- Indices de la tabla `tbl_investigacion_x_at`
--
ALTER TABLE `tbl_investigacion_x_at`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblAccidente` (`Fk_tblAccidente`),
  ADD KEY `Fk_dTipocausa` (`Fk_dTipocausa`),
  ADD KEY `Fk_dTipocontrol` (`Fk_dTipocontrol`);

--
-- Indices de la tabla `tbl_invest_x_tipointer_emf`
--
ALTER TABLE `tbl_invest_x_tipointer_emf`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblEnfermedad` (`Fk_tblEnfermedad`),
  ADD KEY `Fk_dTipoInter` (`Fk_dTipoInter`);

--
-- Indices de la tabla `tbl_persona`
--
ALTER TABLE `tbl_persona`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_dEstado` (`Fk_dEstado`),
  ADD KEY `Fk_tblCentroTrabajo` (`Fk_tblCentroTrabajo`);

--
-- Indices de la tabla `tbl_personal_apoyo`
--
ALTER TABLE `tbl_personal_apoyo`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblPersona` (`Fk_tblPersona`),
  ADD KEY `Fk_tblCentrotrabajo` (`Fk_tblCentrotrabajo`),
  ADD KEY `Fk_dPerfilapoyo` (`Fk_dPerfilapoyo`),
  ADD KEY `Fk_dEstado` (`Fk_dEstado`);

--
-- Indices de la tabla `tbl_reintegro`
--
ALTER TABLE `tbl_reintegro`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblPersona` (`Fk_tblPersona`),
  ADD KEY `Fk_tblCentrotrabajo` (`Fk_tblCentrotrabajo`),
  ADD KEY `Fk_dCausa` (`Fk_dCausa`),
  ADD KEY `Fk_dModpuesto` (`Fk_dModpuesto`),
  ADD KEY `Fk_tblCalificacion` (`Fk_tblCalificacion`),
  ADD KEY `Fk_dEstado` (`Fk_dEstado`),
  ADD KEY `Fk_dCaracter` (`Fk_dCaracter`,`Rei_entidad`);

--
-- Indices de la tabla `tbl_reintegro_x_diagx`
--
ALTER TABLE `tbl_reintegro_x_diagx`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblReintegro` (`Fk_tblReintegro`),
  ADD KEY `Fk_tblDiagx` (`Fk_tblDiagx`);

--
-- Indices de la tabla `tbl_reintegro_x_labor`
--
ALTER TABLE `tbl_reintegro_x_labor`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblReintegro` (`Fk_tblReintegro`),
  ADD KEY `Fk_dLabores` (`Fk_dLabores`);

--
-- Indices de la tabla `tbl_testigo`
--
ALTER TABLE `tbl_testigo`
  ADD PRIMARY KEY (`Oid`),
  ADD KEY `Fk_tblAccidente` (`Fk_tblAccidente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `d_tbl_apoyo`
--
ALTER TABLE `d_tbl_apoyo`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_calificador`
--
ALTER TABLE `d_tbl_calificador`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_caracter`
--
ALTER TABLE `d_tbl_caracter`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_causas`
--
ALTER TABLE `d_tbl_causas`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_departamento`
--
ALTER TABLE `d_tbl_departamento`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_estado`
--
ALTER TABLE `d_tbl_estado`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_fuentelesion`
--
ALTER TABLE `d_tbl_fuentelesion`
  MODIFY `Oid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_grupo`
--
ALTER TABLE `d_tbl_grupo`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_intervencion`
--
ALTER TABLE `d_tbl_intervencion`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_jornadalaboral`
--
ALTER TABLE `d_tbl_jornadalaboral`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_labores`
--
ALTER TABLE `d_tbl_labores`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_laborhabitual`
--
ALTER TABLE `d_tbl_laborhabitual`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_lugarat`
--
ALTER TABLE `d_tbl_lugarat`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_mecanismoat`
--
ALTER TABLE `d_tbl_mecanismoat`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_modpuesto`
--
ALTER TABLE `d_tbl_modpuesto`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_municipio`
--
ALTER TABLE `d_tbl_municipio`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_origen`
--
ALTER TABLE `d_tbl_origen`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_parteafectada`
--
ALTER TABLE `d_tbl_parteafectada`
  MODIFY `Oid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_partecuerpo`
--
ALTER TABLE `d_tbl_partecuerpo`
  MODIFY `Oid` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_perfilapoyo`
--
ALTER TABLE `d_tbl_perfilapoyo`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_razonsocial`
--
ALTER TABLE `d_tbl_razonsocial`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_riesgo`
--
ALTER TABLE `d_tbl_riesgo`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_segmento`
--
ALTER TABLE `d_tbl_segmento`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_tipoat`
--
ALTER TABLE `d_tbl_tipoat`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_tipoaus`
--
ALTER TABLE `d_tbl_tipoaus`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_tipocausa`
--
ALTER TABLE `d_tbl_tipocausa`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_tipocierre`
--
ALTER TABLE `d_tbl_tipocierre`
  MODIFY `Oid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_tipocontrol`
--
ALTER TABLE `d_tbl_tipocontrol`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_tipolesion`
--
ALTER TABLE `d_tbl_tipolesion`
  MODIFY `Oid` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `d_tbl_zonaat`
--
ALTER TABLE `d_tbl_zonaat`
  MODIFY `Oid` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_accidente`
--
ALTER TABLE `tbl_accidente`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_aspirante`
--
ALTER TABLE `tbl_aspirante`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ausentismo`
--
ALTER TABLE `tbl_ausentismo`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_calificaciones`
--
ALTER TABLE `tbl_calificaciones`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cierre_reintegros`
--
ALTER TABLE `tbl_cierre_reintegros`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_diagnostico`
--
ALTER TABLE `tbl_diagnostico`
  MODIFY `Oid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_enfermedadeslaborales`
--
ALTER TABLE `tbl_enfermedadeslaborales`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_investigaciones_emf`
--
ALTER TABLE `tbl_investigaciones_emf`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_investigacion_x_at`
--
ALTER TABLE `tbl_investigacion_x_at`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_invest_x_tipointer_emf`
--
ALTER TABLE `tbl_invest_x_tipointer_emf`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_persona`
--
ALTER TABLE `tbl_persona`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_personal_apoyo`
--
ALTER TABLE `tbl_personal_apoyo`
  MODIFY `Oid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reintegro`
--
ALTER TABLE `tbl_reintegro`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reintegro_x_diagx`
--
ALTER TABLE `tbl_reintegro_x_diagx`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_reintegro_x_labor`
--
ALTER TABLE `tbl_reintegro_x_labor`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_testigo`
--
ALTER TABLE `tbl_testigo`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `d_tbl_perfilapoyo`
--
ALTER TABLE `d_tbl_perfilapoyo`
  ADD CONSTRAINT `d_tbl_perfilapoyo_ibfk_1` FOREIGN KEY (`Fk_dApoyo`) REFERENCES `d_tbl_apoyo` (`Oid`);

--
-- Filtros para la tabla `tbl_accidente`
--
ALTER TABLE `tbl_accidente`
  ADD CONSTRAINT `tbl_accidente_ibfk_1` FOREIGN KEY (`Fk_tblPersona`) REFERENCES `tbl_persona` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_10` FOREIGN KEY (`Fk_dFuentelesion`) REFERENCES `d_tbl_fuentelesion` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_11` FOREIGN KEY (`Fk_dMecanismo_at`) REFERENCES `d_tbl_mecanismoat` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_2` FOREIGN KEY (`Fk_dJorlab`) REFERENCES `d_tbl_jornadalaboral` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_3` FOREIGN KEY (`Fk_dLaborhabitual`) REFERENCES `d_tbl_laborhabitual` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_4` FOREIGN KEY (`Fk_dTipoat`) REFERENCES `d_tbl_tipoat` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_5` FOREIGN KEY (`Fk_dMunicipio`) REFERENCES `d_tbl_municipio` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_6` FOREIGN KEY (`Fk_dZona`) REFERENCES `d_tbl_zonaat` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_7` FOREIGN KEY (`Fk_dLugarat`) REFERENCES `d_tbl_lugarat` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_8` FOREIGN KEY (`Fk_dTipolesion`) REFERENCES `d_tbl_tipolesion` (`Oid`),
  ADD CONSTRAINT `tbl_accidente_ibfk_9` FOREIGN KEY (`Fk_dParteafectada`) REFERENCES `d_tbl_parteafectada` (`Oid`);

--
-- Filtros para la tabla `tbl_aspirante`
--
ALTER TABLE `tbl_aspirante`
  ADD CONSTRAINT `tbl_aspirante_ibfk_1` FOREIGN KEY (`Fk_dMunicipio`) REFERENCES `d_tbl_municipio` (`Oid`),
  ADD CONSTRAINT `tbl_aspirante_ibfk_2` FOREIGN KEY (`Fk_dDepartamento`) REFERENCES `d_tbl_departamento` (`Oid`);

--
-- Filtros para la tabla `tbl_ausentismo`
--
ALTER TABLE `tbl_ausentismo`
  ADD CONSTRAINT `tbl_ausentismo_ibfk_1` FOREIGN KEY (`Fk_tblDiagx`) REFERENCES `tbl_diagnostico` (`Oid`),
  ADD CONSTRAINT `tbl_ausentismo_ibfk_2` FOREIGN KEY (`Fk_tblCentrotrabajo`) REFERENCES `tbl_centrotrabajo` (`Ibm`),
  ADD CONSTRAINT `tbl_ausentismo_ibfk_3` FOREIGN KEY (`Fk_tblPersona`) REFERENCES `tbl_persona` (`Oid`),
  ADD CONSTRAINT `tbl_ausentismo_ibfk_4` FOREIGN KEY (`Fk_dTipoaus`) REFERENCES `d_tbl_tipoaus` (`Oid`);

--
-- Filtros para la tabla `tbl_calificaciones`
--
ALTER TABLE `tbl_calificaciones`
  ADD CONSTRAINT `tbl_calificaciones_ibfk_1` FOREIGN KEY (`Fk_tblCentroTrabajo`) REFERENCES `tbl_centrotrabajo` (`Ibm`),
  ADD CONSTRAINT `tbl_calificaciones_ibfk_2` FOREIGN KEY (`Fk_dCalificador`) REFERENCES `d_tbl_calificador` (`Oid`),
  ADD CONSTRAINT `tbl_calificaciones_ibfk_3` FOREIGN KEY (`Fk_tblPersona`) REFERENCES `tbl_persona` (`Oid`),
  ADD CONSTRAINT `tbl_calificaciones_ibfk_4` FOREIGN KEY (`Fk_dOrigen`) REFERENCES `d_tbl_origen` (`Oid`);

--
-- Filtros para la tabla `tbl_cierre_reintegros`
--
ALTER TABLE `tbl_cierre_reintegros`
  ADD CONSTRAINT `tbl_cierre_reintegros_ibfk_1` FOREIGN KEY (`Fk_tblReintegro`) REFERENCES `tbl_reintegro` (`Oid`),
  ADD CONSTRAINT `tbl_cierre_reintegros_ibfk_2` FOREIGN KEY (`Fk_tblCentrotrabajo`) REFERENCES `tbl_centrotrabajo` (`Ibm`),
  ADD CONSTRAINT `tbl_cierre_reintegros_ibfk_3` FOREIGN KEY (`Fk_dTipocierre`) REFERENCES `d_tbl_tipocierre` (`Oid`);

--
-- Filtros para la tabla `tbl_diagnostico`
--
ALTER TABLE `tbl_diagnostico`
  ADD CONSTRAINT `tbl_diagnostico_ibfk_1` FOREIGN KEY (`Fk_dGrupo`) REFERENCES `d_tbl_grupo` (`Oid`),
  ADD CONSTRAINT `tbl_diagnostico_ibfk_2` FOREIGN KEY (`Fk_dRiesgo`) REFERENCES `d_tbl_riesgo` (`Oid`),
  ADD CONSTRAINT `tbl_diagnostico_ibfk_3` FOREIGN KEY (`Fk_dSegmento`) REFERENCES `d_tbl_segmento` (`Oid`);

--
-- Filtros para la tabla `tbl_enfermedadeslaborales`
--
ALTER TABLE `tbl_enfermedadeslaborales`
  ADD CONSTRAINT `tbl_enfermedadeslaborales_ibfk_1` FOREIGN KEY (`Fk_tblDiagx`) REFERENCES `tbl_diagnostico` (`Oid`),
  ADD CONSTRAINT `tbl_enfermedadeslaborales_ibfk_2` FOREIGN KEY (`Fk_dEstado`) REFERENCES `d_tbl_estado` (`Oid`),
  ADD CONSTRAINT `tbl_enfermedadeslaborales_ibfk_3` FOREIGN KEY (`Fk_dPartesCuerpo`) REFERENCES `d_tbl_partecuerpo` (`Oid`),
  ADD CONSTRAINT `tbl_enfermedadeslaborales_ibfk_4` FOREIGN KEY (`Fk_tblCalificaciones`) REFERENCES `tbl_calificaciones` (`Oid`),
  ADD CONSTRAINT `tbl_enfermedadeslaborales_ibfk_5` FOREIGN KEY (`Fk_tblCentroTrabajo`) REFERENCES `tbl_centrotrabajo` (`Ibm`),
  ADD CONSTRAINT `tbl_enfermedadeslaborales_ibfk_6` FOREIGN KEY (`Fk_tblPersona`) REFERENCES `tbl_persona` (`Oid`);

--
-- Filtros para la tabla `tbl_investigaciones_emf`
--
ALTER TABLE `tbl_investigaciones_emf`
  ADD CONSTRAINT `tbl_investigaciones_emf_ibfk_1` FOREIGN KEY (`Fk_tblEnfermedad`) REFERENCES `tbl_enfermedadeslaborales` (`Oid`);

--
-- Filtros para la tabla `tbl_investigacion_x_at`
--
ALTER TABLE `tbl_investigacion_x_at`
  ADD CONSTRAINT `tbl_investigacion_x_at_ibfk_1` FOREIGN KEY (`Fk_tblAccidente`) REFERENCES `tbl_accidente` (`Oid`),
  ADD CONSTRAINT `tbl_investigacion_x_at_ibfk_2` FOREIGN KEY (`Fk_dTipocausa`) REFERENCES `d_tbl_tipocausa` (`Oid`),
  ADD CONSTRAINT `tbl_investigacion_x_at_ibfk_3` FOREIGN KEY (`Fk_dTipocontrol`) REFERENCES `d_tbl_tipocontrol` (`Oid`);

--
-- Filtros para la tabla `tbl_invest_x_tipointer_emf`
--
ALTER TABLE `tbl_invest_x_tipointer_emf`
  ADD CONSTRAINT `tbl_invest_x_tipointer_emf_ibfk_1` FOREIGN KEY (`Fk_tblEnfermedad`) REFERENCES `tbl_enfermedadeslaborales` (`Oid`),
  ADD CONSTRAINT `tbl_invest_x_tipointer_emf_ibfk_2` FOREIGN KEY (`Fk_dTipoInter`) REFERENCES `d_tbl_intervencion` (`Oid`);

--
-- Filtros para la tabla `tbl_persona`
--
ALTER TABLE `tbl_persona`
  ADD CONSTRAINT `tbl_persona_ibfk_1` FOREIGN KEY (`Fk_dEstado`) REFERENCES `d_tbl_estado` (`Oid`),
  ADD CONSTRAINT `tbl_persona_ibfk_2` FOREIGN KEY (`Fk_tblCentroTrabajo`) REFERENCES `tbl_centrotrabajo` (`Ibm`);

--
-- Filtros para la tabla `tbl_personal_apoyo`
--
ALTER TABLE `tbl_personal_apoyo`
  ADD CONSTRAINT `tbl_personal_apoyo_ibfk_1` FOREIGN KEY (`Fk_tblPersona`) REFERENCES `tbl_persona` (`Oid`),
  ADD CONSTRAINT `tbl_personal_apoyo_ibfk_2` FOREIGN KEY (`Fk_tblCentrotrabajo`) REFERENCES `tbl_centrotrabajo` (`Ibm`),
  ADD CONSTRAINT `tbl_personal_apoyo_ibfk_3` FOREIGN KEY (`Fk_dPerfilapoyo`) REFERENCES `d_tbl_perfilapoyo` (`Oid`),
  ADD CONSTRAINT `tbl_personal_apoyo_ibfk_4` FOREIGN KEY (`Fk_dEstado`) REFERENCES `d_tbl_estado` (`Oid`);

--
-- Filtros para la tabla `tbl_reintegro`
--
ALTER TABLE `tbl_reintegro`
  ADD CONSTRAINT `tbl_reintegro_ibfk_1` FOREIGN KEY (`Fk_dCausa`) REFERENCES `d_tbl_causas` (`Oid`),
  ADD CONSTRAINT `tbl_reintegro_ibfk_2` FOREIGN KEY (`Fk_tblPersona`) REFERENCES `tbl_persona` (`Oid`),
  ADD CONSTRAINT `tbl_reintegro_ibfk_3` FOREIGN KEY (`Fk_tblCentrotrabajo`) REFERENCES `tbl_centrotrabajo` (`Ibm`),
  ADD CONSTRAINT `tbl_reintegro_ibfk_4` FOREIGN KEY (`Fk_dModpuesto`) REFERENCES `d_tbl_modpuesto` (`Oid`),
  ADD CONSTRAINT `tbl_reintegro_ibfk_5` FOREIGN KEY (`Fk_dCaracter`) REFERENCES `d_tbl_caracter` (`Oid`),
  ADD CONSTRAINT `tbl_reintegro_ibfk_6` FOREIGN KEY (`Fk_dEstado`) REFERENCES `d_tbl_estado` (`Oid`),
  ADD CONSTRAINT `tbl_reintegro_ibfk_7` FOREIGN KEY (`Fk_tblCalificacion`) REFERENCES `tbl_calificaciones` (`Oid`);

--
-- Filtros para la tabla `tbl_reintegro_x_diagx`
--
ALTER TABLE `tbl_reintegro_x_diagx`
  ADD CONSTRAINT `tbl_reintegro_x_diagx_ibfk_1` FOREIGN KEY (`Fk_tblReintegro`) REFERENCES `tbl_reintegro` (`Oid`),
  ADD CONSTRAINT `tbl_reintegro_x_diagx_ibfk_2` FOREIGN KEY (`Fk_tblDiagx`) REFERENCES `tbl_diagnostico` (`Oid`);

--
-- Filtros para la tabla `tbl_reintegro_x_labor`
--
ALTER TABLE `tbl_reintegro_x_labor`
  ADD CONSTRAINT `tbl_reintegro_x_labor_ibfk_1` FOREIGN KEY (`Fk_dLabores`) REFERENCES `d_tbl_labores` (`Oid`),
  ADD CONSTRAINT `tbl_reintegro_x_labor_ibfk_2` FOREIGN KEY (`Fk_tblReintegro`) REFERENCES `tbl_reintegro` (`Oid`);

--
-- Filtros para la tabla `tbl_testigo`
--
ALTER TABLE `tbl_testigo`
  ADD CONSTRAINT `tbl_testigo_ibfk_1` FOREIGN KEY (`Fk_tblAccidente`) REFERENCES `tbl_accidente` (`Oid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;