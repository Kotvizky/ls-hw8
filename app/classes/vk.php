<?php

namespace HW8\classes;

class vk
{
    public $myID  = '5984855'; // App ID
    public $secretKey = 'rvbYTjC7ieDpbC1698W0';
    public $tmpKey = '0271199f1391d411ea';

    public $token = "1300a2dcd4f93e4c52ef0af9348a308af210e3c0074f1ba71e4af7133a35a9dd6fbace677fa823dcfc820";

    public $responseJson;
    public $requestDowl;
    public $ArrayInJson;

// Array ( [route] => code [code] => 7de8621dac7a6b548f )


//{"access_token":"703b27304e8646032c4b31b330856c763104242f728761979bb03e6a14a0722d0a90c65fd6bb20ab4f407","expires_in":85387,"user_id":389668174}

//https://oauth.vk.com/access_token?client_id=1&client_secret=H2Pk8htyFD8024mZaPHm&redirect_uri=http://mysite.ru&code=7a6fa4dff77a228eeda56603b8f53806c883f011c40b72630bb50df056f6479e52a


    public function vkTokenRequest(array $options = []): string
    {
        $options  = [
            'client_id' => $this->myID,
            'client_secret' => $this->secretKey,
            'redirect_uri' => 'https://api.vk.com/blank.html',
            'code' => $this->tmpKey,
        ];
        $params = http_build_query($options);
        $url = 'https://oauth.vk.com/access_token?' . $params;
        header("Location: $url");
        exit();
    }


    public function vkGetCode($scope = 'wall'): string
    {
        $scope='friends,wall,offline,photos';//"wall + photo";
        $options  = [
            'client_id' => $this->myID,
            'display' => 'page',
            'redirect_uri' => 'https://api.vk.com/blank.html',
            'scope' => $scope,
            'response_type' => code,
            'v' => '5.63',
        ];

        $params = http_build_query($options);
        $url = 'https://oauth.vk.com/authorize?'. $params;

        header("Location: $url");
        exit();
    }

    public function vkRequest(string $method, array $options = []): string
    {
        $params = http_build_query($options);
        $url = 'https://api.vk.com/method/' . $method . '?' . $params . '&access_token=' . $this->token;
        return $this->push($url);
    }


    public function downloadServer($link, $nameFile)
    {
        $cfile = curl_file_create($nameFile, 'image/jpeg', 'test_name.jpg');
        $curl = curl_init();
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_RETURNTRANSFER => 1,
                CURLOPT_URL => $link,
                CURLOPT_POST => 1,
                CURLOPT_POSTFIELDS => array("photo" => $cfile)
            )
        );
        $this->requestDowl = json_decode(curl_exec($curl));
    }
    //Работаем только с массивом,преобразуем в массив
    public function toArray(){
        $this->ArrayInJson = json_decode($this->responseJson, 1);
        return $this->ArrayInJson;
    }
    //Вывод в json
    public function toJson()
    {
        echo  $this->responseJson;
    }

    private function push($url) : string
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, true);
        curl_setopt($curl, CURLOPT_URL, $url);
        $this->responseJson = curl_exec($curl);
        curl_close($curl);
        return $this->responseJson;
    }

    public function isError()
    {
        $error_msg = $this->toArray()['error']['error_msg'];

        if (isset($error_msg)) {
            return $error_msg;
        } else {
            return false;
        }
    }
}