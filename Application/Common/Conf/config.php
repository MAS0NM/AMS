<?php
return array(
	//'配置项'=>'配置值'
	//模版常量
	'TMPL_PARSE_STRING' => array(
						'__ADMIN__' => __ROOT__.'/Public/Admin',
                        '__HOME__'  => __ROOT__.'/Public/Home'
					),

    /* 数据库设置 */
    'DB_HOST'               =>  'localhost', // 服务器地址
    'DB_PWD'                =>  '',          // 密码
    'DB_PORT'               =>  '3306',        // 端口

	
    // 'DB_HOST'               =>  'k435e61831.zicp.vip', // 服务器地址
    // 'DB_PWD'                =>  'P@ss1234',          // 密码
    // 'DB_PORT'               =>  '19792',        // 端口



    'DB_TYPE'               =>  'mysql',     // 数据库类型
    'DB_NAME'               =>  'working',          // 数据库名   
    'DB_USER'               =>  'root',      // 用户名
    'DB_PREFIX'             =>  'w_',    // 数据库表前缀
);