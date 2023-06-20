<?php

namespace App\Http\Resources\BookingLapangan;

use App\Http\Resources\Lapangan\LapanganResource;
use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class BookingLapanganResource extends JsonResource
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
            'lapangan' => LapanganResource::make($this->lapangan),
            'opsiPembayaran' => $this->opsiPembayaran,
            'image' => $this->image,
            'status' => $this->status,
            'startTime' => Carbon::parse($this->start_time)->format('HH:mm'),
            'endTime' => Carbon::parse($this->end_time)->format('HH:mm')
        ];
    }
}
