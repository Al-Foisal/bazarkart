<?php

namespace App\Http\Controllers\Backend\MainMenu;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class SubcategoryController extends Controller {
    public function subcategory() {
        $subcategories = Subcategory::with('category')->get();

        return view('backend.main_menu.subcategory.index', compact('subcategories'));
    }

    public function createSubcategory() {
        $categories = Category::where('status', 1)->get();

        return view('backend.main_menu.subcategory.create', compact('categories'));
    }

    public function storeSubcategory(Request $request) {
        $validator = Validator::make($request->all(), [
            'name'  => 'required',
            'image' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all())->withInput();
        }

// dd($request->all());

        if ($request->hasFile('image')) {

            $image_file = $request->file('image');

            if ($image_file) {

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/main_menu/subcategory/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name    = $img_gen . '.' . $image_ext;
                $final_name1 = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
            }

        }

        $store_data              = new Subcategory();
        $store_data->category_id = $request->category_id;
        $store_data->name        = $request->name;
        $store_data->status      = 1;
        $store_data->image       = $final_name1;
        $store_data->details     = $request->details;
        $store_data->save();

        return redirect()->route('admin.subcategory')->withToastSuccess('Subcategory added successfully!!');
    }

    public function editSubcategory($id) {
        $subcategory = Subcategory::where('id', $id)->first();
        $categories  = Category::where('status', 1)->get();

        return view('backend.main_menu.subcategory.edit', compact('subcategory', 'categories'));
    }

    public function updateSubcategory(Request $request, $id) {
        $validator = Validator::make($request->all(), [
            'name'  => 'required',
            'image' => 'nullable|image',
        ]);

        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all())->withInput();
        }

        $subcategory = Subcategory::findOrFail($id);

        if ($request->hasFile('image')) {

            $image_file = $request->file('image');

            if ($image_file) {

                $image_path = public_path($subcategory->image);

                if (File::exists($image_path)) {
                    File::delete($image_path);
                }

                $img_gen   = hexdec(uniqid());
                $image_url = 'images/main_menu/subcategory/';
                $image_ext = strtolower($image_file->getClientOriginalExtension());

                $img_name    = $img_gen . '.' . $image_ext;
                $final_name1 = $image_url . $img_gen . '.' . $image_ext;

                $image_file->move($image_url, $img_name);
                $subcategory->update(
                    [
                        'image' => $final_name1,
                    ]
                );
            }

        }

        $subcategory->update([
            'category_id' => $request->category_id,
            'name'        => $request->name,
            'details'     => $request->details,
        ]);

        return redirect()->route('admin.subcategory')->withToastSuccess('Subcategory updated successfully!!');
    }

    public function activeSubcategory(Request $request, $id) {
        $subcategory = Subcategory::findOrFail($id);

        $subcategory->status = 1;
        $subcategory->save();

        return redirect()->route('admin.subcategory')->withToastSuccess('Subcategory activated successfully!!');
    }

    public function inactiveSubcategory(Request $request, $id) {
        $subcategory = Subcategory::findOrFail($id);

        $subcategory->status = 0;
        $subcategory->save();

        return redirect()->route('admin.subcategory')->withToastSuccess('Subcategory inactivated successfully!!');
    }

}
