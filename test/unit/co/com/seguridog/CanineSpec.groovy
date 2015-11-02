package co.com.seguridog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Canine)
class CanineSpec extends Specification {

    def setup() {
        mockForConstraintsTests(Canine)
    }

    def cleanup() {
    }

    def "Testing Domain Class Canine - Name"() {
        when:
        def obj = new Canine(nameCanine: nameCanine)

        then:
        obj.errors.hasFieldErrors("nameCanine") == false

        where:
        name    | valid     | field
        "aaaaaaaaaaaaaabbba"  | false  | 'maxSize'
        "guardian" | true | 'maxSize'
        null    | false     | 'null'
        ''      | false     | 'blank'
    }
}
