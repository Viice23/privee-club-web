@extends('admin::layouts.master')
@section('content')

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>

<!-- Bootstrap + Popper -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<!-- Summernote -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<style>
    .note-editor.note-frame {
        border-radius: 10px;
    }
    .note-editable {
        min-height: 400px;
    }
    .nav-sidebar .nav-item {
        font-size: 15px;
    }
</style>

<div class="content-wrapper">
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Edit Privacy Policy</h3>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('admin.privacy', base64_encode($privacy->id ?? 0)) }}" method="POST">
                                @csrf
                                <div class="form-group mb-3">
                                    <label class="col-form-label">Privacy Policy</label>
                                    <textarea class="form-control summernote" name="privacy" rows="15">{!! $privacy->privacy_policy ?? '' !!}</textarea>
                                    @if($errors->has('privacy'))
                                        <span class="text-danger">{{ $errors->first('privacy') }}</span>
                                    @endif
                                </div>
                                <button type="submit" class="btn btn-success" style="border:none;">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection

@section('script')
<script>
$(document).ready(function() {
    $('.summernote').summernote({
        height: 400,
        placeholder: 'Write your Privacy Policy here...',
        toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['fontsize', 'color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['insert', ['link']],
            ['view', ['fullscreen', 'codeview']]
        ]
    });
});
</script>
@endsection
