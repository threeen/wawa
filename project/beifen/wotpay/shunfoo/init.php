<?php
//卡类型，下面的卡类型由沃通付约定，请不要轻易修改
$shunfoo_cardtype	= array(
	array('name' => 'QQ支付卡', 'code' => '1'),
	array('name' => '盛大支付卡', 'code' => '2'),
	array('name' => '骏网一卡通', 'code' => '3'),
	array('name' => '亿卡', 'code' => '4'),
	array('name' => '完美一卡通', 'code' => '5'),
	array('name' => '搜狐一卡通', 'code' => '6'),
	array('name' => '征途一卡通', 'code' => '7'),
	array('name' => '久游一卡通', 'code' => '8'),
	array('name' => '网易一卡通', 'code' => '9'),
	array('name' => '魔兽世界卡', 'code' => '10'),
	array('name' => '联华卡', 'code' => '11'),
	array('name' => '电信充值卡', 'code' => '12'),
	array('name' => '神州行充值卡', 'code' => '13'),
	array('name' => '联通充值卡', 'code' => '14'),
	array('name' => '金山一卡通', 'code' => '15'),
	array('name' => '光宇一卡通', 'code' => '16')
);

//银行类型，由沃通付约定，请不要轻易修改
//要选定自己使用的银行类型，请在你自己的配置中按照如下的格式书写
$shunfoo_banktype	= array(
	array('name' => '中信银行|银行卡支付', 'code' => '962'),
	array('name' => '中国银行|银行卡支付', 'code' => '963'),
	array('name' => '中国农业银行|网上银行签约客户', 'code' => '964'),
	array('name' => '中国建设银行|网上银行签约客户', 'code' => '965'),
	array('name' => '中国工商银行|工行手机支付（仅限工行手机签约客户）', 'code' => '966'),
	array('name' => '中国工商银行|网上签约注册用户', 'code' => '967'),
	array('name' => '浙商银行|银行卡支付', 'code' => '968'),
	array('name' => '浙江稠州商业银行|浙江稠州商业银行', 'code' => '969'),
	array('name' => '招商银行|银行卡支付', 'code' => '970'),
	array('name' => '邮政储蓄|银联网上支付签约客户', 'code' => '971'),
	array('name' => '兴业银行|在线兴业', 'code' => '972'),
	array('name' => '顺德农村信用合作社|顺德信用合作社借记卡（顺德地区）', 'code' => '973'),
	array('name' => '深圳发展银行|发展卡支付', 'code' => '974'),
	array('name' => '上海银行|银行卡支付', 'code' => '975'),
	array('name' => '上海农村商业银行|如意借记卡（上海地区）', 'code' => '976'),
	array('name' => '浦东发展银行|东方卡', 'code' => '977'),
	array('name' => '平安银行|平安借记卡', 'code' => '978'),
	array('name' => '南京银行|银行卡支付', 'code' => '979'),
	array('name' => '民生银行|民生卡', 'code' => '980'),
	array('name' => '交通银行|太平洋卡', 'code' => '981'),
	array('name' => '华夏银行|华夏借记卡', 'code' => '982'),
	array('name' => '杭州银行|银行卡支付', 'code' => '983'),
	array('name' => '广州市农村信用社|麒麟借记卡（广州地区）,广州市商业银行|羊城万事顺卡借记卡（广州地区）', 'code' => '984'),
	array('name' => '广东发展银行|银行卡支付', 'code' => '985'),
	array('name' => '光大银行|银行卡支付', 'code' => '986'),
	array('name' => '东亚银行|银行卡支付', 'code' => '987'),
	array('name' => '渤海银行|银行卡支付', 'code' => '988'),
	array('name' => '北京银行|北京银行', 'code' => '989'),
	array('name' => '北京农村商业银行|银行卡支付', 'code' => '990'),
	array('name' => '支付宝', 'code' => '992'),
	array('name' => '微信', 'code' => '1004')
);

//卡限制范围，下面的卡限制范围由沃通付约定，请不要轻易修改
$shunfoo_restrict=array(
	"0"=>"全国通用",
	"9"=>"四川省",
	"10"=>"重庆市",
	"11"=>"贵州省",
	"12"=>"云南省",
	"13"=>"西藏自治区",
	"14"=>"北京市",
	"15"=>"天津市",
	"16"=>"河北省",
	"17"=>"山西省",
	"18"=>"内蒙古自治区",
	"19"=>"辽宁省",
	"20"=>"吉林省",
	"21"=>"黑龙江省",
	"22"=>"上海市",
	"23"=>"江苏省",
	"24"=>"浙江省",
	"25"=>"安徽省",
	"26"=>"福建省",
	"27"=>"江西省",
	"28"=>"河南省",
	"29"=>"广东省",
	"30"=>"湖北省",
	"31"=>"湖南省",
	"32"=>"广西壮族自治区",
	"33"=>"海南省",
	"34"=>"陕西省",
	"35"=>"甘肃省",
	"36"=>"山东省",
	"37"=>"青海省",
	"38"=>"宁夏回族自治区",
	"39"=>"新疆维吾自治区",
	"40"=>"香港特别行政区",
);
?>