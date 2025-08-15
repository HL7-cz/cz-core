Extension: CZ_OrganizationLogo
Id: cz-organization-logo
Title: "Organization Logo"
Description: "An extension to associate a logo (e.g., image or icon) with an Organization, using a reference to a profile Attachment resource."
* ^url = $cz-organization-logo
* ^status = #active
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only Reference(CZ_Logo)
* valueReference 1..1
* valueReference ^short = "Reference to a Document reference containing the logo image"