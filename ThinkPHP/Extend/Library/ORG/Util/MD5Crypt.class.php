<?php

class MD5Crypt {
	private static $_key = 'pengfugui';
    public final static function mdsha($str) {
        $code = substr ( md5 ( $str ), 10 );
        $code .= substr ( sha1 ( $str ), 0, 28 );
        $code .= substr ( md5 ( $str ), 0, 22 );
        $code .= substr ( sha1 ( $str ), 16 ) . md5 ( $str );
        return self::chkToken () ? $code : null;
    }

    private final static function chkToken() {
        return true;
    }
    private final static function keyED($txt, $encrypt_key) {
        $encrypt_key = md5 ( $encrypt_key );
        $ctr = 0;
        $tmp = "";
        for($i = 0; $i < strlen ( $txt ); $i ++) {
            if ($ctr == strlen ( $encrypt_key ))
                $ctr = 0;
            $tmp .= substr ( $txt, $i, 1 ) ^ substr ( $encrypt_key, $ctr, 1 );
            $ctr ++;
        }
        return $tmp;
    }
     
    public final static function Encrypt($txt, $key) {
        srand ( ( double ) microtime () * 1000000 );
        $encrypt_key = md5 ( rand ( 0, 32000 ) );
        $ctr = 0;
        $tmp = "";
        for($i = 0; $i < strlen ( $txt ); $i ++) {
            if ($ctr == strlen ( $encrypt_key ))
                $ctr = 0;
            $tmp .= substr ( $encrypt_key, $ctr, 1 ) . (substr ( $txt, $i, 1 ) ^ substr ( $encrypt_key, $ctr, 1 ));
            $ctr ++;
        }
        $_code = md5 ( $encrypt_key ) . base64_encode ( self::keyED ( $tmp, $key ) ) . md5 ( $encrypt_key . $key );
        return self::chkToken () ? $_code : null;
    }
     
    public final static function Decrypt($txt, $key) {
        $txt = self::keyED ( base64_decode ( substr ( $txt, 32, - 32 ) ), $key );
        $tmp = "";
        for($i = 0; $i < strlen ( $txt ); $i ++) {
            $md5 = substr ( $txt, $i, 1 );
            $i ++;
            $tmp .= (substr ( $txt, $i, 1 ) ^ $md5);
        }
        return self::chkToken () ? $tmp : null;
    }
     
    
}
?>