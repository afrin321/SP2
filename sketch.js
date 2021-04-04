let x_arr = [];
let y_arr = [];
//let m, b;
let a, b, c, d;

const learningRate = 0.5; //0.1;
const optimizer = tf.train.sgd(learningRate);

function setup() {
	createCanvas(500, 500);
	//m = tf.variable(tf.scalar(random(1)));
	//b = tf.variable(tf.scalar(random(1)));
	a = tf.variable(tf.scalar(random(-1, 1)));
	b = tf.variable(tf.scalar(random(-1, 1)));
	c = tf.variable(tf.scalar(random(-1, 1)));
	d = tf.variable(tf.scalar(random(-1, 1)));
}

function prediction(x) {
	// y = mx+b
	const x_t = tf.tensor1d(x);
	//const y_t = x_t.mul(m).add(b);
	const y_t = ((x_t.pow(tf.scalar(3))).mul(a)).add(x_t.pow(tf.scalar(2)).mul(b)).add(x_t.mul(c)).add(d);
	//.add(x_t.mul(c).add(d))));
	return y_t;
}

function loss(pred, label) {
	// calc the mean squared difference
	return pred.sub(label).square().mean();
}
function mousePressed() {
	let x = map(mouseX, 0, width, 0, 1);
	let y = map(mouseY, 0, height, 1, 0);
	x_arr.push(x);
	y_arr.push(y);
}

function draw() {
	background(0);

	//console.log(y_arr);
	tf.tidy(() => {
		if (y_arr.length > 1) {
			const tmp = tf.tensor1d(y_arr);
			optimizer.minimize(() => loss(prediction(x_arr), tmp));

			//const tmpLineX = [0, 0.2, 0.4, 0.6, 0.8, 1];
			let curveX = [];
			for (let i=0; i<=1; i+=0.01){ //0.1
				//let x = map(i, 0, 1, 0, width);
				curveX.push(i);

				//let y = map(y_arr[i], 1, 0, 0, height)
			}
			const tmpY = tf.tidy(() => prediction(curveX));
			let curveY = tmpY.dataSync();
			tmpY.dispose();

			
			/*let x1 = map(tmpLineX[0], 0, 1, 0, width);
			let x2 = map(tmpLineX[1], 0, 1, 0, width);
			let x3 = map(tmpLineX[2], 0, 1, 0, width);
			let x4 = map(tmpLineX[3], 0, 1, 0, width);
			let x5 = map(tmpLineX[4], 0, 1, 0, width);
			let x6 = map(tmpLineX[5], 0, 1, 0, width);

			let y1 = map(tmpLineY[0], 0, 1, height, 0);
			let y2 = map(tmpLineY[1], 0, 1, height, 0);
			let y3 = map(tmpLineY[2], 0, 1, height, 0);
			let y4 = map(tmpLineY[3], 0, 1, height, 0);
			let y5 = map(tmpLineY[4], 0, 1, height, 0);
			let y6 = map(tmpLineY[5], 0, 1, height, 0);*/

			stroke(255, 0, 0);
			strokeWeight(3);
			//curve(0, height, x1, y1, x2, y2, x4, y4, x6, y6, width, 0);
			noFill();
			beginShape();
			for (let i=0; i<curveX.length; i++){
				let x =  map(curveX[i], 0, 1, 0, width);
				let y = map(curveY[i], 0, 1, height, 0);
				curveVertex(x, y);
			}
			/*curveVertex(0, height);
			curveVertex(x1, y1);
			curveVertex(x2, y2);
			curveVertex(x3, y3);
			curveVertex(x4, y4);
			curveVertex(x5, y5);
			curveVertex(x6, y6);
			curveVertex(width, 0);*/
			endShape(); 

			//line(x1, y1, x2, y2);
		}
	});

	stroke(255);
	strokeWeight(10);
	for (let i = 0; i < x_arr.length; i++) {
		let x = map(x_arr[i], 0, 1, 0, width);
		let y = map(y_arr[i], 0, 1, height, 0);
		point(x, y);
	}
}
