@extends('admin::layouts.master')
@section('title', 'Help Us to Do Better')
@section('css')
@endsection
@section('content')
<div class="content-wrapper">
   <div class="content-header">
      <div class="container-fluid">
         <div class="page-header">
            <h3><i class="fas fa-lightbulb"></i> Help Us to Do Better</h3>
         </div>
      </div>
   </div>
   <section class="content">
      <div class="container-fluid">
         <div class="tab-content" id="genderTabsContent">
            <div class="tab-pane fade show active" id="male" role="tabpanel" aria-labelledby="male-tab">
               <div class="card mt-3">
                  <div class="card-body table-responsive">
                     <table class="table table-striped align-middle commontable" >
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>User Name</th>
                                <th>Email</th>
                                <th>Mobile Number</th>
                                <th>Description</th>
                                <th>Date</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($suggestions as $key => $suggestion)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                                    <td>{{ optional($suggestion->user)->first_name }} {{ optional($suggestion->user)->last_name }}</td>
                                    <td>{{ optional($suggestion->user)->email ?? 'N/A' }}</td>
                                    <td>{{ optional($suggestion->user)->country_code ?? '' }} {{ optional($suggestion->user)->mobile_no ?? 'N/A' }}</td>
                                    <td>{{ $suggestion->description ?? '' }}</td>
                                    <td>{{ $suggestion->created_at->format('d M Y H:i:s') ?? '' }}</td>
                                    <td class="text-center">
                                        <a href="javascript:void(0)" class="text-danger delete-suggestion" data-id="{{ $suggestion->id }}">
                                            <i class="fas fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                            @if($suggestions->isEmpty())
                                <tr>
                                    <td colspan="7" class="text-center">No suggestions found.</td>
                                </tr>
                            @endif
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
        $(document).on('click', '.delete-suggestion', function () {
        
            let id = $(this).data('id');
        
            Swal.fire({
                title: 'Are you sure?',
                text: "This suggestion will be permanently deleted!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancelButtonColor: '#6c757d',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
        
                    $.ajax({
                        url: "{{ route('admin.delete.suggestion') }}",
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
                                $("a.delete-suggestion[data-id='"+id+"']")
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
