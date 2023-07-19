Feature: Retreive list of Audio Files.

  Scenario: Get list of all archived audio files.
    When def programData = callonce read('classpath:operations/GETmp3files.feature') 
    And def actualResponse = programData.response
    And def archiveMP3Files = $actualResponse[*].archiveAudio.mp3
    And print archiveMP3Files
    Then def expectedResponse = read('classpath:testResource/ProgramDataResponse.json')
    And def expectedMP3Files = $expectedResponse[*].archiveAudio.mp3
    And print expectedMP3Files
    Then match archiveMP3Files == expectedMP3Files
   
  

  

    