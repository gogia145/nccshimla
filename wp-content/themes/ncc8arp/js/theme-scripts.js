jQuery(document).ready(function(){
	jQuery('#dob').datepicker();
	jQuery("#enrolement_form").validate({
		rules : {
		_cadet_regemental_no :"required",
		_cadet_rank :"required",
		_cadet_name :"required",
		_cadet_father_name:"required",
		_cadet_mother_name:"required",
		_cadet_dob :"required",
		_cadet_address :"required",
		_cadet_corespondent_address :"required",
		_cadet_adhaar_no : {
						 required: true,
					      digits: true,
					      min: 12
					    },
		_cadet_bank_ac : {
				      required: true,
				      digits: true,
				      min: 10
				    },
		_cadet_bank_ifsc :"required",
		_cadet_mobile: {
			      required: true,
			      digits: true,
			      max: 10
			    },
		_cadet_email: {
				required : true,
				email : true
			}
		},
		messages : {
			_cadet_regemental_no :"Enter Regemental Number",
			_cadet_rank :"Enter Rank",
			_cadet_name :"Enter Cadet Name",
			_cadet_father_name :"Enter Father Name",
			_cadet_mother_name :"Enter Mother Number",
			_cadet_dob :"Enter Date Of Birth",
			_cadet_address :"Enter Cadet Address",
			_cadet_corespondent_address :"Enter Corespondent Address",
			_cadet_adhaar_no :"Enter Adhaar Number",
			_cadet_bank_ac :"Enter Account Number",
			_cadet_bank_ifsc :"Enter IFSC Code",
			_cadet_mobile :"Enter Mobile Number",
			_cadet_email:"Enter Email Address",
			
		},
		submitHandler : function (form) {
			enrolement_form();
		}
	});
	function enrolement_form(){
		e.preventDefault();
		var _cadet_regemental_no =jQuery('form#enrolement_form input[name=_cadet_regemental_no]').val();
		var _cadet_rank = jQuery('form#enrolement_form input[name=_cadet_rank]').val();
		var _cadet_name= jQuery('form#enrolement_form input[name=_cadet_name]').val();
		var _cadet_father_name = jQuery('form#enrolement_form input[name=_cadet_father_name]').val();
		var _cadet_mother_name = jQuery('form#enrolement_form input[name=_cadet_mother_name]').val();
		var _cadet_dob = jQuery('form#enrolement_form input[name=_cadet_dob]').val();
		var _cadet_address = jQuery('form#enrolement_form input[name=_cadet_address]').val();
		var _cadet_corespondent_address = jQuery('form#enrolement_form input[name=_cadet_corespondent_address]').val();
		var _cadet_adhaar_no = jQuery('form#enrolement_form input[name=_cadet_adhaar_no]').val();
		var _cadet_bank_ac = jQuery('form#enrolement_form input[name=_cadet_bank_ac]').val();
		var _cadet_bank_ifsc = jQuery('form#enrolement_form input[name=_cadet_bank_ifsc]').val();
		var _cadet_mobile = jQuery('form#enrolement_form input[name=_cadet_mobile]').val();
		var _cadet_email = jQuery('form#enrolement_form input[name=_cadet_email]').val();
		var data = {
				'action' : 'update_cadet_front',
				'_cadet_regemental_no' : _cadet_regemental_no,
				'_cadet_rank': _cadet_rank,
				'_cadet_name' : _cadet_name,
				'_cadet_father_name' : _cadet_father_name,
				'_cadet_mother_name': _cadet_mother_name,
				'_cadet_dob' : _cadet_dob,
				'_cadet_address' : _cadet_address,
				'_cadet_corespondent_address' : _cadet_corespondent_address,
				'_cadet_adhaar_no': _cadet_adhaar_no,
				'_cadet_bank_ac' : _cadet_bank_ac,
				'_cadet_bank_ifsc' : _cadet_bank_ifsc,
				'_cadet_mobile' :_cadet_mobile,
				'_cadet_email': _cadet_email
			};
		//console.log(data);
		jQuery.post(ajaxurl, data, function (response) {
			console.log(response);
			document.getElementById("enrolement_form").reset();
		});
		}
})