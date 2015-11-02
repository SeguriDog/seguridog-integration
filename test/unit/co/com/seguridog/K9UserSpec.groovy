package co.com.seguridog

import grails.test.mixin.TestFor
import spock.lang.Specification
import java.time.LocalDate

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

    def "Testing Domain Class K9User - firstName"() {
        when:
        def obj = new K9User(firstName: firstName)

        then:
        obj.errors.hasFieldErrors("firstName") == false

        where:
        firstName    | valid     | field
        "aabbccddeeffgghhiijjkkllmmnnooppqqrrsstt"  | true  | 'maxSize'
        "aabbccddeeffgghhiijjkkllmmnnooppqqrrssttr" | false | 'maxSize'
    }

    def "Testing Domain Class K9User - birthDate"() {
        when:
        def obj = new K9User(birthDate: birthDate)

        then:
        obj.errors.hasFieldErrors("birthDate") == false

        where:
        birthDate   | valid     | field
        LocalDate.parse("31-12-1899")   | false | 'minValue'
        LocalDate.parse("01-01-1900")   | true  | 'minValue'
    }
}
