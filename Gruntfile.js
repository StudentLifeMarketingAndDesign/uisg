module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({

    pkg: grunt.file.readJSON('package.json'),

    concat: {
      dist: {
        src: [
          'themes/uisg/js/plugins/*.js',
          'themes/uisg/js/main.js'
        ],
        dest: 'themes/uisg/js/build/main.js'
      }
    },

    uglify: {
      build: {
        src: ['themes/uisg/js/build/main.js'],
        dest: 'themes/uisg/js/build/main.min.js'
      }
    },

    sass: {
      dist: {
        options: {
          style: 'compressed'
        },
        files: {
          'themes/uisg/css/site.css': 'themes/uisg/scss/site.scss',
        }
      }
    },

    imagemin: {
      dynamic: {
        files: [{
          expand: true,
          cwd: 'themes/uisg/images/',
          src: ['**/*.{png,jpg,gif}'],
          dest: 'themes/uisg/images/'
        }]
      }
    },

    watch: {
      scripts: {
        files: ['themes/uisg/js/*.js', 'themes/uisg/js/**/*.js'],
        tasks: ['concat', 'uglify'],
        options: {
          spawn: false,
        }
      },
      css: {
        files: ['themes/uisg/scss/*.scss', 'themes/uisg/scss/**/*.scss'],
        tasks: ['sass'],
        options: {
          spawn: false,
        }
      }
    },

  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-simple-watch');

  // Default task(s).
  grunt.registerTask('default', ['concat', 'uglify', 'sass' , 'simple-watch']);

};