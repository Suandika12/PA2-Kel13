<?php

namespace App\Http\Controllers;

use App\Models\Lapangan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LapanganController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lapangan = Lapangan::all();
        return view('pages.lapangan.index', compact('lapangan'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.lapangan.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|regex:/^[a-zA-Z\s]+$/',
            'description' => 'required|regex:/^[a-zA-Z\s]+$/',
            'avatar' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()->first(),
            ]);
        }

        $image = $request->file('avatar');
        $new_name = rand() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('images/lapangan'), $new_name);

        $request->merge([
            'image' => $new_name,
        ]);

        Lapangan::create($request->all());

        return response()->json([
            'status' => 'success',
            'message' => 'Lapangan created successfully',
            'redirect' => route('lapangan.index')
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Lapangan  $lapangan
     * @return \Illuminate\Http\Response
     */
    public function show(lapangan $lapangan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\lapangan  $lapangan
     * @return \Illuminate\Http\Response
     */
    public function edit(Lapangan $lapangan)
    {
        return view('pages.lapangan.edit', compact('lapangan'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\lapangan  $lapangan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lapangan $lapangan)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|regex:/^[a-zA-Z\s]+$/',
            'description' => 'required|regex:/^[a-zA-Z\s]+$/',
            'avatar' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()->first(),
            ]);
        }

        if ($request->hasFile('avatar')) {
            $image_path = public_path('images/lapangan/' . $lapangan->image);
            if (file_exists($image_path)) {
                unlink($image_path);
            }
            $image = $request->file('avatar');
            $new_name = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/lapangan'), $new_name);

            $request->merge([
                'image' => $new_name,
            ]);
        }

        $lapangan->update($request->all());

        return response()->json([
            'status' => 'success',
            'message' => 'Lapangan updated successfully',
            'redirect' => route('lapangan.index')
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\lapangan  $lapangan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lapangan $lapangan)
    {
        $image_path = public_path('images/lapangan/' . $lapangan->image);
        if (file_exists($image_path)) {
            unlink($image_path);
        }

        $lapangan->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Lapangan deleted successfully',
        ]);
    }
}
