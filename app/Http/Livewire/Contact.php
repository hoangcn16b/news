<?php

namespace App\Http\Livewire;

use App\Http\Livewire\Notification;
use Livewire\Component;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;

class Contact extends Component
{
    public $rowId;
    public $isStatus;
    public $inTable;

    public function mount($rowId, $isStatus, $inTable)
    {
        $this->rowId = $rowId;
        $this->isStatus = $isStatus;
        $this->inTable = $inTable;
    }

    public function changeContact()
    {
        try {
            $this->isStatus = ($this->isStatus == 'active') ? 'inactive' : 'active';
            DB::table($this->inTable)
                ->where('id', $this->rowId)
                ->update(['status' => $this->isStatus]);
            $this->dispatchBrowserEvent(
                'alert',
                ['type' => 'success',  'message' => 'Thay đổi thành công!']
            );
        } catch (\Throwable $th) {
            $this->dispatchBrowserEvent(
                'alert',
                ['type' => 'error',  'message' => 'Thay đổi thất bại!']
            );
        }

        // toastr()->success('Thay đổi thành công!');
        // $this->dispatchBrowserEvent(
        //     'alert',
        //     ['type' => 'success',  'message' => 'Changed Successfully!']
        // );
    }

    public function render()
    {
        return view('livewire.contact');
    }
}
