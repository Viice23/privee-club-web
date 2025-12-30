@extends('admin::layouts.master')

@section('title', 'Rated Out Applicants')

@section('css')
<style>

.timer {
    font-weight: bold;
    font-size: 16px;
}
.timer.expired {
  color: #b70000;
}

.timer.green { color: green; }
.timer.orange { color: orange; }
.timer.red { color: red; }
.timer.expired { color: #b70000; }


/* Header Tabs */
.page-header {
  background: linear-gradient(90deg, #f5f2ff, #ebe5ff);
  padding: 18px 25px;
  border-radius: 12px;
  margin-bottom: 20px;
  box-shadow: 0 3px 12px rgba(95, 66, 170, 0.15);
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.page-header h3 {
  color: #5f42aa;
  font-family: 'Poppins', sans-serif;
  font-weight: 600;
  margin: 0;
  display: flex;
  align-items: center;
  gap: 10px;
}
.page-header h3 i {
  color: #7b5cf0;
  font-size: 22px;
}

/* Table Styling */
.table th {
  background: #f3f0ff;
  color: #4b3b93;
  font-weight: 600;
  text-transform: uppercase;
  font-size: 14px;
  border-top: none;
}
.table td {
  vertical-align: middle;
  font-size: 15px;
}
.table img {
  border-radius: 50%;
  height: 60px;
  width: 60px;
  object-fit: cover;
  border: 2px solid #e1dbff;
}

/* Action Icons */
.action-icons i {
  font-size: 18px;
  cursor: pointer;
  transition: 0.3s;
}
.action-icons i.fa-eye { color: #28a745; }
.action-icons i.fa-trash { color: #dc3545; }
.action-icons i:hover { transform: scale(1.2); }

/* Card Shadow */
.card {
  border-radius: 15px;
  box-shadow: 0 4px 18px rgba(0, 0, 0, 0.05);
  border: none;
}

/* Tabs */
.nav-tabs {
  border-bottom: 2px solid #e5e0ff;
}
.nav-tabs .nav-link {
  color: #5f42aa;
  border: none;
  font-weight: 500;
  padding: 10px 25px;
}
.nav-tabs .nav-link.active {
  background: #7b5cf0;
  color: #fff !important;
  border-radius: 8px 8px 0 0;
}

.rating-status {
  padding: 5px 12px;
  border-radius: 20px;
  font-weight: 600;
  font-size: 12px;
  text-transform: uppercase;
}
.rating-status.out {
  background-color: #fee;
  color: #c33;
}
</style>
@endsection

@section('content')
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="page-header">
        <h3><i class="las la-user-plus"></i>Rated Out Applicants</h3>
      </div>
    </div>
  </div>

  <section class="content">
    <div class="container-fluid">
      

      <div class="tab-content" id="genderTabsContent">
        
        <!-- Male Users -->
        <div class="tab-pane fade show active" id="male" role="tabpanel" aria-labelledby="male-tab">
          <div class="card mt-3">
            <div class="card-body table-responsive">
                
               <div class="form-group mb-3">
                    <label for="genderFilter" class="font-weight-bold">Filter by Gender:</label>
                    <select id="genderFilter" class="form-select" style="width: 200px;">
                        <option value="">All Users</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
                
              <table class="table table-striped align-middle commontable" >
                  
                  
                <thead>
                  <tr>
                    <th>S.No</th>
                    <th>Member Number</th>
                    <th>Profile</th>
                    <th>User Name</th>
                    <th>Gender</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Registered On</th>
                    <th>Rating Status</th>
                    <th class="text-center">Action</th>
                  </tr>
                </thead>
                <tbody>
                  @forelse($Users as $index => $user)
                  <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $user->member_number ?? '—' }}</td>
                    <td>
                        @php
                            $profileImg = optional($user->profile)->profile_image 
                                ? asset(optional($user->profile)->profile_image) 
                                : asset('public/uploads/blankImage/blank.jpg');
                        @endphp
                        
                        <img src="{{ $profileImg }}"
                             alt="Profile Image"
                             style="height:80px; width:80px; border-radius:50%; object-fit:cover; border:2.5px solid #e1dbff; margin:0 auto;">

                    </td>
                    <td>{{ $user->profile_name ?? '—' }}</td>
                    <td>{{ $user->gender ?? '—' }}</td>
                    <td>{{ $user->email ?? '—' }}</td>
                    <td>{{ $user->mobile_no ?? '—' }}</td>
                    <td>{{ $user->created_at ? $user->created_at->format('d M Y') : '—' }}</td>
                    <td>
                        <span class="rating-status out">{{ $user->profie_rating_status ?? 'OUT' }}</span>
                    </td>

                    <td class="text-center action-icons">
                      <a href="{{ route('admin.viewuser', $user->id) }}"><i class="fa fa-eye"></i></a>
                      <a href="javascript:void(0)" class="delete-btn" data-id="{{ $user->id }}"><i class="fa fa-trash"></i></a>
                    </td>
                  </tr>
                  @empty
                  <tr>
                    <td colspan="10" class="text-center text-muted py-4">No rated out applicants found.</td>
                  </tr>
                  @endforelse
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
$(document).on('click', '.delete-btn', function () {
  let userId = $(this).data('id');
  Swal.fire({
    title: 'Are you sure?',
    text: 'This will permanently delete the user!',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#d33',
    cancelButtonColor: '#6c757d',
    confirmButtonText: 'Yes, delete it!'
  }).then((result) => {
    if (result.isConfirmed) {
      $.ajax({
        url: "{{ route('destroy', ['id' => ':id']) }}".replace(':id', userId),
        type: "DELETE",
        data: { _token: "{{ csrf_token() }}" },
        success: function (response) {
          if (response.status) {
            Swal.fire('Deleted!', response.message, 'success');
            $(`.delete-btn[data-id="${userId}"]`).closest('tr').fadeOut();
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
<script>
    $(document).ready(function () {
        let table = $('.commontable').DataTable();

        $('#genderFilter').on('change', function () {
            let selectedGender = $(this).val();
            if (selectedGender === "") {
                table.column(4).search("").draw();  // Reset filter
            } else {
                table.column(4).search('^' + selectedGender + '$', true, false).draw(); // Exact match
            }
        });
    });
</script>

@endsection
