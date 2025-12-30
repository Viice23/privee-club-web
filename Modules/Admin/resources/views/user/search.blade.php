@extends('admin::layouts.master')

@section('title', 'Statistics')

@section('content')
<!-- Select2 CSS -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<!-- Select2 Bootstrap 4 Theme CSS -->
<link href="https://cdn.jsdelivr.net/npm/select2-bootstrap4-theme@1.0.0/dist/select2-bootstrap4.min.css" rel="stylesheet" />

<style>
    /* Select2 Bootstrap 4 Integration Styles */
    .select2-container {
        width: 100% !important;
    }
    
    .select2-container--default .select2-selection--multiple {
        border: 1px solid #ced4da !important;
        border-radius: 0.25rem !important;
        min-height: 38px !important;
        padding: 2px 4px !important;
        background-color: #fff !important;
    }
    
    .select2-container--default .select2-selection--multiple .select2-selection__rendered {
        padding: 0 4px !important;
    }
    
    .select2-container--default .select2-selection--multiple .select2-selection__choice {
        background-color: #007bff !important;
        border: 1px solid #007bff !important;
        color: #fff !important;
        padding: 3px 8px !important;
        margin: 3px 3px 3px 0 !important;
        border-radius: 0.25rem !important;
        font-size: 0.875rem !important;
    }
    
    .select2-container--default .select2-selection--multiple .select2-selection__choice__remove {
        color: #fff !important;
        margin-right: 5px !important;
        border-right: 1px solid rgba(255, 255, 255, 0.3) !important;
        padding-right: 5px !important;
    }
    
    .select2-container--default .select2-selection--multiple .select2-selection__choice__remove:hover {
        color: #fff !important;
        background-color: rgba(255, 255, 255, 0.2) !important;
    }
    
    .select2-container--default.select2-container--focus .select2-selection--multiple {
        border-color: #80bdff !important;
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25) !important;
    }
    
    .select2-container--default .select2-search--inline .select2-search__field {
        margin-top: 5px !important;
        padding: 0 !important;
        height: auto !important;
        font-size: 0.875rem !important;
    }
    
    .select2-container--default .select2-search--inline .select2-search__field:focus {
        outline: none !important;
    }
    
    .select2-dropdown {
        border: 1px solid #ced4da !important;
        border-radius: 0.25rem !important;
    }
    
    .select2-container--default .select2-results__option[aria-selected=true] {
        background-color: #007bff !important;
        color: #fff !important;
    }
    
    .select2-container--default .select2-results__option--highlighted[aria-selected] {
        background-color: #0056b3 !important;
        color: #fff !important;
    }
    
    /* Checkbox styling in Select2 dropdown */
    .select2-option-wrapper {
        display: flex;
        align-items: center;
    }
    
    .select2-results__option {
        padding: 8px 12px !important;
    }
    
    .select2-results__option .select2-checkbox {
        display: inline-block;
        width: 18px;
        height: 18px;
        border: 2px solid #ced4da;
        border-radius: 3px;
        margin-right: 10px;
        vertical-align: middle;
        position: relative;
        background-color: #fff;
        flex-shrink: 0;
    }
    
    .select2-results__option .select2-checkbox.checked {
        background-color: #007bff;
        border-color: #007bff;
    }
    
    .select2-results__option .select2-checkbox.checked:after {
        content: '\2713';
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        color: #fff;
        font-size: 12px;
        font-weight: bold;
        line-height: 1;
    }
    
    .select2-results__option[aria-selected=true] .select2-checkbox {
        background-color: #007bff;
        border-color: #007bff;
    }
    
    .select2-results__option[aria-selected=true] .select2-checkbox:after {
        content: '\2713';
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        color: #fff;
        font-size: 12px;
        font-weight: bold;
        line-height: 1;
    }
    
    .select2-results__option--highlighted .select2-checkbox {
        border-color: #007bff;
    }
    
    .select2-results__option .select2-text {
        flex: 1;
    }
    
    /* Select All option styling */
    .select2-results__option.select-all-option {
        background-color: #f8f9fa !important;
        border-bottom: 2px solid #dee2e6 !important;
        font-weight: 600 !important;
        padding: 10px 12px !important;
    }
    
    .select2-results__option.select-all-option:hover {
        background-color: #e9ecef !important;
    }
    
    .select2-results__option.select-all-option .select2-checkbox {
        width: 20px;
        height: 20px;
        border-width: 2px;
    }
    
    /* Search box styling */
    .select2-search--dropdown {
        padding: 8px;
    }
    
    .select2-search--dropdown .select2-search__field {
        border: 1px solid #ced4da !important;
        border-radius: 0.25rem !important;
        padding: 6px 12px !important;
        width: 100% !important;
        font-size: 0.875rem !important;
    }
    
    .select2-search--dropdown .select2-search__field:focus {
        border-color: #80bdff !important;
        outline: none !important;
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25) !important;
    }
    
    /* Counter display styling - hide tags and show counter */
    .select2-container--default .select2-selection--multiple .select2-selection__choice {
        display: none !important;
    }
    
    .select2-container--default .select2-selection--multiple .select2-selection__choice__remove {
        display: none !important;
    }
    
    .select2-selection__counter {
        color: #495057;
        font-size: 0.875rem;
        padding: 0;
        line-height: 38px;
        display: inline-block;
    }
    
    .select2-selection--multiple .select2-selection__rendered {
        padding: 0 8px !important;
    }
    
    /* DataTables Buttons styling */
    .dt-buttons {
        margin-bottom: 15px;
    }
    
    .dt-button {
        margin-right: 5px;
    }
    
    /* Compact Dual-Handle Range Slider Styling */
    .compact-range-container {
        display: flex;
        gap: 30px;
        margin-bottom: 20px;
    }
    
    .compact-range-item {
        flex: 1;
        min-width: 0;
    }
    
    .compact-range-label {
        font-weight: 600;
        color: #555;
        margin-bottom: 8px;
        font-size: 14px;
    }
    
    .dual-range-wrapper {
        position: relative;
        height: 40px;
        display: flex;
        align-items: center;
    }
    
    .dual-range-track {
        position: relative;
        width: 100%;
        height: 6px;
        background: #e0e0e0;
        border-radius: 3px;
        margin: 0 10px;
    }
    
    .dual-range-fill {
        position: absolute;
        height: 100%;
        background: linear-gradient(90deg, #FFD0E7 0%, #ffb3d9 100%);
        border-radius: 3px;
        pointer-events: none;
        left: 0%;
        width: 0%;
        transition: left 0.1s, width 0.1s;
    }
    
    .dual-range-input {
        position: absolute;
        width: 100%;
        height: 6px;
        top: 50%;
        transform: translateY(-50%);
        margin: 0;
        padding: 0;
        background: transparent;
        outline: none;
        -webkit-appearance: none;
        appearance: none;
        pointer-events: none;
    }
    
    .dual-range-input::-webkit-slider-thumb {
        -webkit-appearance: none;
        appearance: none;
        width: 18px;
        height: 18px;
        border-radius: 50%;
        background: #4B0082;
        border: 2px solid #fff;
        cursor: pointer;
        box-shadow: 0 2px 4px rgba(0,0,0,0.3);
        pointer-events: all;
        position: relative;
        z-index: 2;
    }
    
    .dual-range-input::-moz-range-thumb {
        width: 18px;
        height: 18px;
        border-radius: 50%;
        background: #4B0082;
        border: 2px solid #fff;
        cursor: pointer;
        box-shadow: 0 2px 4px rgba(0,0,0,0.3);
        pointer-events: all;
        position: relative;
        z-index: 2;
    }
    
    .dual-range-input-min {
        z-index: 1;
    }
    
    .dual-range-input-max {
        z-index: 2;
    }
    
    .dual-range-values {
        display: flex;
        justify-content: space-between;
        margin-top: 5px;
        font-size: 12px;
        color: #4B0082;
        font-weight: 600;
        padding: 0 10px;
    }
    
    /* Responsive for range sliders */
    @media (max-width: 992px) {
        .compact-range-container {
            flex-direction: column;
            gap: 20px;
        }
    }
    
    /* Tab Styling */
    .nav-tabs {
        border-bottom: 2px solid #FFD0E7;
        margin-bottom: 25px;
    }
    
    .nav-tabs .nav-link {
        color: #555;
        font-weight: 600;
        border: none;
        border-bottom: 3px solid transparent;
        padding: 12px 20px;
        margin-right: 5px;
    }
    
    .nav-tabs .nav-link:hover {
        border-bottom: 3px solid #FFD0E7;
        color: #4B0082;
    }
    
    .nav-tabs .nav-link.active {
        background-color: #fff;
        border-bottom: 3px solid #4B0082;
        color: #4B0082;
    }
    
    .tab-content {
        padding-top: 20px;
    }
    
    /* Pink Search Button */
    .btn-search {
        background: linear-gradient(135deg, #FFD0E7 0%, #ffb3d9 100%);
        border: 2px solid #4B0082;
        color: #4B0082;
        font-weight: 700;
        font-size: 16px;
        padding: 12px 40px;
        border-radius: 25px;
        box-shadow: 0 4px 8px rgba(75, 0, 130, 0.2);
        transition: all 0.3s ease;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }
    
    .btn-search:hover {
        background: linear-gradient(135deg, #ffb3d9 0%, #FFD0E7 100%);
        transform: translateY(-2px);
        box-shadow: 0 6px 12px rgba(75, 0, 130, 0.3);
        color: #4B0082;
    }
    
    .btn-search:active {
        transform: translateY(0);
    }
    
    /* Responsive Design */
    @media (max-width: 768px) {
        .range-slider-wrapper {
            flex-direction: column;
            gap: 10px;
        }
        
        .range-value-display {
            width: 100%;
        }
        
        .nav-tabs .nav-link {
            padding: 8px 12px;
            font-size: 14px;
        }
        
        .btn-search {
            width: 100%;
            margin-bottom: 10px;
        }
    }
    
    /* Section Headers */
    .section-header {
        color: #4B0082;
        font-weight: 700;
        font-size: 18px;
        margin-bottom: 20px;
        padding-bottom: 10px;
        border-bottom: 2px solid #FFD0E7;
    }
</style>
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="page-header">
        <h3><i class="fas fa-chart-bar"></i> Statistics</h3>
      </div>
    </div>
  </div>

  <section class="content">
    <div class="container-fluid">
      
      <!-- Search Form -->
      <div class="card mt-3">
        <div class="card-body">
          <form method="POST" action="{{ route('admin.user.search') }}" id="searchForm">
            @csrf
            
            <!-- Basic Info Section - Always Visible -->
            <div class="section-header">
              <i class="fas fa-user"></i> Basic Information
            </div>
            <div class="row">
              <div class="col-md-3 col-sm-6 col-12">
                <div class="form-group">
                  <label>First Name</label>
                  <input type="text" name="first_name" class="form-control" value="{{ old('first_name', request('first_name')) }}" placeholder="First Name">
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-12">
                <div class="form-group">
                  <label>Last Name</label>
                  <input type="text" name="last_name" class="form-control" value="{{ old('last_name', request('last_name')) }}" placeholder="Last Name">
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-12">
                <div class="form-group">
                  <label>Email</label>
                  <input type="email" name="email" class="form-control" value="{{ old('email', request('email')) }}" placeholder="Email">
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-12">
                <div class="form-group">
                  <label>Mobile Number</label>
                  <input type="text" name="mobile_no" class="form-control" value="{{ old('mobile_no', request('mobile_no')) }}" placeholder="Mobile Number">
                </div>
              </div>
            </div>

            <!-- Tabs for Other Sections -->
            <ul class="nav nav-tabs" id="searchTabs" role="tablist">
              <li class="nav-item" role="presentation">
                <a class="nav-link active" id="physical-tab" data-toggle="tab" href="#physical" role="tab" aria-controls="physical" aria-selected="true">
                  <i class="fas fa-ruler-combined"></i> Physical Attributes
                </a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="appearance-tab" data-toggle="tab" href="#appearance" role="tab" aria-controls="appearance" aria-selected="false">
                  <i class="fas fa-palette"></i> Appearance & Preferences
                </a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="location-tab" data-toggle="tab" href="#location" role="tab" aria-controls="location" aria-selected="false">
                  <i class="fas fa-map-marker-alt"></i> Location
                </a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="date-status-tab" data-toggle="tab" href="#date-status" role="tab" aria-controls="date-status" aria-selected="false">
                  <i class="fas fa-calendar-alt"></i> Date & Status
                </a>
              </li>
            </ul>

            <div class="tab-content" id="searchTabContent">
              <!-- Physical Attributes Tab -->
              <div class="tab-pane fade show active" id="physical" role="tabpanel" aria-labelledby="physical-tab">
                <div class="row mt-3">
                  <div class="col-md-4 col-sm-6 col-12">
                <div class="form-group">
                  <label>Gender</label>
                      <select name="gender[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedGenders = old('gender', request('gender', []));
                          if (!is_array($selectedGenders)) {
                            $selectedGenders = $selectedGenders ? [$selectedGenders] : [];
                          }
                        @endphp
                        <option value="Male" {{ in_array('Male', $selectedGenders) ? 'selected' : '' }}>Male</option>
                        <option value="Female" {{ in_array('Female', $selectedGenders) ? 'selected' : '' }}>Female</option>
                  </select>
                </div>
              </div>
                </div>
                
                <!-- All Range Sliders in One Row -->
                @php
                  $ageMin = old('age_min', request('age_min', 18));
                  $ageMax = old('age_max', request('age_max', 100));
                  $heightMin = old('height_min', request('height_min', 120));
                  $heightMax = old('height_max', request('height_max', 220));
                  $weightMin = old('weight_min', request('weight_min', 40));
                  $weightMax = old('weight_max', request('weight_max', 150));
                @endphp
                
                <div class="compact-range-container">
                  <!-- Age Range -->
                  <div class="compact-range-item">
                    <div class="compact-range-label">Age (years)</div>
                    <div class="dual-range-wrapper">
                      <div class="dual-range-track">
                        <div class="dual-range-fill" id="ageFill"></div>
                        <input type="range" class="dual-range-input dual-range-input-min" id="ageMin" name="age_min" min="18" max="100" value="{{ $ageMin }}" oninput="updateDualRange('age', 18, 100)">
                        <input type="range" class="dual-range-input dual-range-input-max" id="ageMax" name="age_max" min="18" max="100" value="{{ $ageMax }}" oninput="updateDualRange('age', 18, 100)">
                </div>
              </div>
                    <div class="dual-range-values">
                      <span id="ageMinDisplay">{{ $ageMin }}</span>
                      <span id="ageMaxDisplay">{{ $ageMax }}</span>
                </div>
              </div>
                  
                  <!-- Height Range -->
                  <div class="compact-range-item">
                    <div class="compact-range-label">Height (cm)</div>
                    <div class="dual-range-wrapper">
                      <div class="dual-range-track">
                        <div class="dual-range-fill" id="heightFill"></div>
                        <input type="range" class="dual-range-input dual-range-input-min" id="heightMin" name="height_min" min="120" max="220" value="{{ $heightMin }}" oninput="updateDualRange('height', 120, 220)">
                        <input type="range" class="dual-range-input dual-range-input-max" id="heightMax" name="height_max" min="120" max="220" value="{{ $heightMax }}" oninput="updateDualRange('height', 120, 220)">
                </div>
              </div>
                    <div class="dual-range-values">
                      <span id="heightMinDisplay">{{ $heightMin }}</span>
                      <span id="heightMaxDisplay">{{ $heightMax }}</span>
                </div>
                  </div>
                  
                  <!-- Weight Range -->
                  <div class="compact-range-item">
                    <div class="compact-range-label">Weight (kg)</div>
                    <div class="dual-range-wrapper">
                      <div class="dual-range-track">
                        <div class="dual-range-fill" id="weightFill"></div>
                        <input type="range" class="dual-range-input dual-range-input-min" id="weightMin" name="weight_min" min="40" max="150" value="{{ $weightMin }}" oninput="updateDualRange('weight', 40, 150)">
                        <input type="range" class="dual-range-input dual-range-input-max" id="weightMax" name="weight_max" min="40" max="150" value="{{ $weightMax }}" oninput="updateDualRange('weight', 40, 150)">
              </div>
            </div>
                    <div class="dual-range-values">
                      <span id="weightMinDisplay">{{ $weightMin }}</span>
                      <span id="weightMaxDisplay">{{ $weightMax }}</span>
                </div>
                </div>
              </div>
            </div>

              <!-- Appearance & Preferences Tab -->
              <div class="tab-pane fade" id="appearance" role="tabpanel" aria-labelledby="appearance-tab">
                <div class="row mt-3">
                  <div class="col-md-4 col-sm-6 col-12">
                <div class="form-group">
                  <label>Body Type</label>
                      <select name="body_type[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedBodyTypesValues = old('body_type', request('body_type', []));
                          if (!is_array($selectedBodyTypesValues)) {
                            $selectedBodyTypesValues = $selectedBodyTypesValues ? [$selectedBodyTypesValues] : [];
                          }
                        @endphp
                        @foreach($bodyTypes as $bodyTypeObj)
                          <option value="{{ $bodyTypeObj->body_type }}" {{ in_array($bodyTypeObj->body_type, $selectedBodyTypesValues) ? 'selected' : '' }}>{{ $bodyTypeObj->body_type }}</option>
                    @endforeach
                  </select>
                </div>
              </div>
                  <div class="col-md-4 col-sm-6 col-12">
                <div class="form-group">
                  <label>Hair Color</label>
                      <select name="hair_color[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedHairColors = old('hair_color', request('hair_color', []));
                          if (!is_array($selectedHairColors)) {
                            $selectedHairColors = $selectedHairColors ? [$selectedHairColors] : [];
                          }
                        @endphp
                    @foreach($hairColors as $color)
                          <option value="{{ $color }}" {{ in_array($color, $selectedHairColors) ? 'selected' : '' }}>{{ $color }}</option>
                    @endforeach
                  </select>
                </div>
              </div>
                  <div class="col-md-4 col-sm-6 col-12">
                <div class="form-group">
                  <label>Eye Color</label>
                      <select name="eye_color[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedEyeColors = old('eye_color', request('eye_color', []));
                          if (!is_array($selectedEyeColors)) {
                            $selectedEyeColors = $selectedEyeColors ? [$selectedEyeColors] : [];
                          }
                        @endphp
                    @foreach($eyeColors as $color)
                          <option value="{{ $color }}" {{ in_array($color, $selectedEyeColors) ? 'selected' : '' }}>{{ $color }}</option>
                    @endforeach
                  </select>
                </div>
              </div>
                  <div class="col-md-4 col-sm-6 col-12">
                <div class="form-group">
                  <label>Zodiac Sign</label>
                      <select name="zodiac_sign[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedZodiacSigns = old('zodiac_sign', request('zodiac_sign', []));
                          if (!is_array($selectedZodiacSigns)) {
                            $selectedZodiacSigns = $selectedZodiacSigns ? [$selectedZodiacSigns] : [];
                          }
                        @endphp
                    @foreach($zodiacSigns as $zodiac)
                          <option value="{{ $zodiac->Zodiac_Signs }}" {{ in_array($zodiac->Zodiac_Signs, $selectedZodiacSigns) ? 'selected' : '' }}>{{ $zodiac->Zodiac_Signs }}</option>
                    @endforeach
                  </select>
                </div>
              </div>
                  <div class="col-md-4 col-sm-6 col-12">
                <div class="form-group">
                  <label>Sexual Orientation</label>
                      <select name="sexual_orientation[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedOrientations = old('sexual_orientation', request('sexual_orientation', []));
                          if (!is_array($selectedOrientations)) {
                            $selectedOrientations = $selectedOrientations ? [$selectedOrientations] : [];
                          }
                        @endphp
                    @foreach($sexOrientations as $orientation)
                          <option value="{{ $orientation->sex_orientation }}" {{ in_array($orientation->sex_orientation, $selectedOrientations) ? 'selected' : '' }}>{{ $orientation->sex_orientation }}</option>
                    @endforeach
                  </select>
                    </div>
                </div>
              </div>
            </div>

              <!-- Location Tab -->
              <div class="tab-pane fade" id="location" role="tabpanel" aria-labelledby="location-tab">
                <div class="row mt-3">
                  <div class="col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label>Nationality</label>
                      <select name="nationality[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedNationalities = old('nationality', request('nationality', []));
                          if (!is_array($selectedNationalities)) {
                            $selectedNationalities = $selectedNationalities ? [$selectedNationalities] : [];
                          }
                        @endphp
                    @foreach($nationalities as $nationality)
                          <option value="{{ $nationality->nationality }}" {{ in_array($nationality->nationality, $selectedNationalities) ? 'selected' : '' }}>{{ $nationality->nationality }}</option>
                    @endforeach
                  </select>
                </div>
              </div>
                  <div class="col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label>Region</label>
                      <select name="region[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedRegions = old('region', request('region', []));
                          if (!is_array($selectedRegions)) {
                            $selectedRegions = $selectedRegions ? [$selectedRegions] : [];
                          }
                        @endphp
                    @foreach($regions as $region)
                          <option value="{{ $region->region }}" {{ in_array($region->region, $selectedRegions) ? 'selected' : '' }}>{{ $region->region }}</option>
                    @endforeach
                  </select>
                </div>
              </div>
                  <div class="col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label>City</label>
                      <select name="city[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedCities = old('city', request('city', []));
                          if (!is_array($selectedCities)) {
                            $selectedCities = $selectedCities ? [$selectedCities] : [];
                          }
                        @endphp
                    @foreach($cities as $city)
                          <option value="{{ $city->city }}" {{ in_array($city->city, $selectedCities) ? 'selected' : '' }}>{{ $city->city }}</option>
                    @endforeach
                  </select>
                </div>
              </div>
                  <div class="col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label>Looking For</label>
                      <select name="looking_for[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedLookingFors = old('looking_for', request('looking_for', []));
                          if (!is_array($selectedLookingFors)) {
                            $selectedLookingFors = $selectedLookingFors ? [$selectedLookingFors] : [];
                          }
                        @endphp
                    @foreach($lookingFors as $lookingFor)
                          <option value="{{ $lookingFor->looking_for }}" {{ in_array($lookingFor->looking_for, $selectedLookingFors) ? 'selected' : '' }}>{{ $lookingFor->looking_for }}</option>
                    @endforeach
                  </select>
                    </div>
                </div>
              </div>
            </div>

              <!-- Date & Status Tab -->
              <div class="tab-pane fade" id="date-status" role="tabpanel" aria-labelledby="date-status-tab">
                <div class="row mt-3">
                  <div class="col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label>Sign-up Date From</label>
                  <input type="date" name="signup_date_from" class="form-control" value="{{ old('signup_date_from', request('signup_date_from')) }}" placeholder="dd/mm/yyyy">
                </div>
              </div>
                  <div class="col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label>Sign-up Date To</label>
                  <input type="date" name="signup_date_to" class="form-control" value="{{ old('signup_date_to', request('signup_date_to')) }}" placeholder="dd/mm/yyyy">
                </div>
              </div>
                  <div class="col-md-12 col-sm-12 col-12">
                <div class="form-group">
                  <label>Status Category</label>
                      <select name="status_category[]" class="form-control select2-multiple" multiple>
                        @php
                          $selectedStatusCategories = old('status_category', request('status_category', []));
                          if (!is_array($selectedStatusCategories)) {
                            $selectedStatusCategories = $selectedStatusCategories ? [$selectedStatusCategories] : [];
                          }
                        @endphp
                        <option value="new_users" {{ in_array('new_users', $selectedStatusCategories) ? 'selected' : '' }}>New Users</option>
                        <option value="new_applicants" {{ in_array('new_applicants', $selectedStatusCategories) ? 'selected' : '' }}>New Applicants</option>
                        <option value="new_members" {{ in_array('new_members', $selectedStatusCategories) ? 'selected' : '' }}>New Members</option>
                        <option value="rejected_users" {{ in_array('rejected_users', $selectedStatusCategories) ? 'selected' : '' }}>Rejected Users</option>
                        <option value="applicants_voted_out" {{ in_array('applicants_voted_out', $selectedStatusCategories) ? 'selected' : '' }}>Applicants voted OUT</option>
                        <option value="applicants_voted_in" {{ in_array('applicants_voted_in', $selectedStatusCategories) ? 'selected' : '' }}>Applicants voted IN</option>
                        <option value="deleted_by_admin" {{ in_array('deleted_by_admin', $selectedStatusCategories) ? 'selected' : '' }}>Deleted Members By Admin</option>
                        <option value="deleted_by_member" {{ in_array('deleted_by_member', $selectedStatusCategories) ? 'selected' : '' }}>Deleted Members By Member</option>
                  </select>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Action Buttons -->
            <div class="text-center mt-4 mb-3">
              <button type="submit" class="btn btn-search">
                <i class="fas fa-search"></i> Search
              </button>
              <button type="button" class="btn btn-secondary ml-2" id="resetBtn">
                <i class="fas fa-redo"></i> Reset
              </button>
            </div>
          </form>
        </div>
      </div>

      <!-- Results Table -->
      @if(request()->hasAny(['first_name', 'last_name', 'email', 'mobile_no', 'gender', 'body_type', 'hair_color', 'eye_color', 'nationality', 'region', 'city', 'zodiac_sign', 'sexual_orientation', 'looking_for', 'age_min', 'age_max', 'height_min', 'height_max', 'weight_min', 'weight_max', 'signup_date_from', 'signup_date_to', 'status_category']))
      <div class="card">
        <div class="card-body table-responsive">
          <h5 class="mb-3">Search Results ({{ $users->count() }} found)</h5>
          <table class="table table-striped align-middle commontable">
            <thead>
              <tr>
                <th>S.No</th>
                <th>Member Number</th>
                <th>Profile</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Profile Name</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Age</th>
                <th>Height</th>
                <th>Weight</th>
                <th>Body Type</th>
                <th>Hair</th>
                <th>Eye</th>
                <th>Nationality</th>
                <th>Region</th>
                <th>City</th>
                <th>Zodiac</th>
                <th>Orientation</th>
                <th>Looking For</th>
                <th>Sign-up Date</th>
                <th>Status</th>
                <th class="text-center">Action</th>
              </tr>
            </thead>
            <tbody>
              @forelse($users as $index => $user)
              <tr @if($user->deleted_at) style="background-color: #fee; color: #c33;" @endif>
                <td>{{ $index + 1 }}</td>
                <td>{{ $user->member_number ?? '—' }}</td>
                <td>
                  @php
                    $profileImg = optional($user->profile)->profile_image 
                      ? asset(optional($user->profile)->profile_image) 
                      : asset('public/uploads/blankImage/blank.jpg');
                  @endphp
                  <img src="{{ $profileImg }}" alt="Profile" style="height:50px; width:50px; border-radius:50%; object-fit:cover;">
                </td>
                <td>{{ $user->first_name ?? '—' }}</td>
                <td>{{ $user->last_name ?? '—' }}</td>
                <td>{{ $user->profile_name ?? '—' }}</td>
                <td>{{ $user->gender ?? '—' }}</td>
                <td>{{ $user->email ?? '—' }}</td>
                <td>{{ $user->mobile_no ?? '—' }}</td>
                <td>{{ $user->age ?? '—' }}</td>
                <td>{{ $user->height ?? '—' }}</td>
                <td>{{ $user->weight ?? '—' }}</td>
                <td>{{ $user->body_type ?? '—' }}</td>
                <td>{{ $user->hair_color ?? '—' }}</td>
                <td>{{ $user->eye_color ?? '—' }}</td>
                <td>{{ $user->nationality ?? '—' }}</td>
                <td>{{ $user->region ?? '—' }}</td>
                <td>{{ $user->city ?? '—' }}</td>
                <td>{{ $user->zodiac_sign ?? '—' }}</td>
                <td>{{ $user->sexual_orientation ?? '—' }}</td>
                <td>{{ $user->looking_for ?? '—' }}</td>
                <td>{{ $user->created_at ? $user->created_at->format('d M Y') : '—' }}</td>
                <td>
                  @if($user->deleted_at)
                    <span class="badge badge-danger">Deleted</span>
                  @elseif($user->admin_status == 0)
                    <span class="badge badge-warning">Pending</span>
                  @elseif($user->admin_status == 2)
                    <span class="badge badge-danger">Rejected</span>
                  @else
                    <span class="badge badge-success">Active</span>
                  @endif
                </td>
                <td class="text-center">
                  <a href="{{ route('admin.viewuser', $user->id) }}" title="View User"><i class="fa fa-eye text-success"></i></a>
                </td>
              </tr>
              @empty
              <tr>
                <td colspan="24" class="text-center text-muted py-4">No users found matching your search criteria.</td>
              </tr>
              @endforelse
            </tbody>
          </table>
        </div>
      </div>
      @endif

    </div>
  </section>
</div>

@endsection

@section('script')
<!-- Select2 JS -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
<!-- DataTables Buttons JS -->
<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.bootstrap4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>

<script>
// Function to initialize Select2
function initializeSelect2() {
    if (typeof $.fn.select2 === 'undefined') {
        // Select2 not loaded yet, try again after a short delay
        setTimeout(initializeSelect2, 100);
        return;
    }
    
    // Destroy any existing Select2 instances if they exist
    if ($('.select2-multiple').length > 0) {
        try {
            $('.select2-multiple').each(function() {
                if ($(this).data('select2')) {
                    $(this).select2('destroy');
                }
            });
        } catch(e) {
            // Ignore errors if already destroyed
        }
    }
    
    // Initialize Select2 for all multiple select dropdowns with checkbox support
    $('.select2-multiple').each(function() {
        var $select = $(this);
        var selectId = $select.attr('id') || 'select-' + Math.random().toString(36).substr(2, 9);
        if (!$select.attr('id')) {
            $select.attr('id', selectId);
        }
        
        // Add "Select All" option at the beginning if it doesn't exist
        if ($select.find('option[value="__select_all__"]').length === 0) {
            $select.prepend('<option value="__select_all__" class="select-all-option">Select All</option>');
        }
        
        $select.select2({
            placeholder: 'Select options...',
            allowClear: true,
            width: '100%',
            closeOnSelect: false,
            minimumResultsForSearch: 0, // Enable search for all dropdowns
            templateResult: function(data) {
                if (!data.id) {
                    return data.text;
                }
                
                // Check if this is the "Select All" option
                var isSelectAll = data.id === '__select_all__';
                var optionClass = isSelectAll ? 'select-all-option' : '';
                
                // Create wrapper with checkbox and text
                var $wrapper = $('<span class="select2-option-wrapper ' + optionClass + '"></span>');
                var $checkbox = $('<span class="select2-checkbox"></span>');
                var $text = $('<span class="select2-text">' + data.text + '</span>');
                
                $wrapper.append($checkbox).append($text);
                
                return $wrapper;
            },
            templateSelection: function(data) {
                // Don't show individual tags, return empty to hide them
                return '';
            }
        });
        
        // Update display to show count instead of tags
        function updateSelectionDisplay() {
            setTimeout(function() {
                var selectedValues = $select.val() || [];
                var selectedCount = selectedValues.filter(function(val) {
                    return val !== '__select_all__';
                }).length;
                
                var $container = $select.next('.select2-container');
                var $selection = $container.find('.select2-selection__rendered');
                
                // Hide all choice tags
                $selection.find('.select2-selection__choice').hide();
                
                // Remove existing counter if any
                $selection.find('.select2-selection__counter').remove();
                
                // Remove placeholder if shown
                $selection.find('.select2-selection__placeholder').remove();
                
                if (selectedCount === 0) {
                    // Show placeholder
                    if ($selection.find('.select2-selection__placeholder').length === 0) {
                        $selection.append('<span class="select2-selection__placeholder">Select options...</span>');
                    }
                } else {
                    // Show counter
                    $selection.append('<span class="select2-selection__counter">' + selectedCount + ' selected</span>');
                }
            }, 10);
        }
        
        // Initial display update
        updateSelectionDisplay();
        
        // Handle "Select All" option click
        $select.on('select2:select', function(e) {
            var data = e.params.data;
            
            if (data.id === '__select_all__') {
                // Get all options except "Select All"
                var allOptions = $select.find('option').not('[value="__select_all__"]');
                var allValues = allOptions.map(function() {
                    return $(this).val();
                }).get();
                
                // Select all options
                $select.val(allValues).trigger('change');
            }
            
            // Update display after selection
            updateSelectionDisplay();
        });
        
        // Handle "Select All" option unselect (when deselecting all)
        $select.on('select2:unselect', function(e) {
            var data = e.params.data;
            
            if (data.id === '__select_all__') {
                // Deselect all options
                $select.val(null).trigger('change');
            }
            
            // Update display after unselection
            updateSelectionDisplay();
        });
        
        // Update display when selection changes via change event
        $select.on('change', function() {
            updateSelectionDisplay();
        });
        
        // Update "Select All" checkbox state and prevent it from being shown in tags
        function updateSelectAllState() {
            var allOptions = $select.find('option').not('[value="__select_all__"]');
            var selectedOptions = $select.val() || [];
            var allValues = allOptions.map(function() {
                return $(this).val();
            }).get();
            
            // Check if all options are selected
            var allSelected = allValues.length > 0 && allValues.every(function(val) {
                return selectedOptions.indexOf(val) !== -1;
            });
            
            // Update "Select All" option selected state
            var $selectAllOption = $select.find('option[value="__select_all__"]');
            if (allSelected && allValues.length > 0) {
                $selectAllOption.prop('selected', true);
            } else {
                $selectAllOption.prop('selected', false);
            }
        }
        
        // Update checkbox states and Select All state when dropdown opens
        $select.on('select2:open', function() {
            updateSelectAllState();
            setTimeout(function() {
                $select.next('.select2-container').find('.select2-results__option[role="option"]').each(function() {
                    var $option = $(this);
                    var $checkbox = $option.find('.select2-checkbox');
                    if ($checkbox.length) {
                        // Sync checkbox state with aria-selected attribute
                        if ($option.attr('aria-selected') === 'true') {
                            $checkbox.addClass('checked');
                        } else {
                            $checkbox.removeClass('checked');
                        }
                    }
                });
            }, 10);
        });
        
        // Update Select All state when selection changes
        $select.on('change', function() {
            updateSelectAllState();
        });
    });
}

// Dual Range Slider Function
function updateDualRange(type, minRange, maxRange) {
    var minEl = document.getElementById(type + 'Min');
    var maxEl = document.getElementById(type + 'Max');
    var min = parseInt(minEl.value);
    var max = parseInt(maxEl.value);
    
    // Ensure min doesn't exceed max
    if (min > max) {
        min = max;
        minEl.value = min;
    }
    // Ensure max doesn't go below min
    if (max < min) {
        max = min;
        maxEl.value = max;
    }
    
    // Update displays
    document.getElementById(type + 'MinDisplay').textContent = min;
    document.getElementById(type + 'MaxDisplay').textContent = max;
    
    // Update fill bar position
    var range = maxRange - minRange;
    var fillLeft = ((min - minRange) / range) * 100;
    var fillWidth = ((max - min) / range) * 100;
    var fillEl = document.getElementById(type + 'Fill');
    fillEl.style.left = fillLeft + '%';
    fillEl.style.width = fillWidth + '%';
}

// Initialize on document ready
$(document).ready(function () {
    // Initialize Select2
    initializeSelect2();
    
    // Initialize dual range sliders
    updateDualRange('age', 18, 100);
    updateDualRange('height', 120, 220);
    updateDualRange('weight', 40, 150);
    
    // Handle reset button
    $('#resetBtn').on('click', function() {
        document.getElementById('searchForm').reset();
        // Reset all selects, excluding "Select All" option
        $('.select2-multiple').each(function() {
            $(this).find('option[value="__select_all__"]').prop('selected', false);
            $(this).val(null).trigger('change');
        });
        
        // Reset range sliders to default values
        document.getElementById('ageMin').value = 18;
        document.getElementById('ageMax').value = 100;
        document.getElementById('heightMin').value = 120;
        document.getElementById('heightMax').value = 220;
        document.getElementById('weightMin').value = 40;
        document.getElementById('weightMax').value = 150;
        updateDualRange('age', 18, 100);
        updateDualRange('height', 120, 220);
        updateDualRange('weight', 40, 150);
        
        window.location.href = '{{ route('admin.user.search') }}';
    });
    
    @if(request()->hasAny(['first_name', 'last_name', 'email', 'mobile_no', 'gender', 'body_type', 'hair_color', 'eye_color', 'nationality', 'region', 'city', 'zodiac_sign', 'sexual_orientation', 'looking_for', 'age_min', 'age_max', 'height_min', 'height_max', 'weight_min', 'weight_max', 'signup_date_from', 'signup_date_to', 'status_category']))
    // Check if DataTable is already initialized and destroy it first
    if ($.fn.DataTable.isDataTable('.commontable')) {
        $('.commontable').DataTable().destroy();
    }
    let table = $('.commontable').DataTable({
        "pageLength": 25,
        "order": [[0, "asc"]],
        "scrollX": true,
        "dom": 'Bfrtip',
        "buttons": [
            {
                extend: 'excel',
                text: '<i class="fas fa-file-excel"></i> Export to Excel',
                className: 'btn btn-success btn-sm',
                exportOptions: {
                    columns: [0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22], // Exclude Profile (2) and Action (23) columns
                    modifier: {
                        search: 'applied' // Export only filtered data
                    }
                },
                filename: 'user_statistics_' + new Date().toISOString().split('T')[0],
                title: 'User Statistics'
            }
        ]
    });
    @endif
});

// Also initialize on window load as backup
$(window).on('load', function() {
    initializeSelect2();
});
</script>
@endsection
