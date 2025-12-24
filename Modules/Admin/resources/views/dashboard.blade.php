@extends('admin::layouts.master')
@section('content')
<div class="content-wrapper">
   {{-- Error Message --}}
    @if(Session::has('error_message'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Error:</strong> {{ Session::get('error_message') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    {{-- Success Message --}}
    @if(Session::has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success:</strong> {{ Session::get('success') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    {{-- Page Header --}}
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Dashboard</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    {{-- Main Content --}}
    <section class="content">
        <div class="container-fluid">
            
            {{-- User Statistics Row --}}
            <div class="row">
                <div class="col-12">
                    <h4 class="mb-3"><i class="fas fa-users"></i> User Statistics</h4>
                </div>

                {{-- Total Users --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-primary elevation-1">
                            <i class="fas fa-users"></i>
                        </span>
                        <div class="info-box-content">
                            <span class="info-box-text">Total Users</span>
                            <span class="info-box-number">{{ $totalUsers }}</span>
                        </div>
                    </div>
                </div>

                {{-- Male Users --}}
                      <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-info elevation-1">
                            <i class="fas fa-male"></i>
                        </span>
                        <div class="info-box-content">
                            <span class="info-box-text">Male Users</span>
                            <span class="info-box-number">{{ $male }}</span>
                        </div>
                    </div>
                </div>

                {{-- Female Users --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="info-box">
                        <span class="info-box-icon bg-pink elevation-1" style="background-color: #e91e63;">
                            <i class="fas fa-female"></i>
                        </span>
                        <div class="info-box-content">
                            <span class="info-box-text">Female Users</span>
                            <span class="info-box-number">{{ $female }}</span>
                        </div>
                    </div>
                </div>

                {{-- Active Members --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.activeprofile') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-success elevation-1">
                                <i class="fas fa-user-check"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">Active Members</span>
                                <span class="info-box-number">{{ $activeMembers }}</span>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            {{-- User Status Row --}}
            <div class="row">
                <div class="col-12">
                    <h4 class="mb-3 mt-4"><i class="fas fa-user-cog"></i> User Status</h4>
                </div>
                
                {{-- New Users --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.newuser') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-warning elevation-1">
                                <i class="fas fa-user-plus"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">New Users</span>
                                <span class="info-box-number">{{ $newUsers }}</span>
                            </div>
                        </div>
                    </a>
                </div>

                {{-- New Applicants --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.acceptUser') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-yellow elevation-1" style="background-color: #ffc107;">
                                <i class="fas fa-user-clock"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">New Applicants</span>
                                <span class="info-box-number">{{ $newApplicants }}</span>
                            </div>
                        </div>
                    </a>
                </div>

                {{-- Rejected Users --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.rejectedUsers') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-danger elevation-1">
                                <i class="fas fa-user-times"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">Rejected Users</span>
                                <span class="info-box-number">{{ $rejectedUsers }}</span>
                            </div>
                        </div>
                    </a>
                </div>

                {{-- Ready Members --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.ready.members') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-secondary elevation-1">
                                <i class="fas fa-user-tag"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">Ready Members</span>
                                <span class="info-box-number">{{ $readyMembers }}</span>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            {{-- Registration Statistics Row --}}
            <div class="row">
                <div class="col-12">
                    <h4 class="mb-3 mt-4"><i class="fas fa-chart-line"></i> Registration Statistics</h4>
                </div>
                
                {{-- Today's Registrations --}}
                <div class="col-12 col-sm-6 col-md-4">
                    <div class="info-box">
                        <span class="info-box-icon bg-info elevation-1">
                            <i class="fas fa-calendar-day"></i>
                        </span>
                        <div class="info-box-content">
                            <span class="info-box-text">Today's Registrations</span>
                            <span class="info-box-number">{{ $todayRegistrations }}</span>
                        </div>
                    </div>
                </div>

                {{-- This Week's Registrations --}}
                <div class="col-12 col-sm-6 col-md-4">
                    <div class="info-box">
                        <span class="info-box-icon bg-primary elevation-1">
                            <i class="fas fa-calendar-week"></i>
                        </span>
                        <div class="info-box-content">
                            <span class="info-box-text">This Week's Registrations</span>
                            <span class="info-box-number">{{ $weekRegistrations }}</span>
                        </div>
                    </div>
                </div>

                {{-- This Month's Registrations --}}
                <div class="col-12 col-sm-6 col-md-4">
                    <div class="info-box">
                        <span class="info-box-icon bg-success elevation-1">
                            <i class="fas fa-calendar-alt"></i>
                            </span>
                        <div class="info-box-content">
                            <span class="info-box-text">This Month's Registrations</span>
                            <span class="info-box-number">{{ $monthRegistrations }}</span>
                        </div>
                        </div>
                    </div>
                </div>

            {{-- Pending Actions Row --}}
            <div class="row">
                <div class="col-12">
                    <h4 class="mb-3 mt-4"><i class="fas fa-tasks"></i> Pending Actions</h4>
                </div>
                
                {{-- Pending Support Requests --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.support') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-warning elevation-1">
                                <i class="fas fa-headset"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">Support Requests</span>
                                <span class="info-box-number">{{ $pendingSupportRequests }}</span>
                            </div>
                        </div>
                    </a>
                </div>

                {{-- Pending Suggestions --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.help.us.do.better') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-info elevation-1">
                                <i class="fas fa-lightbulb"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">Suggestions</span>
                                <span class="info-box-number">{{ $pendingSuggestions }}</span>
                            </div>
                        </div>
                    </a>
                </div>

                {{-- Pending Profile Updates --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.profile.update.request') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-primary elevation-1">
                                <i class="fas fa-image"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">Profile Update Requests</span>
                                <span class="info-box-number">{{ $pendingProfileUpdates }}</span>
                            </div>
                        </div>
                    </a>
                </div>

                {{-- Reported Users --}}
                <div class="col-12 col-sm-6 col-md-3">
                    <a href="{{ route('admin.reported.users') }}" style="text-decoration: none; color: inherit;">
                        <div class="info-box">
                            <span class="info-box-icon bg-danger elevation-1">
                                <i class="fas fa-flag"></i>
                            </span>
                            <div class="info-box-content">
                                <span class="info-box-text">Reported Users</span>
                                <span class="info-box-number">{{ $reportedUsers }}</span>
                            </div>
                        </div>
                    </a>
            </div>
            </div>

        </div>
    </section>
</div>

{{-- Fadeout Alert --}}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $('.alert-dismissible').fadeOut(4000);
    });
</script>
@endsection
