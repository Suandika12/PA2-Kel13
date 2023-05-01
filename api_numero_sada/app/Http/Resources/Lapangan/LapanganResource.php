<?php

namespace App\Http\Resources\Lapangan;

use Illuminate\Http\Resources\Json\JsonResource;

class LapanganResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'description' => $this->description,
            'image' => env('APP_URL') . '/images/lapangan/' . $this->image,
        ];
    }
}
