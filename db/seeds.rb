TechType.find_or_create_by!(name: 'Backend', icon_filename: 'backend.svg').technologies.create!([
  { name: 'Ruby on Rails', rank: 1 },
  { name: 'Ruby', rank: 2 },
  { name: 'Sidekiq', rank: 3 },
  { name: 'i18n', rank: 4 }
])

TechType.find_or_create_by!(name: 'Frontend', icon_filename: 'frontend.svg').technologies.create!([
  { name: 'Tailwind CSS', rank: 1 },
  { name: 'Stimulus', rank: 2 },
  { name: 'Turbo (Hotwire)', rank: 3 },
  { name: 'React', rank: 4 }
])

TechType.find_or_create_by!(name: 'Database', icon_filename: 'database.svg').technologies.create!([
  { name: 'PostgreSQL', rank: 1 },
  { name: 'Redis', rank: 2 }
])

TechType.find_or_create_by!(name: 'Infrastructure', icon_filename: 'cloud.svg').technologies.create!([
  { name: 'AWS', rank: 1 },
  { name: 'Heroku', rank: 2 },
  { name: 'Docker', rank: 3 }
])

TechType.find_or_create_by!(name: 'Testing', icon_filename: 'testing.svg').technologies.create!([
  { name: 'RSpec', rank: 1 },
  { name: 'Jest', rank: 2 }
])

TechType.find_or_create_by!(name: 'Monitoring', icon_filename: 'monitoring.svg').technologies.create!([
  { name: 'New Relic', rank: 1 },
  { name: 'Coralogix', rank: 2 }
])

TechType.find_or_create_by!(name: 'Collaboration', icon_filename: 'collaboration.svg').technologies.create!([
  { name: 'Slack', rank: 1 },
  { name: 'Jira', rank: 2 },
  { name: 'GitHub', rank: 5 }
])

TechType.find_or_create_by!(name: 'Design', icon_filename: 'palette.svg').technologies.create!([
  { name: 'Figma', rank: 1 }
])