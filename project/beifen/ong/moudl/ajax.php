<?php if(!defined('ONGPHP'))exit('ErrorONGSOFT');
plus( array('p','jiami','jianli','mima','shanchu','qcurl','qfopen','x','memcc','txtcc','db','isutf8','setsession','pagec','pinyin','ip','post','funciton','sslget','sslpost','vcode','update','mysqlcc') );

$Memsession =  $Mem = new txtcc();
$Mem1 = new txtcc(ONGPHP.'/mode/');
$shezhi = $Mem1 -> g('shezhi');

$appid = $shezhi['appid'];
$appsecret = $shezhi['appsecret'];

setsession( $CONN['sessiontime'] );

$LANG = include QTLANG;

$WZHOST = WZHOST;

$action=  isset($_POST['action']) ? $_POST['action'] :'';

if ($action=='reg') {
	$D = db('');
	$name = isset($_POST['name']) ? $_POST['name'] :'';
	$mima = isset($_POST['mima']) ? $_POST['mima'] :'';

	$user = $D -> setbiao('user') -> where( 
		array( 
			"zhanghao" => $name, 
		) 
	) -> find();
	if ($user) {
		$arr['o'] = '此账号已经存在';
	}else{

		$WHERE['zhanghao'] = $name;
		$WHERE['name'] = $name;
		$WHERE['mima'] = mima($mima);
		$WHERE['atime'] = time();
		$WHERE['off'] = 1;
		 if( isset( $_SESSION['tuid'] ) ){

		                        if( $_SESSION['tuid']  > 0){

		                            $tui = $D ->setbiao('user')-> where( array( "uid" => $_SESSION['tuid'] ) ) -> find();

		                            if( $tui ){

		                                    $WHERE['tuid'] = $_SESSION['tuid'];

		                                    for( $i = 1 ; $i < $CONN['tujishu'] ; $i++ ){

		                                         $wds = $i-1;
		                                         if($wds < 1) $wds= '' ;
		                                         $WHERE['tuid'.$i] = $tui['tuid'.$wds];

		                                    }
		                            }
		                        }

	            }


		// 当没有的时候，插入数据到表里
		$fanhui = $D-> setbiao('user')-> insert($WHERE);

		if ($fanhui) {
			$arr['o'] ='yes';
		}else{
			$arr['o'] ='no';
		}


	}

	echo json_encode($arr);


}








