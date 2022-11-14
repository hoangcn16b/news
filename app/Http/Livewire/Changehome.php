<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\DB;

class Changehome extends Component
{
    public $rowId;
    public $isHome;

    public function mount($rowId, $isHome)
    {
        $this->rowId = $rowId;
        $this->isHome = $isHome;
    }

    public function changeIsHome()
    {
        try {
            $this->isHome = ($this->isHome == 'yes') ? 'no' : 'yes';
            DB::table('category')
                ->where('id', $this->rowId)
                ->update(['is_home' => $this->isHome]);
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

    // public function changeStatus()
    // {
    //     $this->isStatus = ($this->isStatus == 'active') ? 'inactive' : 'active';
    //     DB::table('category')
    //         ->where('id', $this->rowId)
    //         ->update(['status' => $this->isStatus]);
    // }

    public function render()
    {
        return view('livewire.changehome');
    }
}
