def longname
  name = fullname
  return name unless organization_id
  organization = Organization.lookup(id: organization_id)
  return name += " (#{organization.name})" unless organization
end
