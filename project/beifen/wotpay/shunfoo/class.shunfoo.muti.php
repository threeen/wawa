<?php

/*
  ===============================================================================
  �ࣺshunfoo ��ͨ������֧���ӿڵ�����
  ���ԣ�
  $parter
  �̻�id������ͨ������
  $type
  ����ӿڵĿ�����
  1 �C QQ��
  2 �C ʢ��
  3 �C ������
  4 �C �ڿ�
  5-- ����һ��ͨ
  6-- �Ѻ�һ��ͨ
  7-- ��;��Ϸ��
  8-- ����һ��ͨ
  9-- ����һ��ͨ
  10 �Cħ�޿�
  11 --������
  12-- ���ų�ֵ��
  13-- �����г�ֵ��
  14-- ��ͨ��ֵ��
  15����ɽһ��ͨ
  16������һ��ͨ
  $cardno
  ����
  $cardpwd
  ����
  $value
  ����ֵ����λԪ
  $restrict
  ����ʹ�õĵ���Χ, ���������ֵ9ʱ����ʾ�ÿ�ֻ�����Ĵ�ʹ�á����ж����������ʱ��
  ��Ӣ�Ķ��ŷָ����Ƶ�������ֻ�����Ĵ�������ʹ�ã������ֵΪ9,10��
  0 ȫ��ͨ��
  9	�Ĵ�ʡ
  10	������
  11	����ʡ
  12	����ʡ
  13	����������
  14	������
  15	�����
  16	�ӱ�ʡ
  17	ɽ��ʡ
  18	���ɹ�������
  19	����ʡ
  20	����ʡ
  21	������ʡ
  22	�Ϻ���
  23	����ʡ
  24	�㽭ʡ
  25	����ʡ
  26	����ʡ
  27	����ʡ
  28	����ʡ
  29	�㶫ʡ
  30	����ʡ
  31	����ʡ
  32	����׳��������
  33	����ʡ
  34	����ʡ
  35	����ʡ
  36	ɽ��ʡ
  37	�ຣʡ
  38	���Ļ���������
  39	�½�ά��������
  40	����ر�������

  $orderid
  �������Լ��Ķ����ţ��ö����Ž���Ϊ��ͨ���ķ�������
  $callbackurl
  �����й����з��ؽ���ĵ�ַ����Ҫ��http://��ͷ
  $key
  �̻���Կ
  $message
  [�����ֶ�]��������ʾ���������ı���Ϣ
  $opstate
  [�����ֶ�]������Ľ��
  $ovalue
  [�����ֶ�]����ѯ���Ŀ�ʵ����ֵ���������ύ���һ�£����ص�ֵΪ0
  ����:
  send()
  ���͵���ͨ���������ѽӿ�
  ����ʾ����
  $shunfoo = new shunfoo();
  $shunfoo->type 			= $cardType;			//������
  $shunfoo->cardno 		= $card_number;			//����
  $shunfoo->cardpwd 		= $card_password;		//����
  $shunfoo->value	 		= $amount;				//�ύ���
  $shunfoo->restrict 		= $shunfoo_restrict;		//��������, 0��ʾȫ����Χ
  $shunfoo->orderid 		= $order_id;			//������
  $shunfoo->callbackurl 	= $shunfoo_callback_url;	//����url��ַ
  $shunfoo->parter 		= $shunfoo_merchant_id;		//�̼�Id
  $shunfoo->key 			= $shunfoo_merchant_key;	//�̼���Կ

  //����
  $result	= $shunfoo->send();
  recive()
  ������ͨ����Ϣ������������ݵ���֤��������Լ�Ҫ����������Ĵ����������Լ��ĳ����н���
  ����ʾ����

  search($order_id)
  ������ѯ���ڵ���֮ǰ��������Ϊ���������̻�id��ǩ�����Խ��������֤
  ����:
  $order_id Ҫ��ѯ�Ķ���Id��
  ���أ�
  �����Ѿ��������򷵻سɹ���־1���������Ŷӣ���δ�������򷵻�ʧ�ܱ�־0
  �����Ա���������Ľ������ķ��ز���$message, $opstate,$ovalue��ʾ
  ����ʾ��:

  ===============================================================================
 */
require_once("init.php");

class shunfoo {
    const shunfoo_card_url = 'http://pay.yuntuofu.cc/Card/';
    const shunfoo_card_search_url = 'http://pay.yuntuofu.cc/Card/';

    /*
     * ����ӿڵĿ�����
     */

    var $type;

    /*
     * �̻�id������ͨ������
     */
    var $parter;

    /*
     * ����
     */
    var $cardno;

    /*
     * ����
     */
    var $cardpwd;

    /*
     * ����ֵ����λԪ
     */
    var $value;

    /*
     * ����ʹ�õĵ���Χ��
     */
    var $restrict;
    /**
     * �ύ��������ֵ�ܺͣ���λԪ����С������ֻ�ύ1�ſ�ʱ��totalvalue��value��ͬ
     */
    var $totalvalue;

    /*
     * �������Լ��Ķ����ţ��ö����Ž���Ϊ��ͨ���ķ������ݡ�
     */
    var $orderid;
    /**
     * ��ע��Ϣ�������л�ԭ�����ء�����ֵ�������ģ���ע�����
     */
    var $attach;

    /*
     * �����й����з��ؽ���ĵ�ַ����Ҫ��http://��ͷ��
     */
    var $callbackurl;

    /*
     * �̻���Կ
     */
    var $key;

    /*
     * [�����ֶ�]����Ϣ	
     */
    var $message;

    /*
     * [�����ֶ�]������Ľ��
     */
    var $opstate;

    /*
     * [�����ֶ�]����ѯ���Ŀ�ʵ����ֵ���������ύ���һ�£����ص�ֵΪ0
     */
    var $ovalue;
    /**
     * 32λСдMD5ǩ��ֵ��GB2312����
     * @var String
     */
    var $sign;

    public function shunfoo() {
        
    }

    /*
      ///���͵���ͨ���������ѽӿ�
     */

    public function send() {
        //����Ƿ���ȷ

        $total = 0;
        $v_array = explode(",", $this->value);
        foreach ($v_array as $v) {
            $total+=(int) $v;
        }
        $this->totalvalue = $total;

        $error = 0;
        $msg = '��������ͨ��֧���ӿڵĲ������󣬴�����Ϣ���£�';
        if (empty($this->parter)) {
            $error = 1;
            $msg .= '<li>parter����Ϊ��: �̻�id������ͨ������</li>';
        }
        if (empty($this->type)) {
            $error = 1;
            $msg .= '<li>type����Ϊ��: ������</li>';
        }
        if (empty($this->cardno)) {
            $error = 1;
            $msg .= '<li>cardno����Ϊ��: ����</li>';
        }
        if (empty($this->cardpwd)) {
            $error = 1;
            $msg .= '<li>cardpwd����Ϊ��: ����</li>';
        }
        if (empty($this->value)) {
            $error = 1;
            $msg .= '<li>value�ύ����: ����ֵ</li>';
        }
        if (empty($this->totalvalue)) {
            $error = 1;
            $msg .= '<li>totalvalue�ύ����: �ܽ��</li>';
        }
        if ($this->restrict == '') {
            $error = 1;
            $msg .= '<li>restrict�ύ����: ����Χ���ƣ���������ƣ��봫��0</li>';
        }
        if ($this->attach == '') {
            $error = 1;
            $msg .= '<li>attach�ύ����:��ע��Ϣ</li>';
        }
        if (empty($this->callbackurl)) {
            $error = 1;
            $msg .= '<li>callbackurl����Ϊ�գ����й����з��ؽ���ĵ�ַ</li>';
        }
        if (empty($this->orderid)) {
            $error = 1;
            $msg .= '<li>orderid����Ϊ�գ�������</li>';
        }
        if (empty($this->key)) {
            $error = 1;
            $msg .= '<li>key����Ϊ�գ��̻���Կ</li>';
        }

        //���ύ������������ʾ������Ϣ
        if ($error) {
            die($msg);
        }

        $url = "type={$this->type}&parter={$this->pater}&cardno={$this->cardno}&cardpwd={$this->cardpwd}&value={$this->value}&totalvalue={$this->totalvalue}&restrict={$this->restrict}&attach={$this->attach}&orderid={$this->orderid}&callbackurl={$this->callbackurl}";

        //ǩ��
        $sign = md5($url . $this->key);
        $url = shunfoo::shunfoo_card_url . "?" . $url . "&sign=" . $sign;

        $result = file_get_contents($url);
        parse_str($result, $output);
        return $output['opstate'];
    }

    /*
      ///������ͨ����Ϣ������ж�ǩ���Ƿ���ȷ
     */

    public function recive() {
        header('Content-Type:text/html;charset=GB2312');
        $orderid = trim($_GET['orderid']);
        $cardno = trim($_GET['cardno']);
        $opstate = trim($_GET['opstate']);
        $ovalue = trim($_GET['ovalue']);
        $ototalvalue = trim($_GET['ototalvalue']);
        $sign = trim($_GET['sign']);

        $attach = trim($_GET['attach']);
        $msg = trim($_GET['msg']);
        $shunfooorderid = trim($_GET['shunfooorderid']);
        $shunfootime = trim($_GET['shunfootime']);

        //������Ϊ������յĲ�������û�иò������򷵻ش���
        if (empty($orderid)) {
            die("opstate=-1");
        }
        if (empty($cardno)) {
            die("opstate=-1");
        }
        if (empty($opstate)) {
            die("opstate=-1");
        }
        if (empty($ovalue)) {
            die("opstate=-1");
        }
        if (empty($ototalvalue)) {
            die("opstate=-1");
        }
        if (empty($attach)) {
            die("opstate=-1");
        }
        if (empty($sign)) {
            die("opstate=-1");
        }



        $sign_text = "orderid={$orderid}&cardno={$cardno}&opstate ={$opstate}&ovalue ={$ovalue}&ototalvalue={$ototalvalue}&attach={$attach}&msg={$msg}" . $this->key;
        $sign_md5 = md5($sign_text);
        if ($sign_md5 != $sign) {
            die("opstate=-2");  //ǩ������ȷ������Э�鷵������
        }
    }

}

?>