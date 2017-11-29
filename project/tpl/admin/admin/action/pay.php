<?php if( !defined( 'ONGPHP')) exit( 'Error ONGSOFT');
$D = db('pay');
$OFF = logac('off2');
$OFF2 = logac('daohang');

?>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="<?php echo TPL;?>js/lib/html5.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/lib/respond.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" href="<?php echo TPL;?>js/kindeditor/themes/default/default.css" />
<link rel="stylesheet" type="text/css" href="<?php echo TPL;?>h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<?php echo TPL;?>h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<?php echo TPL;?>js/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<?php echo TPL;?>h-ui/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="<?php echo TPL;?>h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<?php echo TPL;?>h-ui/css/style.css" />
<script type="text/javascript" src="<?php echo TPL;?>js/kindeditor/kindeditor-all-min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/kindeditor/lang/<?php echo $CONN['htlang']?>.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="<?php echo TPL;?>js/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title><?php echo $LANG['adminac'][$_GET['action']];?></title>

<script>
var updateurl='<?php echo $_SERVER['SCRIPT_NAME'];?>?action=<?php echo $AC;?>&mode=edit&uplx=image&dir=image';
</script>
</head>
<body>
<style>
.td-manage .Hui-iconfont{font-size:22px;}
</style>
<nav class="breadcrumb"> 
                        <i class="Hui-iconfont">&#xe67f;</i> <?php echo $LANG['home']?> 
                        <span class="c-gray en">&gt;</span>  <?php echo $LANG['adminac'][$_GET['action']];?>
                       
                       <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="<?php echo $LANG['shuaxin'];?>" > <i class="Hui-iconfont"> &#xe68f; </i> </a>    
                       
</nav>


<?php if( isset( $_GET['mode'])){

           
           if( $_GET['mode'] == 'edit'){ 

                          unset( $_GET['mode']);

                          if( isset($_GET['uplx']) ){    
                
                             $_GET['uplx'] = isset($_GET['uplx'])?$_GET['uplx']:'image';

                             $DATAS = update($USER['id']);

                             if(  $DATAS['code'] == 1 )  exit( json_encode( array('error' => 0 , 'url' =>  $DATAS['content']['pic']) ));
                             else exit( json_encode( array('error' => 1 , 'message' =>  $DATAS['msg']) ));

                          }
                      
                            if(  isset(  $_GET['ajson'])){

                                   if( !yztoken('token',$AC) ) adminmsgbox( $LANG['token'], '0');

                                

                                   $LX = (int) isset( $_GET['lx']) ? $_GET['lx']: 1;

                                   if($LX > 4 || $LX < 1)  adminmsgbox( $LANG['shibai'] , '0');

                                   $ID = (int) ( isset( $_GET['id'])? $_GET['id']:0);

                                   $WHERE['id'] = $ID ;

                                   $DATA = $D ->where( $WHERE )-> find();

                                   if( ! $DATA ) adminmsgbox( $LANG['shujuno'],'0');

                                   if( $LX == 4)     $shuzu = array('off' => '1');
                                   else if( $LX == 3)$shuzu = array( 'off' => '0');
                                   else if( $LX == 2)$shuzu = array( 'xianshi' => '1');
                                   else if( $LX == 1)$shuzu = array( 'xianshi' => '0');
                                    
                                   $fan = $D ->where( $WHERE )-> update( $shuzu );

                                   if( $fan){

                                            xitongpay( $DATA['payfile'] , 1);
                                            xitongpay(  $ID , 1);
                                            xitongpay( '0' , 1);
                                            xitongpay( '-1' , 1);
                                            xitongpay( '-2' , 1);
                                            xitongpay( '-3' , 1);

                                            adminlog($USER['id'], 3 , serialize( array( 'ac' => $AC , 'mo' => $MO , 'id'=> $ID,'yuan'=> array( 'off' => $DATA['off'],'xianshi' => $DATA['xianshi'] ), 'data'=>  $shuzu )));

                                            adminmsgbox( $LANG['chenggong'] , '1');

                                   }else    adminmsgbox( $LANG['shibai'] , '0');
                             
                             
                             
                             }


                        if( isset( $_POST['submit'] ) ){

                                $ID = (int)$_POST['id'];
                                $DATA = $D ->where( array( 'id'=> $ID))-> find();
                     
                                if( !yztoken( 'token' , $AC ) ) msgbox( $LANG['token'], '?'.getarray( $_GET));

                                $_POST['adminid'] = $USER['id'];
                                if($_POST['paykey'] == '') unset( $_POST['paykey']);

                                $fan = $D ->where( array( 'id' => $ID))-> update( $_POST);

                                if( $fan){

                                        xitongpay( $_POST['payfile'] , 1);
                                        xitongpay(  $ID , 1);
                                        xitongpay( '0' , 1);
                                        xitongpay( '-1' , 1);
                                        xitongpay( '-2' , 1);
                                        xitongpay( '-3' , 1);

                                        adminlog($USER['id'], 3 , serialize( array( 'ac' => $AC , 'mo' => $MO , 'id'=> $ID,'yuan'=> $DATA, 'data'=> $_POST )));
                                        msgbox( $LANG['edit'].$LANG['chenggong'], '?' . getarray( $_GET) );

                                }else   msgbox( $LANG['edit'].$LANG['shibai'], '?' . getarray( $_GET) );

                      }

    
                        msgbox( '' , '?' . getarray( $_GET ) );


               }else if( $_GET['mode'] == 'del'){

                         

                           if( !yztoken( 'token' , $AC ) ) msgbox( $LANG['token'], '0');

                           $ID = (int) $_GET['id'];

                           $DATAS= $D ->where( array( 'id'=> $ID))-> find();

                           $DATA = $D -> delete( array( 'id' => $ID));

                            if( $DATA ){

                                xitongpay( $_POST['payfile'] , 1);
                                xitongpay( $ID , 1);
                                xitongpay( '0' , 1);
                                xitongpay( '-1' , 1);
                                xitongpay( '-2' , 1);
                                xitongpay( '-3' , 1);

                                adminlog($USER['id'], 4 , serialize( array( 'ac' => $AC , 'mo' => $MO , 'id'=> $ID,'yuan'=> $DATAS  )));

                                msgbox( $LANG['yishanchu'] , '1');
                           
                            }else msgbox( $LANG['shanchusb'] , '0');

            
               }else if( $_GET['mode'] == 'add'){

                        unset( $_GET['mode']);

                        if( isset( $_POST['submit'])){
                     
                            if( !yztoken( 'token' , $AC ) ) msgbox( $LANG['token'] , '?' . getarray( $_GET));

                            unset( $_SESSION[ $AC]);
                            unset( $_POST['token']);
                            $_POST['adminid'] = $USER['id'];

                            $fanhui = $D  -> insert($_POST);

                            if( $fanhui){ 

                                unset( $_POST['submit']);

                                xitongpay( '0' , 1);
                                xitongpay( '-1' , 1);
                                xitongpay( '-2' , 1);
                                xitongpay( '-3' , 1);

                                adminlog($USER['id'], 5 , serialize( array( 'ac' => $AC , 'mo' => $MO ,'id'=> $fanhui ,'data'=> $_POST  )));
                                adminmsgbox( $LANG['add'].$LANG['chenggong'] ,'?'.getarray( $_GET) );
                                
                            }else msgbox( $LANG['add'].$LANG['shibai'], '?'.getarray( $_GET));


                        }

                 

                   msgbox( '' , '?' . getarray( $_GET ) );

          } ?>
 
<?php }else{ 

    $PAGE  = (int) isset( $_GET['page']) ? $_GET['page'] : 0;

    $limit = listmit( $CONN['hnum'] ,$PAGE);

    $ZSHU = $D ->where( $WHERE ) -> total();

    $DATA = $D ->order( 'paixu desc,id desc' )->where( $WHERE )-> limit( $limit )-> select();

    $_SESSION[$AC] = token();

    if(! $DATA) $DATA = array();

?>


<div class="page-container">
  <div class="mt-20">

    <table class="table table-border table-bordered table-hover table-bg table-sort">

        <thead>

            <tr class="text-c">

                <th width="130"> ID </th>
                <th width="130"> <?php echo $LANG['name'];?> </th>
                <th> <?php echo $LANG['tupian'];?> </th>
                <th width="60"> <?php echo $LANG['picupdate'];?> </th>
                <th width="130"> <?php echo $LANG['diaowenjian'];?></th>
                <th width="130"> <?php echo $LANG['zhanghao']?> </th>
                <th width="130"> <?php echo $LANG['zhifuid']?>   </th>
                <th width="130"><?php echo $LANG['zhifukey']?> </th>
                <th width="50"> <?php echo $LANG['paixu']?> </th>
                <th width="130"> <?php echo $LANG['beizhu']?> </th>
                <th width="60"> <?php echo $LANG['appzf'];?></th>
                <th > <?php echo $LANG['caozuo']?> </th>

            </tr>

        </thead>

     <tbody>

          <?php   $ONG = array();
                  $shua = explode(',',$D->tablejg['0']);
                  foreach( $shua as $zhi )  $ONG[$zhi] ='';
                  
            ?>

                    <form method="post" action="?<?php  echo 'action=',$AC,'&mode=add';?>">
                        <input type="hidden" name="token" id="sctoken" value="<?php echo $_SESSION[$AC];?>" />
                            <tr class="text-c">

                                <td> <?php echo $LANG['add']?></td>
                                <td><input type="text" class="input-text  size-M" name="name" value="<?php echo $ONG['name']?>"  /></td>
                                <td><input type="text" class="input-text  size-M pcctt<?php echo $ONG['id'];?>" name="suoluetu" value="<?php echo $ONG['suoluetu']?>"  /> </td>
                                <td> <input type="button" class="uploadButton<?php echo $ONG['id'];?>"  value="<?php echo $LANG['picupdate'];?>" /></td>

                                <script>
                                    KindEditor.ready(function(K) {

                                        var uploadbutton = K.uploadbutton({
                                                           button :  K('.uploadButton<?php echo $ONG['id'];?>')['0'] ,
                                                        fieldName : 'image',
                                                              url : updateurl,
                                                      afterUpload : function(data) {

                                                            if (data.error === 0){

                                                                $(".pcctt<?php echo $ONG['id'];?>").val( data.url);

                                                            }else{

                                                                layer.msg(data.message, { time: 2000,  });
                                                            }

                                                        }, afterError : function(str) { 

                                                            layer.msg(str, { time: 2000 });
                                                        }
                                                    });
                                        uploadbutton.fileBox.change(function(e) {
                                                 uploadbutton.submit();
                                        });
                                    });

                                </script>
 

                                <td>
                                        <select name="payfile" class="select">
                                           <?php echo ywselect($LANG['payfile'],$ONG['payfile']);?>
                                        </select>
                                 </td>


                                    <td><input type="text" class="input-text  size-M" name="zhanghao" value="<?php echo $ONG['zhanghao']?>"  /></td>
                                    <td><input type="text" class="input-text  size-M" name="payid" value="<?php echo $ONG['payid']?>"  /></td>

                                    <td><input type="text" class="input-text  size-M" name="paykey" value="" placeholder="<?php echo $ONG['paykey'] != '' ?$LANG['placeholderyes']:$LANG['placeholderno']; ?>" /></td>

                                        <td><input type="text" class="input-text  size-M" name="paixu" value="<?php echo $ONG['paixu']?>"  /></td>
                                        
                                        <td><input type="text" class="input-text  size-M" name="beizhu" value="<?php echo $ONG['beizhu']?>"  /></td>



                                    <td>
                                       <select name="isapp" class="select">
                                           <?php echo ywselect($OFF,$ONG['isapp']);?>
                                        </select>
                                    </td>

                                    <td class="td-manage text-l"> 
                                    
                                    <input class="btn btn-primary radius" type="submit"  value="<?php echo $LANG['add']?>" name="submit" />



                                    </td>

                               </tr>

                       </form>

            <?php if( $DATA){
              
                      foreach( $DATA as $ONG){ ?>

                      <form method="post" action="?<?php  echo 'action=',$AC,'&mode=edit';?>">

                              <input type="hidden" name="id" value="<?php echo $ONG['id'];?>" />
                              <input type="hidden" name="token" value="<?php echo $_SESSION[$AC];?>" />

                              <tr class="text-c">
                                    <td><?php echo $ONG['id']?></td>
                                    <td><input type="text" class="input-text  size-M" name="name" value="<?php echo $ONG['name']?>"  /></td>

                                    <td><input type="text" class="input-text  size-M pcctt<?php echo $ONG['id'];?>" name="suoluetu" value="<?php echo $ONG['suoluetu']?>"  /> 
                                    </td>

                                    <td> <input type="button" class="uploadButton<?php echo $ONG['id'];?>"  value="<?php echo $LANG['picupdate'];?>" /></td>

                                    <script>

                                    KindEditor.ready(function(K) {

                var uploadbutton = K.uploadbutton({
                    button :  K('.uploadButton<?php echo $ONG['id'];?>')['0'] ,
                    fieldName : 'image',
                    url : updateurl,
                    afterUpload : function(data) {

                        if (data.error === 0) {

                                $(".pcctt<?php echo $ONG['id'];?>").val( data.url);


                        }else {

                            layer.msg(data.message, { time: 2000,  });

                        

                        }

                        
                },
                    afterError : function(str) {



                          
                        
                        layer.msg(str, { time: 2000,  });
                    }
                });
                uploadbutton.fileBox.change(function(e) {
                    uploadbutton.submit();
                });
        });
                                    </script>
 

                                    <td>
                                        <select name="payfile" class="select">
                                           <?php echo ywselect($LANG['payfile'],$ONG['payfile']);?>
                                        </select>
                                    </td>



                                    <td><input type="text" class="input-text  size-M" name="zhanghao" value="<?php echo $ONG['zhanghao']?>"  /></td>
                                    <td><input type="text" class="input-text  size-M" name="payid" value="<?php echo $ONG['payid']?>"  /></td>

                                    <td><input type="text" class="input-text  size-M" name="paykey" value="" placeholder="<?php echo $ONG['paykey'] != '' ?$LANG['placeholderyes']:$LANG['placeholderno']; ?>" /></td>

                                        <td><input type="text" class="input-text  size-M" name="paixu" value="<?php echo $ONG['paixu']?>"  /></td>
                                        
                                        <td><input type="text" class="input-text  size-M" name="beizhu" value="<?php echo $ONG['beizhu']?>"  /></td>


                                        <td>
                                       <select name="isapp" class="select">
                                           <?php echo ywselect($OFF,$ONG['isapp']);?>
                                        </select>
                                    </td>

                                    <td class="td-manage"> 
                                    
                                    <input class="btn btn-primary radius" type="submit"  value="<?php echo $LANG['edit']?>" name="submit" />


                                     <?php if( $ONG['off'] == 1 ){ ?>

                                     <a href="javascript:;" onclick="admin_guanxian(this,<?php echo $ONG['id']?>)" class="ml-5" style="text-decoration:none" title="<?php echo $OFF[$ONG['off']];?>"><i class="Hui-iconfont" style="color:green;">&#xe6e1;</i> </a>

                                    <?php }else{ ?>

                                     <a href="javascript:;" onclick="admin_guanxian(this,<?php echo $ONG['id']?>)" class="ml-5" style="text-decoration:none" title="<?php echo $OFF[$ONG['off']];?>"><i class="Hui-iconfont"  style="color:red;">&#xe6dd;</i></a>

                                    <?php } ?>


                                    <?php if( $ONG['xianshi'] == 1 ){ ?>

                                     <a href="javascript:;" onclick="admin_gengai(this,<?php echo $ONG['id']?>)" class="ml-5" style="text-decoration:none" title="<?php echo $OFF2[$ONG['xianshi']];?>"><i class="Hui-iconfont" style="color:green;">&#xe64d;</i> </a>

                                    <?php }else{ ?>

                                     <a href="javascript:;" onclick="admin_gengai(this,<?php echo $ONG['id']?>)" class="ml-5" style="text-decoration:none" title="<?php echo $OFF2[$ONG['xianshi']];?>"><i class="Hui-iconfont"  style="color:red;">&#xe624;</i></a>

                                    <?php } ?>
                                    
                                    <a title="<?php echo $LANG['del'];?>" href="javascript:;" onclick="admin_del(this,<?php echo $ONG['id']?>)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i> </a>


                                    </td>

                               </tr>

                       </form>

            <?php     
                    } 
                 }
            ?>


         </tbody>

      </table>

   </div>

</div>


<div class="page">

   <?php   if( $ZSHU > $CONN['hnum'] ){
                     if(!isset( $_GET['fenqu'])) $_GET['fenqu'] = '';

                        echo pagec( $LANG['PAGE'], $CONN['hnum'], $ZSHU, $CONN['hpage'], $PAGE, '?action='.$_GET['action'].'&page=', '&fenqu='.$_GET['fenqu'] ); 
            }
   ?>

</div>



<?php  include HTPL.'foot.php'; } ?>

<script type="text/javascript" src="<?php echo TPL;?>js/jquery.min.js"></script> 
<script type="text/javascript" src="<?php echo TPL;?>h-ui/js/layer.js"></script> 
<script type="text/javascript" src="<?php echo TPL;?>h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<?php echo TPL;?>h-ui/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="<?php echo TPL;?>js/lib/Validform.min.js"></script>
<script type="text/javascript">

var token ='<?php echo $_SESSION[$AC]?>';

function guanli(id,lx,obj){

        $.getJSON('?action=<?php echo $AC;?>&mode=edit&ajson=1&token=' + token + '&id='+id+'&lx='+lx,{},function(data){

            if(data.token){  token = data.token; $("input[name='token']").val(token); }
            
            if(data.code == 1){

                if(lx == 4)       $(obj).html('<i class="Hui-iconfont" style="color:green;">&#xe6e1;</i>');
                else if(lx == 3)  $(obj).html('<i class="Hui-iconfont"  style="color:red;">&#xe6dd;</i>');
                else if(lx == 2)  $(obj).html('<i class="Hui-iconfont" style="color:green;">&#xe64d;</i>');
                else              $(obj).html('<i class="Hui-iconfont"  style="color:red;">&#xe624;</i>');

                layer.msg(  data.msg ,{ icon: 1 ,time : 1000});
            
            }else layer.msg( data.msg ,{ icon: 2 ,time : 1000});

        });
}




function admin_guanxian( obj, id){

              
        layer.confirm( '<?php echo $LANG['genggaioff'];?>' ,{ title:'<?php echo $LANG['msgbox'];?>',btn:<?php echo json_encode($OFF);?>
                       , btn1: function(index, layero){

                                        guanli(id,3,obj);

                       },btn2: function(index, layero){

                                        guanli(id,4,obj);

                       }
        });


}

function admin_gengai( obj, id){


        layer.confirm( '<?php echo $LANG['yexianshi'];?>' ,{ title:'<?php echo $LANG['msgbox'];?>',btn:<?php echo json_encode($OFF2);?>
                       , btn1: function(index, layero){

                                        guanli(id,1,obj);

                       },btn2: function(index, layero){

                                        guanli(id,2,obj);

                       }
        });


}






function admin_del( obj, id){

       layer.confirm('<?php echo $LANG['shanchumsgbox'];?>',{title:'<?php echo $LANG['msgbox'];?>',btn:<?php echo json_encode($LANG['msboxbtn']);?>},function(index){
          
              $.getJSON('?action=<?php echo $AC;?>&mode=del&ajson=1&token=' + token + '&id='+id,{},function(data){

                  if(data.token){  token = data.token; $("input[name='token']").val(token); }
              
                  if(data.code == 1){

                       $(obj).parents("tr").remove();

                       layer.msg('<?php echo $LANG['yishanchu'];?>',{icon:1,time:1000});

                  }else  layer.msg( data.msg ,{ icon: 2 ,time : 1000});

              });

        });
}

</script>
</body>
</html>