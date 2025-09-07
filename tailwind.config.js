/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        './app/views/**/*.html.erb',
        './app/views/**/*.html.slim',
        './app/helpers/**/*.rb',
        './app/javascript/**/*.js',
        './app/assets/stylesheets/**/*.css'
    ],
    theme: { extend: {
            fontFamily: {
                mono: ['Space Mono', 'ui-monospace', 'monospace'],
            },
            colors: {
                primary: '#0E1236',
                secondary: '#292569'
            }
        } },
    plugins: [],
}
