## Pixel-Art
```css
canvas { image-rendering: crisp-edges; image-rendering: pixelated; }
```

## WebPack
`packages.json`
```json
"scripts": {
	"start": "webpack serve",
	"build": "webpack --mode=production"
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
	entry: './js/index.js',
	output: {
		path: path.resolve(__dirname, 'app'),
		filename: 'engine.js',
	},
	devServer: {
		contentBase: path.join(__dirname, 'app'),
		compress: false,
		port: 55555,
	},
};
```
