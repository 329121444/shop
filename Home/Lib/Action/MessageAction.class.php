<?php

class MessageAction extends Action {
    public function saveMessage(){

        $ip=get_client_ip();
        echo $ip;
    }

}