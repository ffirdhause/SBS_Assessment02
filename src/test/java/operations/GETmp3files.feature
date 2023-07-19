Feature: GET Weather Data

  Scenario: Current weather data for a specific location based on lat and long.
    Given url baseURL
    And path 'guide/ajax_radio_program_catchup_data/language/mandarin/location/NSW/sublocation/Sydney'
    When method GET
    Then status 200
