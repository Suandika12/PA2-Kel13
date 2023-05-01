<?php

namespace App\Http\Resources\Lapangan;

use Illuminate\Http\Resources\Json\ResourceCollection;

class LapanganCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return $this->collection->transform(function ($lapangan) {
            return new LapanganResource($lapangan);
        });
    }
}
