var items;
var resizing;
var isDragging = false;

var main_items = [{
        name: "Project1",
        icon: {
            image: "folder-icon.png",
            position: {
                left: "50px",
                top: "50px",
            },
        },
        content: {
            title: "Project1",
            iframeURL: "",
        },
    },
    {
        name: "MyPortfolio",
        icon: {
            image: "folder-icon.png",
            position: {
                left: "150px",
                top: "50px",
            },
        },
        content: {
            title: "My Portfolio",
            iframeURL: "",
        },
    },
];

items = loadPositions();


function createModal(item) {
    const folder = document.createElement("div");
    folder.classList.add("folder");
    folder.id = `folder${item.name}`;
    folder.style.left = item.icon.position.left;
    folder.style.top = item.icon.position.top;

    const folderImg = document.createElement("img");
    folderImg.src = item.icon.image;
    folderImg.alt = "Folder";

    const folderText = document.createElement("p");
    folderText.textContent = item.name;

    folder.appendChild(folderImg);
    folder.appendChild(folderText);
    document.querySelector(".desktop").appendChild(folder);

    const modal = document.createElement("div");
    modal.classList.add("modal");
    modal.id = `modal${item.name}`;

    // Set the initial size and position of the modal
    modal.style.width = item.content.size ? item.content.size.width : "300px";
    modal.style.height = item.content.size ? item.content.size.height : "300px";
    modal.style.left = item.content.position ? item.content.position.left : "50px";
    modal.style.top = item.content.position ? item.content.position.top : "50px";

    const modalContent = document.createElement("div");
    modalContent.classList.add("modal-content");

    const modalHeader = document.createElement("div");
    modalHeader.classList.add("modal-header");

    const closeBtn = document.createElement("span");
    closeBtn.classList.add("close");
    closeBtn.id = `close${item.name}`;
    closeBtn.innerHTML = "&times;";

    const modalTitle = document.createElement("h3");
    modalTitle.textContent = item.content.title;

    modalHeader.appendChild(closeBtn);
    modalHeader.appendChild(modalTitle);

    const modalBody = document.createElement("div");
    modalBody.classList.add("modal-body");
    modalBody.style.height = item.content.size ? item.content.size.height : "300px";


    if (item.content.iframeURL) {
        const iframe = document.createElement("iframe");
        iframe.src = item.content.iframeURL;
        modalBody.appendChild(iframe);
    } else {
        const p = document.createElement("p");
        p.textContent = `Welcome to ${item.name}!`;
        modalBody.appendChild(p);
    }

    const resizeGrip = document.createElement("div");
    resizeGrip.style.cssText = 'width: 10px; height: 10px; background-color: #000; position: absolute; right: 0; bottom: 0;';
    modalBody.appendChild(resizeGrip);

    modalContent.appendChild(modalHeader);
    modalContent.appendChild(modalBody);
    modal.appendChild(modalContent);
    document.querySelector(".desktop").appendChild(modal);

    modal.addEventListener("click", () => {
        var style = window.getComputedStyle(modal)
        console.log(parseInt(style.zIndex, 10));
        modal.style.zIndex = parseInt(style.zIndex, 10) + 1; 

    });

    folder.addEventListener("click", () => {
        modal.style.display = "block";
    });

    closeBtn.addEventListener("click", () => {
        modal.style.display = "none";
    });
    modalHeader.addEventListener('mousedown', dragMouseDown);

    function dragMouseDown(e) {
        e.preventDefault();
        document.onmouseup = closeDragElement;
        document.onmousemove = elementDrag;
        let offsetX = e.clientX - modal.getBoundingClientRect().left;
        let offsetY = e.clientY - modal.getBoundingClientRect().top;

        function elementDrag(e) {
            e.preventDefault();
            if (!resizing) { // add this line
                modal.style.left = (e.clientX - offsetX) + "px";
                modal.style.top = (e.clientY - offsetY) + "px";
                savePositions();
            }
        }

        function closeDragElement() {
            document.onmouseup = null;
            document.onmousemove = null;
            savePositions();
        }
    }

    // Resize modal
    resizeGrip.addEventListener('mousedown', resizeMouseDown);

    function resizeMouseDown(e) {
        e.preventDefault();
        resizing = true;
        document.onmouseup = closeResizeElement;
        document.onmousemove = elementResize;
        let initialWidth = modal.clientWidth;
        let initialHeight = modal.clientHeight;
        let initialMouseX = e.clientX;
        let initialMouseY = e.clientY;


        function elementResize(e) {
            e.preventDefault();
            resizing = false;
            isDragging = true;
            let newWidth = initialWidth + e.clientX - initialMouseX;
            let newHeight = initialHeight + e.clientY - initialMouseY;
            modal.style.width = newWidth + "px";
            modal.style.height = newHeight + "px";
            modalBody.style.height = (newHeight - modalHeader.clientHeight) + "px";
            document.body.style.cursor = "none";
        }

        function closeResizeElement() {
            resizing = false;
            isDragging = false;
            document.onmouseup = null;
            document.onmousemove = null;
            document.body.style.cursor = "auto";

        }

    }

    // Draggable folder icon
    folder.addEventListener('mousedown', folderDragMouseDown);

    function folderDragMouseDown(e) {
        e.preventDefault();
        document.onmouseup = closeFolderDragElement;
        document.onmousemove = folderElementDrag;
        let offsetX = e.clientX - folder.getBoundingClientRect().left;
        let offsetY = e.clientY - folder.getBoundingClientRect().top;

        function folderElementDrag(e) {
            e.preventDefault();
            folder.style.left = (e.clientX - offsetX) + "px";
            folder.style.top = (e.clientY - offsetY) + "px";
        }

        function closeFolderDragElement() {
            document.onmouseup = null;
            document.onmousemove = null;
            savePositions();
        }
    }
}

items.forEach((item) => {
    createModal(item);
});


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

function savePositions() {
    const positions = items.map(item => {
        const folder = document.getElementById(`folder${item.name}`);
        const modal = document.getElementById(`modal${item.name}`);



        return {
            name: item.name,
            icon: {
                position: {
                    left: folder.style.left,
                    top: folder.style.top,
                },
            },
            content: {
                title: item.content.title,
                iframeURL: item.content.iframeURL,
                size: {
                    width: modal.style.width,
                    height: modal.style.height,
                },
                position: {
                    left: modal.style.left,
                    top: modal.style.top,
                },
            },
        };
    });

    setCookie("positions", JSON.stringify(positions), 30);
}

function loadPositions() {
    const positions = getCookie("positions");
    if (positions) {
        items = JSON.parse(positions);
        return items;
    }else{
        return main_items;
    }
}

