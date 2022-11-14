<?php

namespace App\Http\Livewire;

use App\Http\Livewire\Notification;
use Livewire\Component;
use Illuminate\Support\Facades\DB;

class Status extends Component
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

    public function changeStatus()
    {
        try {
            $this->isStatus = ($this->isStatus == 'active') ? 'inactive' : 'active';
            DB::table($this->inTable)
                ->where('id', $this->rowId)
                ->update(['status' => $this->isStatus]);
            // toastr()->success('Thay đổi thành công!');
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
    }

    public function render()
    {
        return view('livewire.status');
    }
}
