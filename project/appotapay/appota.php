<?php
class AppotaPay
{
    private $API_URL = 'https://api.appotapay.com/';
    private $API_KEY;
    private $SECRET_KEY;
    private $LANG;
    private $VERSION = 'v1';
    private $METHOD = 'POST';

    public function __construct($api_key, $lang, $secret_key)
    {
        // set params
        $this->API_KEY = $api_key;
        $this->LANG = $lang;
        $this->SECRET_KEY = $secret_key;
    }

    /*
    * function card charging
    */
    public function cardCharging($developer_trans_id, $code, $serial, $vendor, $state, $target)
    {
        // build api url
        // --/sandbox
        $api_url = $this->API_URL.$this->VERSION.'/services/card_charging?api_key='.$this->API_KEY.'&lang='.$this->LANG;
        // build params
        $params = array(
            'developer_trans_id' => $developer_trans_id,
            'card_code' => $code,
            'card_serial' => $serial,
            'vendor' => $vendor,
            'state' => $state, // Optional param
            'target' => $target // Optional param
        );

        // request charging
        $result = $this->makeRequest($api_url, $params, $this->METHOD);
        // decode result
        $result = json_decode($result);

        // check result 
        if (isset($result->error_code) && $result->error_code === 0) { // charging success
           return array(
             'success' => true,
             'amount' => $result->data->amount,
             'transaction_id' => $result->data->transaction_id,
             'developer_trans_id' => $result->data->developer_trans_id
           );
        } else {
            return array(
             'success' => false,
             'error_code' => $result->error_code,
             'message' => $result->message
           );
         }
    }

    /*
    * function check transantion status
    * @param: developer_trans_id
    */
    public function checkTransaction($developer_trans_id)
    {
        // build api url
        $api_url = $this->API_URL.$this->VERSION.'/services/check_transaction_status?api_key='.$this->API_KEY.'&lang='.$this->LANG;
        // build params
        $params = array(
            'developer_trans_id' => $developer_trans_id,
            'transaction_type' => 'CARD'
        );

        // request check transaction
        $result = $this->makeRequest($api_url, $params, $this->METHOD);
        // decode result
        $result = json_decode($result);

        // check result 
        if (isset($result->error_code) && $result->error_code === 0) { // transaction success
            $transaction_id = $result->data->transaction_id;
            $developer_trans_id = $result->data->developer_trans_id;
            $amount = $result->data->amount;
        } else { // trasaction fail 
            return array(
                    'error_code' => $result->error_code,
                    'message' => $result->message
            );
        }
    }

    /*
    * function verify hash IPN for card transaction
    * @param: pass your var $_POST that your server received from AppotaPay's server
    */
    public function verifyCardTransactionIpnHash($params)
    {
        // get params
        $status = $params['status'];
        $amount = $params['amount'];
        $card_code = $params['card_code'];
        $card_serial = $params['card_serial'];
        $vendor = $params['card_vendor'];
        $country_code = $params['country_code'];
        $currency = $params['currency'];
        $sandbox = $params['sandbox'];
        $state = $params['state'];
        $target = $params['target'];
        $transaction_id = $params['transaction_id'];
        $developer_trans_id = $params['developer_trans_id'];
        $transaction_type = $params['transaction_type'];
        $hash = $params['hash'];

        // check hash
        $check_hash = md5($amount . $card_code . $card_serial . $vendor . $country_code . $currency . $developer_trans_id . $sandbox. $state . $status . $target . $transaction_id . $transaction_type . $this->SECRET_KEY);
        if ($check_hash !== $hash) {
            // return check hash fail
        }

        // check transaction status
        if ($status === 1) {
            // return transaction success 
            return array(
                    'error_code' => 0,
                    'amount' => $amount
            );
        } else {
            return array(
                    'error_code' => 1,
                    'amount' => 0
            );
        }
    }

    /*
     * function make request
     * url : string | url request
     * params : array | params request
     * method : string(POST,GET) | method request
     */
    public function makeRequest($url, $params, $method = 'POST')
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60); // Time out 60s
        curl_setopt($ch, CURLOPT_TIMEOUT, 60); // connect time out 60s

        $result = curl_exec($ch);
        $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        if (curl_error($ch)) {
            return false;
        }
        
        if ($status != 200) {
            curl_close($ch);
            return false;
        }
        // close curl
        curl_close($ch);
        
        return $result;
    }
    
}

?>