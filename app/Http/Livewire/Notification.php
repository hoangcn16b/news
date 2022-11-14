<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Notification extends Component
{
    public function alertSuccess()
    {
        $this->dispatchBrowserEvent(
            'alert',
            ['type' => 'success',  'message' => 'User Changed Successfully!']
        );
        $this->render();
    }

    public function render()
    {
        return view('livewire.notification');
    }
}
