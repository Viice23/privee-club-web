@extends('admin::layouts.master')
@section('title', 'ðŸ†• New Users')
@section('css')
@endsection
@section('content')
<div class="content-wrapper">
   <div class="content-header">
      <div class="container-fluid">
         <div class="page-header">
            <h3><i class="las la-user-plus"></i> Support Requests</h3>
         </div>
      </div>
   </div>
   <section class="content">
      <div class="container-fluid">
         <div class="tab-content" id="genderTabsContent">
            <!-- ðŸ‘¨ Male Users -->
            <div class="tab-pane fade show active" id="male" role="tabpanel" aria-labelledby="male-tab">
               <div class="card mt-3">
                  <div class="card-body table-responsive">
                     <table class="table table-striped align-middle commontable" >
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>User Name</th>
                                <th>Subject</th>
                                <th>Message</th>
                                <th>Date</th>
                                <th>Status</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($support_request as $key => $val)
                                <tr>
                                    <td>{{ $key+1}}</td>
                                    <td>{{ optional($val->user)->first_name }} {{ optional($val->user)->last_name }}</td>
                                    <td>{{ $val->subject ?? '' }}</td>
                                    <td>{{ $val->message ?? '' }}</td>
                                    <td>{{ $val->created_at->format('d M Y H:i:s') ?? '' }}</td>
                                    <td>
                                        <select class="form-control form-select change-status" data-id="{{ $val->id }}">
                                            <option value="0" {{ $val->status == 0 ? 'selected' : '' }}>New</option>
                                            <option value="1" {{ $val->status == 1 ? 'selected' : '' }}>Checked</option>
                                            <option value="2" {{ $val->status == 2 ? 'selected' : '' }}>Action Taken</option>
                                        </select>
                                    </td>
                                    <td class="text-center">
                                        <a href="javascript:void(0)" class="text-danger delete-report" data-id="{{ $val->id }}">
                                            <i class="fas fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
</div>
@section('script')
    <script>
        $(document).on('change', '.change-status', function () {
            let id = $(this).data('id');
            let status = $(this).val();
        
            $.ajax({
                url: "{{ route('admin.update.support.request.status') }}",
                type: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    id: id,
                    status: status
                },
                success: function (res) {
                    if (res.status) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Status Updated!',
                            text: res.message,
                            timer: 1500,
                            showConfirmButton: false
                        });
                    } else {
                        Swal.fire('Error', res.message, 'error');
                    }
                },
                error: function (xhr) {
                    Swal.fire('Error', 'Something went wrong!', 'error');
                }
            });
        });
    </script>
    <script>
        $(document).on('click', '.delete-report', function () {
        
            let id = $(this).data('id');
        
            Swal.fire({
                title: 'Are you sure?',
                text: "This report will be permanently deleted!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancelButtonColor: '#6c757d',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
        
                    $.ajax({
                        url: "{{ route('admin.support.request.delete') }}",
                        type: "POST",
                        data: {
                            _token: "{{ csrf_token() }}",
                            id: id
                        },
                        success: function (res) {
                            if (res.status) {
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Deleted!',
                                    text: res.message,
                                    timer: 1500,
                                    showConfirmButton: false
                                });
        
                                // Remove row from table
                                $("a.delete-report[data-id='"+id+"']")
                                    .closest('tr')
                                    .fadeOut(400, function(){ $(this).remove(); });
        
                            } else {
                                Swal.fire('Error', res.message, 'error');
                            }
                        },
                        error: function () {
                            Swal.fire('Error', 'Something went wrong!', 'error');
                        }
                    });
        
                }
            });
        
        });
    </script>
@endsection
@endsection