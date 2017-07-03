var audio;
window.onload = function() {
	audio = document.getElementById("bj");
	WriteCanPlay("canplay", audio);
	audio.addEventListener("timeupdate", function() {
		WriteMessage("duration", this.duration.toPrecision(3));
		WriteMessage("playbackRate", this.playbackRate.toPrecision(3));
	}, false);
	audio.addEventListener("timeupdate", function() {
		WriteMessage("currentTime", this.currentTime.toPrecision(3));
		WriteMessage("volume", this.volume.toPrecision(2));
		WriteMessage("playbackRate", this.playbackRate.toPrecision(3));
	});
}
function WriteCanPlay(idspan, a) {
	var txt ="";
	if (a.canPlayType("audio/mp3")) txt+= " mp3";
	if (a.canPlayType("audio/wav")) txt+= ' wav';
	if (a.canPlayType("audio/ogg")) txt+= ' ogg';
	WriteMessage(idspan, txt);
}
function WriteOnLoadstart(idspan, a) {
	WriteMessage(idspan, a.volume);
};
function exe_volumeMinus() {
	audio.volume = (audio.volume - 0.1).toPrecision(3);
};
function exe_ratePlus() {
	audio.playbackRate = (audio.playbackRate + 0.1).toPrecision(3);
};
function exe_seek() {
	audio.currentTime = (audio.currentTime + 10).toPrecision(3);
};
function exe_start() {
	audio.play();
};
function exe_stop() {
	audio.pause();
};
function WriteMessage(idspan, txt) {
	var span=document.getElementById(idspan);
	span.innerHTML = txt;
}
