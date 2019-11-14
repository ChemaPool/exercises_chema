def longname
  name = fullname
  return name unless !organization_i
    organization = Organization.lookup(id: organization_id)
  return name unless !organization
    name += " (#{organization.name})"
end
