ActiveRecord::Base.transaction do
  # Backend Technologies
  backend = TechType.find_or_create_by!(name: 'Backend') do |tt|
    tt.icon_filename = 'backend.svg'
    tt.rank = 1
  end

  [
    { name: 'Ruby on Rails', rank: 1 },
    { name: 'Ruby', rank: 2 },
    { name: 'Sidekiq', rank: 3 },
    { name: 'i18n', rank: 4 }
  ].each do |tech_attrs|
    backend.technologies.find_or_create_by!(name: tech_attrs[:name]) do |tech|
      tech.rank = tech_attrs[:rank]
    end
  end

  # Frontend Technologies
  frontend = TechType.find_or_create_by!(name: 'Frontend') do |tt|
    tt.icon_filename = 'frontend.svg'
    tt.rank = 2
  end

  [
    { name: 'Tailwind CSS', rank: 1 },
    { name: 'Stimulus', rank: 2 },
    { name: 'Turbo (Hotwire)', rank: 3 },
    { name: 'React', rank: 4 }
  ].each do |tech_attrs|
    frontend.technologies.find_or_create_by!(name: tech_attrs[:name]) do |tech|
      tech.rank = tech_attrs[:rank]
    end
  end

  # Database Technologies
  database = TechType.find_or_create_by!(name: 'Database') do |tt|
    tt.icon_filename = 'database.svg'
    tt.rank = 3
  end

  [
    { name: 'PostgreSQL', rank: 1 },
    { name: 'Redis', rank: 2 }
  ].each do |tech_attrs|
    database.technologies.find_or_create_by!(name: tech_attrs[:name]) do |tech|
      tech.rank = tech_attrs[:rank]
    end
  end

  # Infrastructure Technologies
  infrastructure = TechType.find_or_create_by!(name: 'Infrastructure') do |tt|
    tt.icon_filename = 'cloud.svg'
    tt.rank = 4
  end

  [
    { name: 'AWS', rank: 1 },
    { name: 'Heroku', rank: 2 },
    { name: 'Docker', rank: 3 }
  ].each do |tech_attrs|
    infrastructure.technologies.find_or_create_by!(name: tech_attrs[:name]) do |tech|
      tech.rank = tech_attrs[:rank]
    end
  end

  # Testing Technologies
  testing = TechType.find_or_create_by!(name: 'Testing') do |tt|
    tt.icon_filename = 'testing.svg'
    tt.rank = 5
  end

  [
    { name: 'RSpec', rank: 1 },
    { name: 'Jest', rank: 2 }
  ].each do |tech_attrs|
    testing.technologies.find_or_create_by!(name: tech_attrs[:name]) do |tech|
      tech.rank = tech_attrs[:rank]
    end
  end

  # Monitoring Technologies
  monitoring = TechType.find_or_create_by!(name: 'Monitoring') do |tt|
    tt.icon_filename = 'monitoring.svg'
    tt.rank = 6
  end

  [
    { name: 'New Relic', rank: 1 },
    { name: 'Coralogix', rank: 2 }
  ].each do |tech_attrs|
    monitoring.technologies.find_or_create_by!(name: tech_attrs[:name]) do |tech|
      tech.rank = tech_attrs[:rank]
    end
  end

  # Collaboration Technologies
  collaboration = TechType.find_or_create_by!(name: 'Collaboration') do |tt|
    tt.icon_filename = 'collaboration.svg'
    tt.rank = 7
  end

  [
    { name: 'Slack', rank: 1 },
    { name: 'Jira', rank: 2 },
    { name: 'GitHub', rank: 5 }
  ].each do |tech_attrs|
    collaboration.technologies.find_or_create_by!(name: tech_attrs[:name]) do |tech|
      tech.rank = tech_attrs[:rank]
    end
  end

  # Design Technologies
  design = TechType.find_or_create_by!(name: 'Design') do |tt|
    tt.icon_filename = 'palette.svg'
    tt.rank = 8
  end

  [
    { name: 'Figma', rank: 1 }
  ].each do |tech_attrs|
    design.technologies.find_or_create_by!(name: tech_attrs[:name]) do |tech|
      tech.rank = tech_attrs[:rank]
    end
  end

  puts "Seeded #{TechType.count} tech types with #{Technology.count} technologies"
end
