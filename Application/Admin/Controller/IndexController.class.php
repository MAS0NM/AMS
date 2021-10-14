<?php
namespace Admin\Controller;
use Think\Controller;

class IndexController extends CommonController{

	public function index(){
		$this -> display();
	}

	public function home(){
		$this -> display();		
	}

	//空方法
	public function _empty(){
		$this -> display('Empty/error');
	}

	//数据库的备份和还原


	public function backup(){
		$get = I('get.');
		header ( "content-Type: text/html; charset=utf-8" );
		//备份数据库
		//这里的账号、密码、名称都是从页面传过来的
		// $host="k435e61831.zicp.vip:19792";
		// $user="root";//数据库账号
		// $password="P@ss1234";//数据库密码
		// $dbname="working";//数据库名称
		// $dbpost=19792;


		$host="localhost";
		$user="root";//数据库账号
		$password="";//数据库密码
		$dbname="working";//数据库名称
		$dpost=3306;

		$conn = mysqli_connect($host,$user,$password);

		if(!mysqli_connect($host,$user,$password)) //连接mysql数据库
		{
		 echo '数据库连接失败，请核对后再试';//-------------------可以改成提示框形式
		 exit;
		}
		if(!mysqli_select_db($conn,$dbname)) //是否存在该数据库
		{
		 echo '不存在数据库:'.$dbname.',请核对后再试';//-------------------可以改成提示框形式
		 exit;
		}
		mysqli_query($conn,"set names 'utf8'");//解决乱码问题
		$mysql= "set charset utf8;\r\n";
		$q1=mysqli_query($conn,"show tables");
		while($t=mysqli_fetch_array($q1)){
		  $table=$t[0];
		  $q2=mysqli_query($conn,"show create table `$table`");
		  $sql=mysqli_fetch_array($q2);
		  $mysql.=$sql['Create Table'].";\r\n";
		  $q3=mysqli_query($conn,"select * from `$table`");
		  while($data=mysqli_fetch_assoc($q3)){
		    $keys=array_keys($data);
		    $keys=array_map('addslashes',$keys);
		    $keys=join('`,`',$keys);
		    $keys="`".$keys."`";
		    $vals=array_values($data);
		    $vals=array_map('addslashes',$vals);
		    $vals=join("','",$vals);
		    $vals="'".$vals."'";
		    $mysql.="insert into `$table`($keys) values($vals);\r\n";
		  }
		}


		$filename="data/".$dbname.date('Ymjgi').".sql"; //存放路径，默认存放到项目最外层
		$fp = fopen($filename,'w');
		fputs($fp,$mysql);
		fclose($fp);
		echo "数据备份成功";

	}


	public function restore(){
		$get = I('get.');
		$filename = "working20210926858.sql";//以backup方式保存下来的sql


		// $host="k435e61831.zicp.vip:19792"; //主机名
		// $user="root"; //MYSQL用户名
		// $password="P@ss1234"; //密码
		// $dbname="working"; //指定数据库

		$host="localhost";
		$user="root";//数据库账号
		$password="";//数据库密码
		$dbname="working";//数据库名称

		$con = mysqli_connect($host,$user,$password);

		mysqli_select_db($con,$dbname);
		$mysql_file="data/".$filename; //指定要恢复的MySQL备份文件路径,请自已修改此路径
		
		function restore($fname,$conn)
		 {
			 if (file_exists($fname)) {
				  $sql_value="";
				  $cg=0;
				  $sb=0;
				  $sqls=file($fname);
				  foreach($sqls as $sql)
				  {
				  $sql_value.=$sql;
				  }
				  $a=explode(";\r\n", $sql_value); //根据";\r\n"条件对数据库中分条执行
				  $total=count($a)-1;
				  mysqli_query($conn,"set names 'utf8'");
				  for ($i=0;$i<$total;$i++)
				  {
				  mysqli_query($conn,"set names 'utf8'");
				  //执行命令
				  if(mysqli_query($conn,$a[$i]))
				  {
				   $cg+=1;
				  }
				  else
				  {
				   $sb+=1;
				   $sb_command[$sb]=$a[$i];
				  }
				  }
				  echo "操作完毕，共处理 $total 条命令，成功 $cg 条，失败 $sb 条";
				  //显示错误信息
				  if ($sb>0)
				  {
				  echo "<hr><br><br>失败命令如下：<br>";
				  for ($ii=1;$ii<=$sb;$ii++)
				  {
				   echo "<p><b>第 ".$ii." 条命令（内容如下）：</b><br>".$sb_command[$ii]."</p><br>";
				  }
				  }  //-----------------------------------------------------------
				 }else{
				  echo "MySQL备份文件不存在，请检查文件路径是否正确！";
			 }
		 }

		restore($mysql_file,$con); //执行MySQL恢复命令
		
	}
}