'use strict';

// Include gulp
var gulp = require('gulp');

// Include Our Plugins
var jshint = require('gulp-jshint');
var stylish = require('jshint-stylish');
var sass = require('gulp-sass');
var sourcemaps = require('gulp-sourcemaps');
var path = require('path');
var minifycss = require('gulp-minify-css');
var changed = require('gulp-changed');
var sassLint = require('gulp-sass-lint');

//General
var psProjectDir = 'prestashop';
var themeName = 'default-bootstrap';
var projectDir = path.resolve(__dirname);

var paths = {
    prestashopSassFiles: './' + psProjectDir + '/themes/default-bootstrap/sass/**/[^_]*.scss', // exclude bootstrap_lib & font-awesome files
    // prestashopSassFiles: './' + psProjectDir + '/themes/default-bootstrap/sass/**{*.scss,!(bootstrap_lib|font-awesome)}/[^_]*.scss' // exclude bootstrap_lib & font-awesome dirs (not working)
    prestashopCssDir: './' + psProjectDir + '/themes/default-bootstrap/css',
    prestashopJsFiles: './' + psProjectDir + '/themes/default-bootstrap/js/**/*.js',
    prestashopJsDir: './' + psProjectDir + '/themes/default-bootstrap/js/',

    // experiment
    psSassFiles: './' + psProjectDir + '/themes/default-bootstrap/sass/*.scss',
    psSassModulesFiles: './' + psProjectDir + '/themes/default-bootstrap/sass/modules/**/*.scss'
};

/*
* Custom routine to cancel gulp when jshint is failed
* (Currently not implemented in gulp-jshint :/)
*/
var map = require('map-stream');
var exitOnJshintError = map(function (file, cb) {
    if (!file.jshint.success) {
        console.error('jshint failed');
        process.exit(1);
    }
});

/* Task
* Lint all prestashop theme javascript files
*/
gulp.task('lint', function() {
    return gulp.src(paths.prestashopJsFiles)
        .pipe(jshint())
        .pipe(jshint.reporter('jshint-stylish'))
        .pipe(exitOnJshintError);
});

/* Task
* Compile our prestashop SASS files
*/
gulp.task('sass', function() {
    return gulp.src(paths.prestashopSassFiles)
        .pipe(sassLint({
            rules: {
                'property-sort-order': 0,
                'no-color-literals': 1,
                'force-element-nesting': 0,
                'class-name-format': 0,
                'no-ids': 0,
                'nesting-depth': 1,
                'no-qualifying-elements': 0,
                'force-pseudo-nesting': 0,
                'variable-name-format': 0,
                'no-important': 0,
                'force-attribute-nesting': 0,
                'mixin-name-format': 0
            }
        }))
        .pipe(sassLint.format())
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(changed(paths.prestashopCssDir, {extension: '.css'}))
        .pipe(sourcemaps.write('', {sourceRoot: '../sass'}))
        .pipe(gulp.dest(paths.prestashopCssDir));
});

/* Task
* Watch Files For Changes
*/
gulp.task('watch', function() {
    gulp.watch(paths.prestashopJsFiles, ['lint']);
    gulp.watch(paths.prestashopSassFiles, ['sass']);
});

// Default Task
gulp.task('default', ['lint', 'sass', 'watch']);