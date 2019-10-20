<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\LinhVuc;
class LinhVucController extends Controller
{
    public function getAllLinhVuc(){
        $linhVuc = LinhVuc::all();
        $result = [
            'success' => true,
            'linh_vuc' => $linhVuc
        ];
    
        return response() -> json($result);
    }

    public function getLinhVucByID($id)
    {
        $linhVuc = LinhVuc::find($id);
        if($linhVuc == null){
            return response()->json(['success'=>false]);
        }    
        $result = [
            'success' => true,
            'linh_vuc' => $linhVuc
        ];
        return response() -> json($result);
    }
}
