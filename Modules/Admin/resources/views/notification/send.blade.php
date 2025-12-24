@extends('admin::layouts.master')

@section('title', 'Send Notifications')

@section('css')
<style>
.page-header {
  background: linear-gradient(90deg, #f5f2ff, #ebe5ff);
  padding: 18px 25px;
  border-radius: 12px;
  margin-bottom: 20px;
  box-shadow: 0 3px 12px rgba(95, 66, 170, 0.15);
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
.card {
  border-radius: 15px;
  box-shadow: 0 4px 18px rgba(0, 0, 0, 0.05);
  border: none;
}
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
.form-group label {
  font-weight: 600;
  color: #555;
}
.selected-user-info {
  background: #f8f9fa;
  padding: 15px;
  border-radius: 8px;
  margin-top: 10px;
}
.ui-autocomplete {
  max-height: 300px;
  overflow-y: auto;
  overflow-x: hidden;
  z-index: 1000;
  background: white;
  border: 1px solid #ddd;
  border-radius: 4px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.15);
}
.ui-autocomplete .ui-menu-item {
  padding: 8px 12px;
  border-bottom: 1px solid #eee;
  cursor: pointer;
}
.ui-autocomplete .ui-menu-item:hover,
.ui-autocomplete .ui-menu-item.ui-state-active {
  background: #f5f2ff;
  border-color: #7b5cf0;
}
.ui-autocomplete .ui-menu-item-wrapper {
  display: block;
  padding: 0;
}
.user-suggestion {
  display: flex;
  flex-direction: column;
}
.user-suggestion .user-name {
  font-weight: 600;
  color: #333;
}
.user-suggestion .user-details {
  font-size: 12px;
  color: #666;
  margin-top: 2px;
}
</style>
@endsection

@section('content')
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="page-header">
        <h3><i class="fas fa-paper-plane"></i> Send Push Notifications</h3>
      </div>
    </div>
  </div>

  <section class="content">
    <div class="container-fluid">
      <div class="card mt-3">
        <div class="card-body">
          
          <!-- Tabs Navigation -->
          <ul class="nav nav-tabs" id="notificationTabs" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" id="single-user-tab" data-toggle="tab" href="#single-user" role="tab">
                Single User
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="multiple-users-tab" data-toggle="tab" href="#multiple-users" role="tab">
                Multiple Users
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="group-tab" data-toggle="tab" href="#group" role="tab">
                By Group
              </a>
            </li>
          </ul>

          <!-- Tab Content -->
          <div class="tab-content mt-4" id="notificationTabsContent">
            
            <!-- Single User Tab -->
            <div class="tab-pane fade show active" id="single-user" role="tabpanel">
              <form id="singleUserForm">
                <div class="form-group mb-3">
                  <label for="single_user_search">Search User <span class="text-danger">*</span></label>
                  <input type="text" id="single_user_search" class="form-control" placeholder="Search by Member Number, Name, or Email" autocomplete="off">
                  <input type="hidden" id="single_user_id" name="user_ids[]">
                  <small class="form-text text-muted">Start typing to search for users</small>
                  <div id="single_user_error" class="text-danger" style="display: none;"></div>
                </div>
                
                <div id="selectedUserInfo" class="selected-user-info" style="display: none;">
                  <strong>Selected User:</strong>
                  <div id="selectedUserDetails"></div>
                </div>

                <div class="form-group mb-3">
                  <label for="single_title">Notification Title <span class="text-danger">*</span></label>
                  <input type="text" id="single_title" name="title" class="form-control" placeholder="Enter notification title" required maxlength="255">
                </div>

                <div class="form-group mb-3">
                  <label for="single_body">Notification Body <span class="text-danger">*</span></label>
                  <textarea id="single_body" name="body" class="form-control" rows="4" placeholder="Enter notification message" required maxlength="1000"></textarea>
                  <small class="form-text text-muted">Maximum 1000 characters</small>
                </div>

                <button type="submit" class="btn btn-primary">
                  <i class="fas fa-paper-plane"></i> Send Notification
                </button>
              </form>
            </div>

            <!-- Multiple Users Tab -->
            <div class="tab-pane fade" id="multiple-users" role="tabpanel">
              <form id="multipleUsersForm">
                <div class="form-group mb-3">
                  <label for="multiple_user_search">Search Users (Optional)</label>
                  <input type="text" id="multiple_user_search" class="form-control" placeholder="Search by Member Number, Name, or Email" autocomplete="off">
                  <small class="form-text text-muted">Filter users in the table below</small>
                </div>

                <div class="table-responsive mb-3" style="max-height: 400px; overflow-y: auto;">
                  <table class="table table-striped table-sm" id="multipleUsersTable">
                    <thead style="position: sticky; top: 0; background: #f3f0ff; z-index: 10;">
                      <tr>
                        <th>
                          <input type="checkbox" id="selectAllUsers" title="Select All">
                        </th>
                        <th>Member Number</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                      </tr>
                    </thead>
                    <tbody>
                      @forelse($users as $user)
                      <tr class="user-row" data-search="{{ strtolower(($user->member_number ?? '') . ' ' . ($user->first_name ?? '') . ' ' . ($user->last_name ?? '') . ' ' . ($user->email ?? '')) }}">
                        <td>
                          <input type="checkbox" class="user-checkbox" name="user_ids[]" value="{{ $user->id }}">
                        </td>
                        <td>{{ $user->member_number ?? '—' }}</td>
                        <td>{{ $user->first_name ?? '—' }}</td>
                        <td>{{ $user->last_name ?? '—' }}</td>
                        <td>{{ $user->email ?? '—' }}</td>
                      </tr>
                      @empty
                      <tr>
                        <td colspan="5" class="text-center text-muted">No users found.</td>
                      </tr>
                      @endforelse
                    </tbody>
                  </table>
                </div>

                <div class="form-group mb-3">
                  <label for="multiple_title">Notification Title <span class="text-danger">*</span></label>
                  <input type="text" id="multiple_title" name="title" class="form-control" placeholder="Enter notification title" required maxlength="255">
                </div>

                <div class="form-group mb-3">
                  <label for="multiple_body">Notification Body <span class="text-danger">*</span></label>
                  <textarea id="multiple_body" name="body" class="form-control" rows="4" placeholder="Enter notification message" required maxlength="1000"></textarea>
                  <small class="form-text text-muted">Maximum 1000 characters</small>
                </div>

                <button type="submit" class="btn btn-primary">
                  <i class="fas fa-paper-plane"></i> Send to Selected Users
                </button>
              </form>
            </div>

            <!-- Group Selection Tab -->
            <div class="tab-pane fade" id="group" role="tabpanel">
              <form id="groupForm">
                <div class="form-group mb-3">
                  <label>Select Group <span class="text-danger">*</span></label>
                  <div class="form-check mb-2">
                    <input class="form-check-input" type="radio" name="group" id="group_new_users" value="new_users" required>
                    <label class="form-check-label" for="group_new_users">
                      New Users
                    </label>
                  </div>
                  <div class="form-check mb-2">
                    <input class="form-check-input" type="radio" name="group" id="group_new_applicants" value="new_applicants" required>
                    <label class="form-check-label" for="group_new_applicants">
                      New Applicants
                    </label>
                  </div>
                  <div class="form-check mb-2">
                    <input class="form-check-input" type="radio" name="group" id="group_new_members" value="new_members" required>
                    <label class="form-check-label" for="group_new_members">
                      New Members
                    </label>
                  </div>
                  <div class="form-check mb-2">
                    <input class="form-check-input" type="radio" name="group" id="group_rejected_users" value="rejected_users" required>
                    <label class="form-check-label" for="group_rejected_users">
                      Rejected Users
                    </label>
                  </div>
                  <div class="form-check mb-2">
                    <input class="form-check-input" type="radio" name="group" id="group_applicants_voted_out" value="applicants_voted_out" required>
                    <label class="form-check-label" for="group_applicants_voted_out">
                      Applicants voted OUT
                    </label>
                  </div>
                  <div class="form-check mb-2">
                    <input class="form-check-input" type="radio" name="group" id="group_applicants_voted_in" value="applicants_voted_in" required>
                    <label class="form-check-label" for="group_applicants_voted_in">
                      Applicants voted IN
                    </label>
                  </div>
                </div>

                <div class="form-group mb-3">
                  <label for="group_title">Notification Title <span class="text-danger">*</span></label>
                  <input type="text" id="group_title" name="title" class="form-control" placeholder="Enter notification title" required maxlength="255">
                </div>

                <div class="form-group mb-3">
                  <label for="group_body">Notification Body <span class="text-danger">*</span></label>
                  <textarea id="group_body" name="body" class="form-control" rows="4" placeholder="Enter notification message" required maxlength="1000"></textarea>
                  <small class="form-text text-muted">Maximum 1000 characters</small>
                </div>

                <button type="submit" class="btn btn-primary">
                  <i class="fas fa-paper-plane"></i> Send to Group
                </button>
              </form>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- jQuery UI for Autocomplete -->
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/ui-lightness/jquery-ui.css">
<!-- SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
$(document).ready(function () {
    // Single User Autocomplete
    $("#single_user_search").autocomplete({
        source: function(request, response) {
            $.ajax({
                url: "{{ route('admin.search.users.notification') }}",
                type: 'GET',
                data: { q: request.term },
                success: function(data) {
                    response($.map(data, function(item) {
                        var fullName = (item.first_name || '') + ' ' + (item.last_name || '').trim();
                        if (!fullName.trim()) fullName = 'No Name';
                        
                        return {
                            label: fullName,
                            value: fullName,
                            id: item.id,
                            member_number: item.member_number,
                            first_name: item.first_name,
                            last_name: item.last_name,
                            email: item.email,
                            displayText: fullName + ' (' + (item.member_number || '—') + ')'
                        };
                    }));
                },
                error: function() {
                    response([]);
                }
            });
        },
        minLength: 1,
        delay: 300,
        select: function(event, ui) {
            event.preventDefault();
            $('#single_user_search').val(ui.item.displayText);
            $('#single_user_id').val(ui.item.id);
            $('#selectedUserInfo').show();
            $('#selectedUserDetails').html(
                '<strong>Member Number:</strong> ' + (ui.item.member_number || '—') + '<br>' +
                '<strong>Name:</strong> ' + (ui.item.first_name || '') + ' ' + (ui.item.last_name || '') + '<br>' +
                '<strong>Email:</strong> ' + (ui.item.email || '—')
            );
            $('#single_user_error').hide();
            return false;
        }
    }).autocomplete("instance")._renderItem = function(ul, item) {
        var fullName = (item.first_name || '') + ' ' + (item.last_name || '').trim();
        if (!fullName.trim()) fullName = 'No Name';
        
        return $("<li>")
            .append("<div class='user-suggestion'>" +
                "<div class='user-name'>" + fullName + "</div>" +
                "<div class='user-details'>Member #" + (item.member_number || '—') + " | " + (item.email || 'No Email') + "</div>" +
                "</div>")
            .appendTo(ul);
    };

    // Multiple Users Search Filter
    $('#multiple_user_search').on('keyup', function() {
        var value = $(this).val().toLowerCase();
        $('.user-row').filter(function() {
            $(this).toggle($(this).data('search').indexOf(value) > -1);
        });
    });

    // Select All Users
    $('#selectAllUsers').on('change', function() {
        $('.user-checkbox').prop('checked', $(this).prop('checked'));
    });

    // Single User Form Submit
    $('#singleUserForm').on('submit', function(e) {
        e.preventDefault();
        
        var userId = $('#single_user_id').val();
        if (!userId) {
            $('#single_user_error').text('Please select a user').show();
            return;
        }
        
        var title = $('#single_title').val();
        var body = $('#single_body').val();
        
        if (!title || !body) {
            Swal.fire({
                icon: 'warning',
                title: 'Validation Error',
                text: 'Please fill in all required fields!'
            });
            return;
        }
        
        sendNotificationToUsers([userId], title, body);
    });

    // Multiple Users Form Submit
    $('#multipleUsersForm').on('submit', function(e) {
        e.preventDefault();
        
        var userIds = [];
        $('.user-checkbox:checked').each(function() {
            userIds.push($(this).val());
        });
        
        if (userIds.length === 0) {
            Swal.fire({
                icon: 'warning',
                title: 'No Selection',
                text: 'Please select at least one user!'
            });
            return;
        }
        
        var title = $('#multiple_title').val();
        var body = $('#multiple_body').val();
        
        if (!title || !body) {
            Swal.fire({
                icon: 'warning',
                title: 'Validation Error',
                text: 'Please fill in all required fields!'
            });
            return;
        }
        
        sendNotificationToUsers(userIds, title, body);
    });

    // Group Form Submit
    $('#groupForm').on('submit', function(e) {
        e.preventDefault();
        
        var group = $('input[name="group"]:checked').val();
        if (!group) {
            Swal.fire({
                icon: 'warning',
                title: 'No Selection',
                text: 'Please select a group!'
            });
            return;
        }
        
        var title = $('#group_title').val();
        var body = $('#group_body').val();
        
        if (!title || !body) {
            Swal.fire({
                icon: 'warning',
                title: 'Validation Error',
                text: 'Please fill in all required fields!'
            });
            return;
        }
        
        Swal.fire({
            title: 'Are you sure?',
            text: 'This will send notifications to all users in the selected group.',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, send it!'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "{{ route('admin.send.notification.group') }}",
                    type: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: {
                        group: group,
                        title: title,
                        body: body
                    },
                    success: function(response) {
                        if (response.status) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success!',
                                html: response.message + '<br>Success: ' + response.success_count + ', Failed: ' + response.failed_count,
                                showConfirmButton: false,
                                timer: 3000
                            }).then(() => {
                                $('#groupForm')[0].reset();
                            });
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error!',
                                text: response.message
                            });
                        }
                    },
                    error: function(xhr) {
                        var errorMsg = 'Something went wrong!';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMsg = xhr.responseJSON.message;
                        }
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: errorMsg
                        });
                    }
                });
            }
        });
    });

    // Function to send notification to users
    function sendNotificationToUsers(userIds, title, body) {
        Swal.fire({
            title: 'Sending...',
            text: 'Please wait while we send the notifications',
            allowOutsideClick: false,
            didOpen: () => {
                Swal.showLoading();
            }
        });

        $.ajax({
            url: "{{ route('admin.send.notification.users') }}",
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                user_ids: userIds,
                title: title,
                body: body
            },
            success: function(response) {
                if (response.status) {
                    Swal.fire({
                        icon: 'success',
                        title: 'Success!',
                        html: response.message + '<br>Success: ' + response.success_count + ', Failed: ' + response.failed_count,
                        showConfirmButton: false,
                        timer: 3000
                    }).then(() => {
                        // Reset forms
                        $('#singleUserForm')[0].reset();
                        $('#single_user_id').val('');
                        $('#selectedUserInfo').hide();
                        $('#multipleUsersForm')[0].reset();
                        $('.user-checkbox').prop('checked', false);
                        $('#selectAllUsers').prop('checked', false);
                    });
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: response.message
                    });
                }
            },
            error: function(xhr) {
                var errorMsg = 'Something went wrong!';
                if (xhr.responseJSON && xhr.responseJSON.message) {
                    errorMsg = xhr.responseJSON.message;
                }
                Swal.fire({
                    icon: 'error',
                    title: 'Error!',
                    text: errorMsg
                });
            }
        });
    }
});
</script>
@endsection
