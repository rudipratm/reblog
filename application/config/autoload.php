<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$autoload['packages'] = array();

$autoload['libraries'] = array('form_validation','session');

$autoload['drivers'] = array();

$autoload['helper'] = array('url','form', 'text');

$autoload['config'] = array();

$autoload['language'] = array();

$autoload['model'] = array('Posts_model','Category_model','Comment_model','User_model');
