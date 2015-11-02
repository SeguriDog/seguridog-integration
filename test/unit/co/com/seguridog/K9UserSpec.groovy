package co.com.seguridog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(K9User)
class K9UserSpec extends Specification {

    def setup() {
        mockForConstraintsTests(K9User)
    }

    def cleanup() {
    }

    def "Testing Domain Class K9User - lastName"() {
        when:
        def obj = new K9User(lastName: lastName)

        then:
        obj.errors.hasFieldErrors("lastName") == false

        where:
        lastName    | valid     | field
        "aabbccddeeffgghhiijjkkllmmnnooppqqrrsstt"  | true  | 'maxSize'
        "aabbccddeeffgghhiijjkkllmmnnooppqqrrssttr" | false | 'maxSize'
    }
}
