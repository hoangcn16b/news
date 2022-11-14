<?php

namespace App\Http\Livewire;

use App\Http\Livewire\Notification;
use Livewire\Component;
use Illuminate\Support\Facades\DB;

class Special extends Component
{
    public $rowId;
    public $thisSpecial;
    public $inTable;
    public $thisCol;
    public $fieldName;

    public function mount($thisCol, $rowId, $thisSpecial, $inTable)
    {
        $this->rowId = $rowId;
        $this->thisCol = $thisCol;
        $this->thisSpecial = $thisSpecial;
        $this->inTable = $inTable;
    }

    public function changeSpecial()
    {
        try {
            $this->thisSpecial = ($this->thisSpecial == 'active') ? 'inactive' : 'active';
            DB::table($this->inTable)
                ->where('id', $this->rowId)
                ->update([$this->thisCol => $this->thisSpecial]);
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
        return view('livewire.special');
    }
}
