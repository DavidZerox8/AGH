<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

/**
 * Login Routes
 */
Route::get('/', 'AuthController@getLogin');
Route::controller('auth', 'AuthController');
Route::controller('password', 'RemindersController');

Route::group(['before' => 'auth'], function()
{

	/**
	 * Users Routes
	 */
	Route::resource('users', 'UsersController');

	/**
	 * Materials Routes
	 */
	Route::resource('materials', 'MaterialsController');

	/**
	 * Covering Routes
	 */
	Route::resource('coverings', 'CoveringsController');

	/**
     * Machines Routes
    */
    Route::resource('machines', 'MachinesController');

	/**
	 * Roadmap Routes
	 */
	Route::resource('roadmaps', 'RoadmapsController');

	/**
	 * Types of Work Routes
	 */
	Route::resource('types-of-works', 'TypesOfWorksController');

	/**
	 * Customers Routes
	 */
	Route::post('customers/search', 'CustomersController@search');
	Route::resource('customers', 'CustomersController');

	/**
	 * Tickets Routes
	 */
	Route::post('tickets/upload/{ticketId}/vobo', 'TicketsController@uploadVoBo');
	Route::get('tickets/{ticketId}/{file}/download', 'TicketsController@download');
	Route::post('tickets/confirm/{id}/vobo', 'TicketsController@confirmVoBo');
	Route::post('tickets/request/{id}/cuip', 'TicketsController@requestCUIP');
	Route::post('tickets/associate/{id}/cuip', 'TicketsController@associateCUIP');
	Route::post('tickets/search/price-scales', 'TicketsController@getPriceScales');
	Route::post('tickets/change/{id}/status', 'TicketsController@changeStatus');
	Route::post('tickets/create/{id}/version', 'TicketsController@createVersion');
	Route::post('tickets/create/{id}/duplicate', 'TicketsController@createDuplicate');
	Route::post('tickets/destroy/{id}', 'TicketsController@destroy');
	Route::post('tickets/{ticket_id}/changeMachine','TicketsController@setChangeMachine');
	Route::resource('tickets', 'TicketsController');

	/**
	 * Color Sequence
	 */
	Route::put('color-sequences/{id}', 'ColorSequencesController@update');
	Route::delete('color-sequences/{id}', 'ColorSequencesController@destroy');

	/**
	 * Arts Routes
	 */
	Route::get('tickets/arts/{ticketId}/index', 'ArtsController@index');
	Route::post('tickets/arts/{ticketId}/upload', 'ArtsController@upload');
	Route::get('tickets/arts/{ticketId}/{file}/download', 'ArtsController@download');
	Route::get('tickets/arts/{ticketId}/{file}/delete', 'ArtsController@delete');

	/**
	 * Orders Routes
	 */
	Route::post('orders/search', 'OrdersController@search');
	Route::post('orders/tickets/search', 'OrdersController@searchTicket');
	Route::post('orders/aprovate/{id}', 'OrdersController@aprovate');
	Route::post('orders/change-status/{id}', 'OrdersController@changeStatus');
	Route::get('orders/{nameFile}/download', 'OrdersController@download');
	Route::resource('orders', 'OrdersController');

	/**
	 * Manufacturing Orders Routes
	 */
	Route::put('manufacturing-orders/{id}/status-stage', 'ManufacturingOrdersController@changeStatusStage');
	Route::get('manufacturing-orders/search', 'ManufacturingOrdersController@search');
	Route::resource('manufacturing-orders', 'ManufacturingOrdersController');
	Route::delete('manufacturing-orderss/{of}', 'ManufacturingOrdersController@destroy');

	/**
	 * Manufacturing Steps Comments Routes
	 */
	Route::resource('comments-manufacturing-steps', 'CommentsManufacturingStepsController',
        ['only' => ['index', 'store', 'update', 'destroy'] ]);

	/**
	 * Production Program Routes
	 */
 	Route::get('production-program/finished-orders/{machines_id?}','ProductionProgramController@getFinishedOrders');
 	Route::get('production-program/{machines_id?}/{mes_id?}','ProductionProgramController@getPrintOrders');
 	Route::post('production-program/change/{manufaturing_order_id}/finishing-machine','ProductionProgramController@setChangeFinishingMachine');

    Route::post('production-program/calendar','ProductionProgramController@getCalendar');
  	Route::post('production-program/{status_id}/saveChanges','ProductionProgramController@saveChanges');
    Route::post('production-program/change/{id}/{ticket_id}/machine','ProductionProgramController@setChangeMachine');
    Route::post('production-program/change/{ticket_id}/machine-of','ProductionProgramController@setChangeMachineOF');
    Route::post('production-program/change/{manufaturing_order_id}/{partition_number}/{status_id}','ProductionProgramController@setChangeStatus');
    Route::post('production-program/change/{machine_id}/priority','ProductionProgramController@setchangePriority');
    Route::post('production-program/partition','ProductionProgramController@partitionOrder');
    Route::get('production-report','ProductionProgramController@getProductionReport');
    Route::get('production-report/print-production-order','ProductionProgramController@getPrintReport');
    Route::post('production-program/cancel-of','ProductionProgramController@cancel');
    Route::post('production-program/delete-of','ProductionProgramController@destroy');
    Route::post('production-program/{status_id}/resetPriority','ProductionProgramController@resetPriority');
	/**
	 * Price list
	 */
	Route::get('price-list', 'PriceListController@index');
	Route::post('price-list/search', 'PriceListController@search');

	/**
	 * CRM Routes
	 */
	Route::get('crm/detail', 'CrmController@getDetail');
	Route::get('crm/growth-plan/{customer_id}/create', 'CrmController@createGrowthPlan');
	Route::post('crm/growth-plan/', 'CrmController@storeGrowthPlan');
	Route::get('crm/growth-plan/{id}/edit', 'CrmController@editGrowthPlan');
	Route::put('crm/growth-plan/{id}', 'CrmController@updateGrowthPlan');
	Route::delete('crm/growth-plan/{id}', 'CrmController@destroyGrowthPlan');
	Route::post('crm/products-and-services/{customer_id}', 'CrmController@storeProductsServices');

	/**
	 * 
	 */
	Route::resource('print-program', 'PrintProgramController');

	/**
	 * Settings Routes
	 */
	Route::get('settings', 'SettingsController@edit');
	Route::put('settings/change-password', 'SettingsController@changePassword');

	/**
	 * Roles Routes
	 */
	Route::resource('roles', 'RolesController');

	/**
	 * Notification Profiles Routes
	 */
	Route::resource('notification-profiles', 'NotificationProfilesController');

	/**
	 * print pdf document
	 */

	Route::get('tickets/print/{ticket_id}', 'PrintController@index');

	/**
	 * print pdf document
	 */

	Route::get('tickets/order-print/{ticket_id}', 'PrintController@ReportPrint');

	/**
	 * Operators Routes
	 */
	Route::resource('operators', 'OperatorsController');


	/**
     * Print Load Controller
    */
   Route::resource('print-load', 'PrintLoadsController');
	Route::get('print-load/reports', 'PrintLoadsController@show');
	Route::put('print-load/{id}/update-record','PrintLoadsController@updateRecord');

    /**
    *finish load controller
    */
    Route::resource('finish-load', 'FinishLoadsController');
    Route::resource('finish-load-report', 'ReportsLoadsController@reportFinishtLoads');

    /**
    *finish load controller
    */
    Route::resource('liberation-load', 'LiberationLoadsController');

	/**
	*rout calendario
	*/
	Route::get('calendar','ProductionProgramCalendarController@getCalendar');

	/**
	*Rout's for reports production program
	*/
	Route::get('production-report/{status_id}/report','ProductionProgramReportController@getProductionReportMonth');
	Route::get('production-report-crew/{status_id}/report','ProductionProgramReportController@getProductionReportCrew');
	Route::get('production-report/{status_id}/report-coverings','ProductionProgramReportController@getProductionReportMonthCoverings');
	Route::get('production-report-crew/{status_id}/report-coverings','ProductionProgramReportController@getProductionReportCrewCoverings');
	



});