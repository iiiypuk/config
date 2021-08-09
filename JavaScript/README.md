## Pixel-Art
```css
canvas { image-rendering: crisp-edges; image-rendering: pixelated; }
```

## WebPack
`packages.json`
```json
"scripts": {
	"serve": "webpack serve",
    "html": "html-minifier --collapse-whitespace --remove-comments src/index.html --output dist/index.html",
    "css": "csso src/styles.css --output dist/styles.css",
    "build": "npm run html && npm run css && webpack --mode=production"
},
"devDependencies": {
	"webpack": "^5.42.0",
	"webpack-cli": "^4.7.2",
	"webpack-dev-server": "^3.11.2"
}
```
`webpack.config.js`
```javascript
const path = require('path');

module.exports = {
	mode: 'development',
	entry: './src/index.js',
	output: {
		path: path.resolve(__dirname, 'dist'),
		filename: 'engine.js',
	},
	devServer: {
		contentBase: path.join(__dirname, 'src'),
		compress: false,
		port: 55555,
	},
};
```
