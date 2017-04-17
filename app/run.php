<?php
require "./vendor/autoload.php";
require "config.php";

use HW8\Classes\Client;
use HW8\Classes\Api;

//define('MY_ID','389668174');

define('MY_ID','389668174');


$uri = strtolower($_SERVER['REQUEST_URI']);

if ($_SERVER['REQUEST_METHOD'] == "GET") {
    switch (true) {

        case $_GET['code']:
            print_r($_GET);
            break;

        case (substr($uri, 0, 5) == '/code'):
            $vk = new \HW8\Classes\vk();
            $vk->vkGetCode();
            break;

        case (substr($uri, 0, 6) == '/token'):
            $vk = new \HW8\Classes\vk();
            $vk->vkTokenRequest();
            break;

        case (substr($uri, 0, 5) == '/api/'):
            $apiRequest = substr($uri, strripos($_SERVER['REQUEST_URI'], 'api/') + 4);
            $routes = explode('/', $apiRequest);
            if (count($routes) > 0) {
                echo Api::get($routes[0], $routes[1]);
            }
            break;

        case (substr($uri, 0, 5)) == '/vk':

        default :
            showPage(['message' => ''] );
    }

} elseif (($_SERVER['REQUEST_METHOD'] == "POST") && isset($_FILES['postFile']['tmp_name'])) {

    $vk = new \HW8\Classes\vk;

    $error_msg = '';

    do {
        $vk->vkRequest('photos.getWallUploadServer');

        if ($vk->isError()) {
            $error_msg = "photos.getWallUploadServer: '{$vk->isError()}'";
            break;
        }
        $linkForDownload = $vk->toArray()['response']['upload_url'];

        $vk->downloadServer(
            $linkForDownload, $_FILES['postFile']['tmp_name']
        );

        $vk->vkRequest(
            'photos.saveWallPhoto',
            [
                'user_id' => MY_ID,
                'photo' => $vk->requestDowl->photo,
                'server' => $vk->requestDowl->server,
                'hash' => $vk->requestDowl->hash,
            ]
        );

        if ($vk->isError()) {
            $error_msg = "photos.saveWallPhoto: '{$vk->isError()}'";
            break;
        }

        $optionsWall = [
            'owner_id' => MY_ID,
            'message' => 'New photo!!!',
            'attachments' => $vk->ArrayInJson['response'][0]['id'],

        ];

        $vk->vkRequest('wall.post', $optionsWall);

        if ($vk->isError()) {
            $error_msg = "wall.post: '{$vk->isError()}'";
            break;
        }

    } while(false);

    if ($error_msg) {
        showPage([ 'message' => $error_msg ]);
    } else {
        showPage([ 'message' => "response: {$vk->toArray()['response']['post_id']}" ]);
    }

}

function showPage($data)
{
    $tplText = file_get_contents(__DIR__ . "/tpl/client.tpl");
    foreach ($data as $key => $value) {
        $tplText = mb_ereg_replace('\{\s*' . $key . '\s*\}', $value, $tplText);
    }
    echo $tplText;
}


