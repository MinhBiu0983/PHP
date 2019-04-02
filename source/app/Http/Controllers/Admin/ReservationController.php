<?php

namespace App\Http\Controllers\Admin;

use App\Notifications\ReservationConfirmed;
use App\Reservation;

use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Notification;

class ReservationController extends Controller
{
    public function index(){
        $reservations = Reservation::all();
        return view('admin.reservation.index',compact('reservations'));
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function status($id){
        $reservation = Reservation::find($id);
        $reservation->status = true;
        $reservation->save();
        /*Notification::route('mail', $reservation->email)
            ->notify(new ReservationConfirmed());*/
      //  Toastr::success('Reservation successfully confirmed','Success',["positionClass"=>"toast-top-right"]);
        return redirect()->back()->with('successMsg','Reservation Successfully Confirmed');
    }
    public function destroy ($id){
        $reservation = Reservation::find($id);
        $reservation->delete();
        return redirect()->back()->with('successMsg','Reservation Successfully Delete');
    }
}
