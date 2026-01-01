@extends('admin::layouts.master')

@section('css')
<style>
/* 💠 Gorgeous Animated Tabs */
.custom-tabs {
  display: flex;
  justify-content: center;
  border: none;
  gap: 15px;
  margin-bottom: 30px;
  background: linear-gradient(90deg, #f7f4ff, #ebe5ff);
  border-radius: 14px;
  padding: 12px 0;
  box-shadow: 0 4px 15px rgba(95, 66, 170, 0.2);
}

.custom-tabs .nav-link {
  position: relative;
  font-family: 'Poppins', sans-serif;
  font-size: 18px;
  font-weight: 600;
  color: #5f42aa;
  background: #fff;
  border: 2px solid #cfc3ff;
  border-radius: 12px;
  padding: 14px 35px;
  transition: all 0.3s ease-in-out;
  letter-spacing: 0.5px;
  text-transform: capitalize;
}

.custom-tabs .nav-link:hover {
  background: linear-gradient(135deg, #6d50cf, #8b6df8);
  color: #fff;
  transform: translateY(-4px);
  box-shadow: 0 6px 20px rgba(95, 66, 170, 0.4);
}

.custom-tabs .nav-link.active {
  background: linear-gradient(135deg, #5f42aa, #7b5cf0, #a48fff);
  color: #fff;
  font-weight: 700;
  font-size: 19px;
  border: none;
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(95, 66, 170, 0.5);
}

/* ✨ Glowing border animation for active tab */
.custom-tabs .nav-link.active::after {
  content: "";
  position: absolute;
  inset: -2px;
  border-radius: 14px;
  background: linear-gradient(45deg, #fff, #d1c0ff, #a68eff, #fff);
  z-index: -1;
  filter: blur(3px);
  animation: glowBorder 3s linear infinite;
}

@keyframes glowBorder {
  0% { opacity: 0.7; }
  50% { opacity: 1; }
  100% { opacity: 0.7; }
}

/* 💫 Emoji gentle bounce */
.custom-tabs .nav-link:hover {
  animation: pulse 0.6s ease-in-out;
}

@keyframes pulse {
  0% { transform: scale(1); }
  50% { transform: scale(1.05); }
  100% { transform: scale(1); }
}

.switch {
  position: relative;
  display: inline-block;
  width: 40px;
  height: 22px;
}
.switch input { opacity: 0; width: 0; height: 0; }
.slider {
  position: absolute; cursor: pointer; top: 0; left: 0; right: 0; bottom: 0;
  background-color: #dc3545;
  transition: .4s;
  border-radius: 22px;
}
.slider:before {
  position: absolute; content: "";
  height: 16px; width: 16px; left: 3px; bottom: 3px;
  background-color: white;
  transition: .4s; border-radius: 50%;
}



input:checked + .slider { background-color: #28a745; }
input:checked + .slider:before { transform: translateX(18px); }



</style>
@endsection
@section('content')
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid"></div>
  </div>

  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header d-flex justify-content-between align-items-center">
              <h3 class="card-title">Users Dashboard</h3>
            </div>

                        <div class="card-body">
            
            <ul class="nav nav-tabs custom-tabs" id="userTabs" role="tablist">
                
                
            <li class="nav-item">
                <a class="nav-link" id="new-tab" data-toggle="tab" href="#new" role="tab">
                  New Applicants
                </a>
              </li>
              
                
                
              <li class="nav-item">
                <a class="nav-link active" id="beautiful-tab" data-toggle="tab" href="#beautiful" role="tab">
                  Most Beautiful Members
                </a>
              </li>    
                
                
                
              <!--<li class="nav-item">-->
              <!--  <a class="nav-link" id="popular-tab" data-toggle="tab" href="#popular" role="tab">-->
              <!--     Popular Users-->
              <!--  </a>-->
                
              <!--</li>-->
              

   
              
            </ul>

              <!-- Tab Content -->
              <div class="tab-content mt-3" id="userTabsContent">

                <!-- MOST BEAUTIFUL -->
                <div class="tab-pane fade show active" id="beautiful" role="tabpanel">
                  <table class="table table-striped" style="width:100%">
                    <thead>
                      <tr>
                        <th>S.No</th>
                        <th>User id</th>
                        
                        <th>Profile Picture</th>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>Mobile Number</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($mostBeautifulUsers as $index => $user)
                      <tr>
                        <td>{{ $index + 1 }}</td>
                         <td>{{ $user->id}}</td>
                        
                        
                        <td>
                            @if ($user->images->isNotEmpty() && $user->images->first()->profile_image)
                                <img src="{{ asset($user->images->first()->profile_image) }}" 
                                     style="border-radius: 60%; object-fit: cover; height: 80px; width: 80px;">
                            @else
                                <img src="{{ asset('uploads/blankImage/blank.jpg') }}" 
                                     style="height: 70px; width: 70px; border-radius: 50%;">
                            @endif
                        </td>
                                            
                        
                        <td>{{ $user->profile_name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->mobile_no }}</td>
                        <td class="text-center">
                          <a href="{{ route('admin.viewuser', $user->id) }}" style="color: green; margin-right: 10px;">
                            <i class="fa fa-eye"></i>
                          </a>
                          <a href="javascript:void(0)" class="delete-btn" data-id="{{ $user->id }}" style="color: red;">
                            <i class="fa fa-trash"></i>
                          </a>
                        </td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>

                <!-- NEW APPLICANTS -->
                <div class="tab-pane fade" id="new" role="tabpanel">
                  <table class="table table-striped" style="width:100%">
                    <thead>
                      <tr>
                        <th>S.No</th>
                        <th>User id</th>
                        <th>Profile Picture</th>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>Mobile Number</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($newApplicants as $index => $user)
                      <tr>
                        <td>{{ $index + 1 }}</td>
                       <td>{{ $user->id}}</td>
                        
                        
                      <td>
                            @if ($user->images->isNotEmpty() && $user->images->first()->profile_image)
                                <img src="{{ asset($user->images->first()->profile_image) }}" 
                                     style="border-radius: 60%; object-fit: cover; height: 80px; width: 80px;">
                            @else
                                <img src="{{ asset('uploads/blankImage/blank.jpg') }}" 
                                     style="height: 70px; width: 70px; border-radius: 50%;">
                            @endif
                        </td>
                        
                        <td>{{ $user->profile_name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->mobile_no }}</td>
                        <td class="text-center">
                          <a href="{{ route('admin.viewuser', $user->id) }}" style="color: green; margin-right: 10px;">
                            <i class="fa fa-eye"></i>
                          </a>
                          <a href="javascript:void(0)" class="delete-btn" data-id="{{ $user->id }}" style="color: red;">
                            <i class="fa fa-trash"></i>
                          </a>
                        </td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
              </div> <!-- tab-content -->

            </div> <!-- card-body -->
          </div> <!-- card -->
        </div>
      </div>
    </div>
  </section>
</div>



<script>
$(document).on('click', '.delete-btn', function () {
    let userId = $(this).data('id');
    Swal.fire({
        title: 'Are you sure?',
        text: "This will permanently delete the user!",
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
                data: { id: userId, _token: "{{ csrf_token() }}" },
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
@endsection
