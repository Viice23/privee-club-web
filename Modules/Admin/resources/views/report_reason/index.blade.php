@extends('admin::layouts.master')
@section('title', 'ðŸ†• New Users')
@section('css')
@endsection
@section('content')
<div class="content-wrapper">
   <div class="content-header">
      <div class="container-fluid">
         <div class="page-header" >
            <div class="container-fluid d-flex justify-content-between align-items-center">
                <h3><i class="las la-user-plus"></i>Report Reasons</h3>
                <button class="btn btn-primary">
                    <a href="{{ route('admin.add.update.reasons') }}" class="back-btn">Add+</a>
                </button>
             </div>
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
                                <th>Report Reasons</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                    
                        <tbody>
                            @foreach($report_reason as  $key => $val)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $val->report_reason ?? '' }}</td>
                                    <td class="text-center">
                                         <a href="{{ route('admin.add.update.reasons', base64_encode($val->id)) }}" class="text-warning">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                        <a href="javascript:void(0)" 
                                           class="text-danger delete-reason" 
                                           data-id="{{ base64_encode($val->id) }}">
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
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.13.8/js/jquery.dataTables.min.js"></script>
<!-- Optional Bootstrap 5 integration -->
<script src="https://cdn.datatables.net/1.13.8/js/dataTables.bootstrap5.min.js"></script>
<!-- JS: SweetAlert Delete -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    $(document).on('click', '.delete-reason', function () {
        let id = $(this).data('id');
    
        Swal.fire({
            title: 'Are you sure?',
            text: 'This reason will be permanently deleted!',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#6c757d',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
    
            if (result.isConfirmed) {
    
                $.ajax({
                    url: "{{ route('admin.report.reason.delete', ':id') }}".replace(':id', id),
                    type: "DELETE",
                    data: { _token: "{{ csrf_token() }}" },
    
                    success: function (response) {
                        if (response.status) {
                            Swal.fire('Deleted!', response.message, 'success');
                            $(`.delete-reason[data-id="${id}"]`).closest('tr').fadeOut();
                        } else {
                            Swal.fire('Error!', response.message, 'error');
                        }
                    },
    
                    error: function () {
                        Swal.fire('Error!', 'Something went wrong.', 'error');
                    }
                });
    
            }
        });
    
    });
</script>
@endsection