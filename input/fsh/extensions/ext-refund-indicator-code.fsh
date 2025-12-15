Extension: CZ_RefundIndicatorCode
Id: cz-refund-indicator-code
Title: "Refund indicator code (VZP)"
Description: """
Refund indicator according to the VZP catalogue 'Náhrady za zdravotní péči'.
Used to indicate that the injury/health damage may have been caused by a third party.
"""
* value[x] only CodeableConcept
* ^context.type = #element
* ^context.expression = "Coverage"