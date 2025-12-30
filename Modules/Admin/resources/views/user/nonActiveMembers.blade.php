@extends('admin::layouts.master')

@section('title', 'Non Active Members')

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

.deleted-by-badge {
  padding: 5px 12px;
  border-radius: 20px;
  font-weight: 600;
  font-size: 12px;
  text-transform: uppercase;
}
.deleted-by-badge.admin {
  background-color: #fee;
  color: #c33;
}
.deleted-by-badge.user {
  background-color: #eef;
  color: #339;
}
</style>
@endsection

@section('content')
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="page-header">
        <h3><i class="las la-user-plus"></i>Non Active Members</h3>
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
                    <th>Member Number</th>
                    <th>City</th>
                    <th>Region</th>
                    <th>Deleted Date</th>
                    <th>Deleted By</th>
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
                    <td>{{ $user->member_number ?? '—' }}</td>
                    <td>{{ $user->city ?? '—' }}</td>
                    <td>{{ $user->region ?? '—' }}</td>
                    <td>{{ $user->deleted_at ? \Carbon\Carbon::parse($user->deleted_at)->format('d M Y H:i') : '—' }}</td>
                    <td>
                        @if($user->deleted_by)
                            <span class="deleted-by-badge {{ $user->deleted_by }}">{{ ucfirst($user->deleted_by) }}</span>
                        @else
                            <span>—</span>
                        @endif
                    </td>

                    <td class="text-center action-icons">
                      <a href="{{ route('admin.viewuser', $user->id) }}"><i class="fa fa-eye"></i></a>
                    </td>
                  </tr>
                  @empty
                  <tr>
                    <td colspan="11" class="text-center text-muted py-4">No non-active members found.</td>
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
