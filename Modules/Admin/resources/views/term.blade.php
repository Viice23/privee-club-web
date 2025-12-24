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
    .nav-sidebar .nav-item {
        font-size: 15px;
    }
</style>
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid"></div>
  </div>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title faqq">Edit Terms & Condition</h3>
            </div>
            <div class="card-body">
              <form action="{{ route('admin.term', base64_encode($term->id)) }}" method="POST">
                @csrf
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group mb-3">
                      <label class="col-form-label">Description</label>
                      <textarea class="form-control summernote" name="description" rows="15">{!! $term->description !!}</textarea>
                      @if($errors->has('description'))
                        <span class="text-danger">{{ $errors->first('description') }}</span>
                      @endif
                    </div>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary ms-auto" style="background-color:#198754f5; border: none;">Submit</button>
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
<script type="text/javascript">
$(document).ready(function() {
    $('.summernote').summernote({
        height: 300,
        placeholder: 'Write Terms & Conditions here...'
    });
});
</script>
@endsection
