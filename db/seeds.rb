#Read json files

## Parent models ##

years = JSON.parse(open('db/data/years.json').read)
years.each do |yr|
  Year.create(yr)
end

input_types = JSON.parse(open('db/data/input_types.json').read)
input_types.each do |input|
  InputType.create(input)
end

# roles = JSON.parse(open('db/data/roles.json').read)
# roles.each do |role|
#   Role.create(role)
# end

users = JSON.parse(open('db/data/users.json').read)
users.each do |user|
  User.create(
    username: user['username']
  )
  # if user['user_roles'].present?
  #   user['user_roles'].each do |ur|
  #     UserRole.create(
  #       user_id: User.find_by_username(user['username']).id,
  #       role_id: Role.find_by(name: ur).id
  #     )
  #   end
  # end
end

ar_assess_types = JSON.parse(open('db/data/2016/ar/assess_types.json').read)
ar_assess_types.each do |at|
  assess_t = AssessmentType.create(
    name: at['name'],
    ap_ar_flag: false,
    year_id: Year.find_by(name: '2016').id
  )
  as_path = at['name'].tr(' ','_').underscore
  assess_subtypes = JSON.parse(open("db/data/2016/ar/#{as_path}/assess_subtypes.json").read)
  assess_subtypes.each do |as|
    assess_s = AssessmentSubtype.create(
      name: as['name'],
      ap_ar_flag: false,
      year_id: Year.find_by(name: '2016').id,
      assessment_type_id: assess_t.id
    )
    assess_units = JSON.parse(open("db/data/2016/ar/#{as_path}/#{as['au_path']}/assess_units.json").read) if as['au_path'].present?
    if as['au_path'].present?
      assess_units.each do |au|
        assess_u = AssessmentUnit.create(
          name: au['name'],
          ap_ar_flag: false,
          year_id: Year.find_by(name: '2016').id,
          assessment_subtype_id: assess_s.id
        )
        templates = JSON.parse(open("db/data/2016/ar/#{as_path}/#{as['au_path']}/#{as['au_path']}.json").read)
        templates.each do |temp|
          tl = TemplateLayout.create(
            name: temp['name'],
            section_num: temp['section'],
            year_id: Year.find_by(name: '2016').id,
            assessment_unit_id: assess_u.id
          )
          temp['template_sublayout'].each do |temp_sub|
            ts = TemplateSublayout.create(
              name: temp_sub['name'],
              year_id: Year.find_by(name: '2016').id,
              input_type_id: InputType.find_by(name: temp_sub['input_type']).id,
              template_layout_id: tl.id
            )
            ts.section = Section.create( name: temp_sub['section'] )
            data = ""
            temp_sub['data'].each{ |d| data<<d } if temp_sub['data'].present?
            ts.template_datum = TemplateDatum.create( data: data ) if temp_sub['data'].present?
          end
        end
      end
    end
  end
end

ap_assess_types = JSON.parse(open('db/data/2016/ap/assess_types.json').read)
ap_assess_types.each do |at|
  assess_t = AssessmentType.create(
    name: at['name'],
    ap_ar_flag: true,
    year_id: Year.find_by(name: '2016').id
  )
  as_path = at['name'].tr(' ','_').underscore
  assess_subtypes = JSON.parse(open("db/data/2016/ap/#{as_path}/assess_subtypes.json").read)
  assess_subtypes.each do |as|
    assess_s = AssessmentSubtype.create(
      name: as['name'],
      ap_ar_flag: true,
      year_id: Year.find_by(name: '2016').id,
      assessment_type_id: assess_t.id
    )
    assess_units = JSON.parse(open("db/data/2016/ap/#{as_path}/#{as['au_path']}/assess_units.json").read) if as['au_path'].present?
    if as['au_path'].present?
      assess_units.each do |au|
        assess_u = AssessmentUnit.create(
          name: au['name'],
          ap_ar_flag: true,
          year_id: Year.find_by(name: '2016').id,
          assessment_subtype_id: assess_s.id
        )
        templates = JSON.parse(open("db/data/2016/ap/#{as_path}/#{as['au_path']}/#{as['au_path']}.json").read)
        templates.each do |temp|
          tl = TemplateLayout.create(
            name: temp['name'],
            section_num: temp['section'],
            year_id: Year.find_by(name: '2016').id,
            assessment_unit_id: assess_u.id
          )
          temp['template_sublayout'].each do |temp_sub|
            ts = TemplateSublayout.create(
              name: temp_sub['name'],
              year_id: Year.find_by(name: '2016').id,
              input_type_id: InputType.find_by(name: temp_sub['input_type']).id,
              template_layout_id: tl.id
            )
            ts.section = Section.create( name: temp_sub['section'] )
            data = ""
            temp_sub['data'].each{ |d| data<<d } if temp_sub['data'].present?
            ts.template_datum = TemplateDatum.create( data: data ) if temp_sub['data'].present?
          end
        end
      end
    end
  end
end
