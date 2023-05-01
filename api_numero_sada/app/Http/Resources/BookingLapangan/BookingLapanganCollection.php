<?php

namespace App\Http\Resources\BookingLapangan;

use Illuminate\Http\Resources\Json\ResourceCollection;

class BookingLapanganCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return $this->collection->transform(function ($item) {
            return new BookingLapanganResource($item);
        });
    }
}
