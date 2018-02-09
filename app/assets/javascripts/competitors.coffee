# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$(document).on('turbolinks:load',->
		state=$('#state_id')
		state.on "change", ->
			$.ajax '/towns',
		        type: 'GET'
		        data: { state_id:state.val() }
		        dataType: 'json'
		        error: (jqXHR, textStatus, errorThrown) ->
		            $('#competitor_town_id').find('option').remove().end().append('<option value="whatever">Seleccione Departamento</option>')
		            $('#competitor_town_id').prop('disabled', true)
		        success: (data, textStatus, jqXHR) ->
		        	$('#competitor_town_id').prop('disabled', false)
		        	$('#competitor_town_id').find('option').remove().end().append('<option value="whatever">Seleccione Ciudad</option>')
			       	$.each data, (town)->
		        		$('#competitor_town_id').append($('<option>',{ 
	        				value: data[town].id,
	        				text : data[town].name
	    				}))
	)