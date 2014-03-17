# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  if $('body').hasClass('aircrafts-new')
   class CostsToLease
     constructor: ->
       this.total_costs = 100
     calculate_total_costs: ->
       this.configuration_cost = parseInt($("input[name='configuration']:checked").data('costs-to-fit'))
       this.total_costs = this.configuration_cost + 100
       console.log this.total_costs

   costs_to_lease = new CostsToLease()
   $('#aircraft-configurations tbody tr').bind 'click', (e) ->
     $(this).find('input').prop("checked", true)
     costs_to_lease.calculate_total_costs()
     e.preventDefault()


   ### class Aircraft
      engines_id: null
      configuration_id: null
      cost_to_lease: 0
      cost_to_buy: 0
    window.aircraft = new Aircraft()

    class AircraftConfiguration
      constructor: (data) ->
        @id = data.id
        @name = data.name
        @aircraft_type_id = data.aircraft_type_id
        @first_seats = data.first_seats
        @business_seats = data.business_seats
        @economy_seats = data.economy_seats
        @costs_to_fit = data.costs_to_fit

      draw_row: ->
        $('#aircraft-configurations tbody').append("
          <tr data-aircraft-config-id='#{@id}'>
            <td><input type='radio' name='aircraft_configuration' value='#{@configuration}' /></td>
            <td>#{@name}</td>
            <td>#{@first_seats}</td>
            <td>#{@business_seats}</td>
            <td>#{@economy_seats}</td>
            <td>#{@costs_to_fit}</td>
          </tr>")
        @.bind_event()
      bind_event: ->
        $("tr[data-aircraft-config-id='#{@id}']").bind 'click', (e) =>
          window.blub = $($(@))

    # Build all the aircraft configurations.
    class window.Controller
      constructor: (list) ->
        @configs = (new AircraftConfiguration ac for ac in JSON.parse(list))
        config.draw_row() for config in @configs
###
    # draw_row for config in window.configs
    #draw_row config for config in window.configs
    # Build table from AircraftConfigurations.

    # when an input is changed it needs to recalculate the aircraft price.
    #$('input').bind 'click', (event) =>
    #  console.log($(@))
