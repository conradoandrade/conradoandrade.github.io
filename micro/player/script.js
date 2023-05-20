let player;
let volume = 30;

function onYouTubeIframeAPIReady() {
    player = new YT.Player("player", {
        events: {
            onReady: onPlayerReady,
        },
    });
}

function onPlayerReady(event) {
    player.setVolume(volume);
    var videoData = player.getVideoData();

    var videoTitle = videoData.title;
    var shareLink = "https://youtu.be/" + videoData.video_id;

    const btnplay = document.getElementById("btnplay");
    const btnpause = document.getElementById("btnpause");
    const btnvolumeup = document.getElementById("btnvolumeup");
    const btnvolumedown = document.getElementById("btnvolumedown");

    const playerContainer = document.getElementById("player-container");

    btnplay.addEventListener("click", () => {
        event.target.playVideo();
        fadeIn(playerContainer, 4);

        updateVolumeBackground(volume);

        console.log("Currently playing video: " + videoTitle);
        console.log("Currently playing video: " + shareLink);
    });

    btnpause.addEventListener("click", () => {
        event.target.pauseVideo();
        fadeOut(playerContainer, 5);
    });

    btnvolumeup.addEventListener("click", () => {
        changeVolume(event, 10);
    });

    btnvolumedown.addEventListener("click", () => {
        changeVolume(event, -10);
    });
}

function fadeIn(element, duration) {
    let opacity = 0;
    const step = 0.02;
    const interval = duration * 1000 * step;

    element.style.opacity = opacity;

    function increaseOpacity() {
        opacity += step;
        element.style.opacity = opacity;

        if (opacity >= 1) {
            clearInterval(fadeInInterval);
        }
    }

    const fadeInInterval = setInterval(increaseOpacity, interval);
}

function fadeOut(element, duration) {
    let opacity = 1;
    const step = 0.02;
    const interval = duration * 1000 * step;

    element.style.opacity = opacity;

    function decreaseOpacity() {
        opacity -= step;
        element.style.opacity = opacity;

        if (opacity <= 0) {
            clearInterval(fadeOutInterval);
        }
    }

    const fadeOutInterval = setInterval(decreaseOpacity, interval);
}

function changeVolume(event, delta) {
    volume += delta;
    if (volume > 100) {
        volume = 100;
    } else if (volume < 0) {
        volume = 0;
    }

    event.target.setVolume(volume);

    updateVolumeBackground(volume);
}

function updateVolumeBackground(volume) {
    const volumeBackground = document.getElementById("volumeBackground");
    volumeBackground.style.height = (volume * 100) / 100 + "vh";
}

document.addEventListener("contextmenu", (event) => {
    event.preventDefault();
});

const controls = document.querySelector(".controls");
const radioContent = document.querySelector(".radio_content");

radioContent.addEventListener("mouseenter", () => {
    controls.style.opacity = "1";
    radioContent.style.backgroundPosition = "251.6px 10px";
});

radioContent.addEventListener("mouseleave", () => {
    controls.style.opacity = "0";
    radioContent.style.backgroundPosition = "-260.3px 10px";
});
