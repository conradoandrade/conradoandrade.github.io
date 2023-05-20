function setCookie(name, value, days) {
    let expires = "";
    if (days) {
        const date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toUTCString();
    }
    const sameSite = "; SameSite=None";
    const secure = "; Secure";
    document.cookie = name + "=" + (value || "") + expires + sameSite + secure + "; path=/";
}

function getCookie(name) {
    const nameEQ = name + "=";
    const ca = document.cookie.split(';');
    for (let i = 0; i < ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) === ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}

function savePositions(items) {
    const positions = items.map(item => {
        const folder = document.getElementById(`folder${item.name}`);
        const modal = document.getElementById(`modal${item.name}`);

        return {
            name: item.name,
            icon: {
                image: item.icon.image,
                position: {
                    left: folder.style.left,
                    top: folder.style.top,
                },
            },
            content: {
                isApp: item.content.isApp,
                isOpen: modal.style.display === "block",
                title: item.content.title,
                backgroundImage: item.content.backgroundImage,
                iframeURL: item.content.iframeURL,
                defHeight: item.content.defHeight,
                defWidth: item.content.defWidth,
                minHeight: item.content.minHeight,
                minWidth: item.content.minWidth,
                maxHeight: item.content.maxHeight,
                maxWidth: item.content.maxWidth,
             position: {
                left: modal.style.left,
                top: modal.style.top,
            },
            },
       
            context_menu_content: item.context_menu_content,
        };
    });

    setCookie("positions", JSON.stringify(positions), 30);
}

function loadPositions(main_items) {
    const positions = getCookie("positions");
    if (positions) {
        items = JSON.parse(positions);
        items.forEach((item) => {
            const folder = document.getElementById(`folder${item.name}`);
            if (folder) {
                folder.style.left = item.icon.position.left;
                folder.style.top = item.icon.position.top;
            }
        });
        return items;
    } else {
        return main_items;
    }
}

function getSettings() {
    const settings = getCookie("settings");
    if (settings) {
        return JSON.parse(settings);
    } else {
        return {
            backgroundInt: 0,
            lastZIndex: 0,
        };
    }
}

function setSettings(settings) {
    setCookie("settings", JSON.stringify(settings), 30);
}

document.addEventListener("keydown", function(event) {
  if (event.ctrlKey && event.keyCode === 83) {
    window.alert("Hi!");
    window.location.reload(true);
    localStorage.clear();
    sessionStorage.clear();
  }
});

const contextMenu = document.createElement('ul');
contextMenu.classList.add('context-menu');
contextMenu.id = 'contextMenu';
const openFolderItem = document.createElement('li');
openFolderItem.id = 'openFolder';
openFolderItem.textContent = 'Open';
const optionsItem = document.createElement('li');
optionsItem.id = 'options';
optionsItem.textContent = 'Options';
contextMenu.appendChild(openFolderItem);
contextMenu.appendChild(optionsItem);
desktop.appendChild(contextMenu);

desktop.addEventListener("contextmenu", function (event) {
  event.preventDefault();
  const x = event.clientX;
  const y = event.clientY;
  const target = event.target;

  if (target.classList.contains("folder")) {
    contextMenu.style.display = "block";
    contextMenu.style.left = x + "px";
    contextMenu.style.top = y + "px";
  } 
});



function generateStartMenuContent() {
    const startMenu = document.getElementById("start_menu");
    let menuContent = "<ul>";
    start_menu_items.forEach(item => {
        menuContent += `
            <li onclick="window.open('${item.link}', '_blank')">
                <img src="${item.icon}" alt="${item.name} icon">
                <div>
                    <strong>${item.name}</strong>
                    <p>${item.description}</p>
                </div>
            </li>
        `;
    });
    menuContent += "</ul>";
    startMenu.innerHTML += menuContent;
}

function toggleStartMenu() {
    const startMenu = document.getElementById("start_menu");
    if (startMenu.style.display === "none") {
        startMenu.style.display = "block";
    } else {
        startMenu.style.display = "none";
    }
}

generateStartMenuContent();


function enterFullscreen() {
    if (!document.fullscreenElement && !document.mozFullScreenElement && !document.webkitFullscreenElement && !document.msFullscreenElement) {
        if (document.documentElement.requestFullscreen) {
            //document.documentElement.requestFullscreen();
        } else if (document.documentElement.mozRequestFullScreen) { // Firefox
            //document.documentElement.mozRequestFullScreen();
        } else if (document.documentElement.webkitRequestFullscreen) { // Chrome, Safari and Opera
           // document.documentElement.webkitRequestFullscreen();
        } else if (document.documentElement.msRequestFullscreen) { // IE/Edge
           // document.documentElement.msRequestFullscreen();
        }
    }
}

function exitFullscreen() {
    if (document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement || document.msFullscreenElement) {
        if (document.exitFullscreen) {
            document.exitFullscreen();
        } else if (document.mozCancelFullScreen) { // Firefox
            document.mozCancelFullScreen();
        } else if (document.webkitExitFullscreen) { // Chrome, Safari and Opera
            document.webkitExitFullscreen();
        } else if (document.msExitFullscreen) { // IE/Edge
            document.msExitFullscreen();
        }
    }
}

document.getElementById('enterButton').addEventListener('click', handleEnterButtonClick);

function handleEnterButtonClick() {
    document.getElementById('enterButton').removeEventListener('click', handleEnterButtonClick);
    enterFullscreen();
    fadeOut(document.getElementById('enter'));
    playAudio('audios/versao.mp3');

    // remove the event listener
}

function fadeOut(element) {
    element.style.transition = "opacity 1s ease-out";
    element.style.opacity = 0;
    setTimeout(function () {
        element.style.display = 'none';
    }, 1000); 
}

var audio = null;
function playAudio(url) {
    if (audio != null && !audio.paused) {
        audio.pause();
        audio.currentTime = 0; 
    }
    audio = new Audio(url);
    audio.play();
}

document.addEventListener('keydown', function (e) {
    if (e.key === 'f' || e.key === 'F') {
        let apps = document.querySelector(".app");
        apps.classList.add('focus');
    }
});

document.addEventListener('keyup', function (e) {
    if (e.key === 'f' || e.key === 'F') {
        let apps = document.querySelector(".app");
        apps.classList.remove('focus');

    }
});

const COLORS = ['#42c8b0', '#d36f88', '#fc8d45', '#4575f3', '#6933b0'];

const getRandomColor = () => COLORS[Math.floor(Math.random() * COLORS.length)];

const setTooltipStyle = (tooltip, color, visibility, opacity) => {
    tooltip.style.backgroundColor = color;
    tooltip.style.borderColor = color;
    tooltip.style.visibility = visibility;
    tooltip.style.opacity = opacity;
}

const TOOLTIP_VISIBLE_DURATION = 4000;
const TOOLTIP_INTERVAL_DURATION = 6000;

setInterval(() => {
    const tooltip = document.getElementById('tooltip');
    const randomColor = getRandomColor();

    setTooltipStyle(tooltip, randomColor, "visible", 1);

    setTimeout(() => {
        setTooltipStyle(tooltip, randomColor, "visible", 0);
    }, TOOLTIP_VISIBLE_DURATION);

}, TOOLTIP_INTERVAL_DURATION);
