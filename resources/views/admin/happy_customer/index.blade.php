@extends('admin.master')

@section('content')
<div class="container-fluid mt-3">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Manage Happy Customers</h3>
                </div>
            </div>
        </div>
    </div>

    {{-- Success Message --}}
    @if(session('success'))
        <div class="alert alert-success mt-3">
            {{ session('success') }}
        </div>
    @endif

    {{-- Upload Form --}}
    <div class="card mt-3">
        <div class="card-header">Upload New Image</div>
        <div class="card-body">
            <form action="{{ route('admin.happy_customer.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="image">Choose Image</label>
                    <input type="file" name="image" class="form-control" required>
                    @error('image')
                        <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
                <button type="submit" class="btn btn-primary mt-3">Upload</button>
            </form>
        </div>
    </div>

    {{-- Image List --}}
    <div class="card mt-4">
        <div class="card-header">Uploaded Images</div>
        <div class="card-body">
            <div class="row">
                @forelse($customers as $customer)
                    <div class="col-md-3 mb-3 text-center">
                        <img src="{{ asset('storage/' . $customer->image) }}" alt="Customer Image" class="img-fluid img-thumbnail" style="height: 250px; object-fit: cover;">
                        
                        <a href="{{ route('admin.happy_customer.destroy', $customer->id) }}" 
                           class="btn btn-danger btn-sm mt-2" 
                           onclick="return confirm('Are you sure you want to delete this image?');">
                           Delete
                        </a>
                    </div>
                @empty
                    <div class="col-12">
                        <p class="text-center">No images found. Please upload one.</p>
                    </div>
                @endforelse
            </div>
        </div>
    </div>
</div>
@endsection