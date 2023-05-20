function createApp(nameApp) {
    const appContainer = document.createElement("div");
    appContainer.id = nameApp;
    appContainer.classList.add("app");
    appContainer.style.position = "fixed";
    appContainer.style.top = "0";
    appContainer.style.left = "0";
    appContainer.style.width = "100%";
    appContainer.style.height = "97.5vh";

    const iframe = document.createElement("iframe");
    iframe.src = "micro/Characters/Conrad/index.html";
    iframe.style.width = "100%";
    iframe.style.height = "100%";
    iframe.style.border = "none";

    appContainer.appendChild(iframe);
    document.body.appendChild(appContainer);
}

createApp("myApp");

