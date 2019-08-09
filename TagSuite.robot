*** Settings ***
Force Tags        FORCE_TAG
Default Tags      DEFAULT_TAG

*** Test Cases ***
TestWithNoTags
    No Operation

TestWithTag
    [Tags]    TEST_TAG
    No Operation

TestWithEmptyTag
    [Tags]
    No Operation
