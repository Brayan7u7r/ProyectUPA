<?php

namespace Config;

use App\Controllers\API\Vacantes;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');

$routes->post('/auth/login','Auth::login');

//http://localhost:8080/api
$routes->group('api',['namespace' => 'App\Controllers\API'], function($routes){
    #Rutas - Usuario
    $routes->get('usuarios','Usuarios::index');
    $routes->post('usuarios/create','Usuarios::create');
    
    # Rutas - Aspirantes
    $routes->get('aspirantes','Aspirantes::index');
    $routes->post('aspirantes/create','Aspirantes::create');
    $routes->get('aspirantes/edit/(:num)','Aspirantes::edit/$1');
    $routes->put('aspirantes/update/(:num)','Aspirantes::update/$1');
    $routes->delete('aspirantes/delete/(:num)','Aspirante::delete/$1');

    #Rutas - Hoja De Vida
    $routes->get('hv','Hv::index');
    $routes->post('hv/create','Hv::create');
    $routes->get('hv/edit/(:num)', 'Hv::edit/$1');
    $routes->put('hv/update/(:num)', 'Hv::update/$1');
    $routes->delete('hv/delete/(:num)', 'Hv::delete/$1');
    $routes->get('hv/aspirantes/(:num)', 'Hv::getHvByAspirante/$1');

    #Rutas - Vacantes
    $routes->get('vacantes','Vacantes::index');
    $routes->post('vacantes/create', 'Vacantes::create');
    $routes->get('vacantes/edit(:num)','Vacantes::edit/$1');
    $routes->put('vacantes/update/(:num)','Vacantes::update/$1');
    $routes->delete('vacantes/delete/(:num)','Vacantes::update/$1');

    #Rutas - Postulaciones
    $routes->get('postulaciones','Postulaciones::index');
    $routes->post('postulaciones/create', 'Postulaciones::create');
    $routes->get('postulaciones/edit/(:num)','Postulaciones::edit/$1');
    $routes->put('postulaciones/update/(:num)','Postulaciones::update/$1');
    $routes->delete('postulaciones/delete/(:num)','Postulaciones::delete/$1');
    $routes->get('postulaciones/aspirantes/(:num)','Postulaciones::getPostulacionesByAspirante/$1');

    #Rutas - Municipios
    $routes->get('municipios','Municipios::index');

});


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
