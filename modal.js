function createModal(item) {
    const modal = document.createElement("div");
    modal.classList.add("modal");
    modal.id = `modal${item.name}`;
    modal.dataset.itemName = item.name;


    if (item.content.defHeight) {
        modal.style.height = item.content.defHeight + "px";
    }
    if (item.content.defWidth) {
        modal.style.width = item.content.defWidth + "px";
    }

    console.log(item.content.defHeight);
    console.log(item.content.defWidth);

    modal.style.left = item.content.position ? item.content.position.left :  "151px";
    modal.style.top = item.content.position ? item.content.position.top : "151px";

    const settings = getSettings();
    settings.latestZIndex += 1;
    setSettings(settings);
    modal.style.zIndex = settings.latestZIndex;

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
    modalBody.style.height = item.content.defHeight ? item.content.defHeight : "300px";
    modalBody.style.width = item.content.defWidth ? item.content.defWidth : "300px";

    if (item.content.backgroundImage) {
        modalBody.style.backgroundImage = `url(${item.content.backgroundImage})`;
    }

    if (item.content.iframeURL !== undefined) {
        const iframe = document.createElement("iframe");
        iframe.src = item.content.iframeURL;
        iframe.style.width = "100%";
        iframe.style.height = "100%";
        iframe.style.border = "none";
        modalBody.appendChild(iframe);
    } else {
        const p = document.createElement("p");
        p.textContent = `Welcome to ${item.name}!`;
        modalBody.appendChild(p);
    }

    const resizeHoriGrip = document.createElement("div");
    resizeHoriGrip.classList.add("dragResizeModal");
    resizeHoriGrip.classList.add("horiDrag");
    modalBody.appendChild(resizeHoriGrip);

    const resizeVerGrip = document.createElement("div");
    resizeVerGrip.classList.add("dragResizeModal");
    resizeVerGrip.classList.add("verDrag");
    modalBody.appendChild(resizeVerGrip);

    modalContent.appendChild(modalHeader);
    modalContent.appendChild(modalBody);
    modal.appendChild(modalContent);
    document.querySelector(".desktop").appendChild(modal);

    if (item.content.isOpen) {
        modal.style.display = "block";
    }

    modal.addEventListener("click", () => {
        const settings = getSettings();
        settings.latestZIndex += 1;
        setSettings(settings);
        modal.style.zIndex = settings.latestZIndex;
    });

    closeBtn.addEventListener("click", () => {
        modal.style.display = "none";
    });

    const savePositionsDebounced = debounce(savePositions, 500);

    modalHeader.addEventListener("mousedown", dragMouseDown);

    function dragMouseDown(e) {
        e.preventDefault();
        let offsetX = e.clientX - modal.getBoundingClientRect().left;
        let offsetY = e.clientY - modal.getBoundingClientRect().top;

        function elementDrag(e) {
            e.preventDefault();
            if (!resizing) {
                modal.style.left = e.clientX - offsetX + "px";
                modal.style.top = e.clientY - offsetY + "px";
                savePositionsDebounced(items);
            }
        }

        function onMouseMove(e) {
            window.requestAnimationFrame(() => elementDrag(e));
        }

        window.onmousemove = onMouseMove;

        window.onmouseup = closeDragElement;

        function closeDragElement() {
            window.onmouseup = null;
            window.onmousemove = null;
            savePositionsDebounced(items);
        }
    }

    function closeResizeElement() {
        resizing = false;
        document.onmouseup = null;
        window.onmousemove = null;
        savePositionsDebounced(items);
    }

    resizeHoriGrip.addEventListener("mousedown", (e) => resizeMouseDown(e, true, false));
    resizeVerGrip.addEventListener("mousedown", (e) => resizeMouseDown(e, false, true));

    
    function resizeMouseDown(e, resizeHorizontal, resizeVertical) {
        e.preventDefault();
        resizing = true;
        let initialModalRect = modal.getBoundingClientRect();
        let initialWidth = initialModalRect.width;
        let initialHeight = initialModalRect.height;
        let initialMouseX = e.clientX;
        let initialMouseY = e.clientY;

        function elementResize(e) {
            e.preventDefault();
            let deltaX = e.clientX - initialMouseX;
            let deltaY = e.clientY - initialMouseY;
            let newWidth = resizeHorizontal ? initialWidth + deltaX : initialWidth;
            let newHeight = resizeVertical ? initialHeight + deltaY : initialHeight;

            if (item.content.minWidth) {
                newWidth = Math.max(newWidth, parseInt(item.content.minWidth));
            }
            if (item.content.minHeight) {
                newHeight = Math.max(newHeight, parseInt(item.content.minHeight));
            }
            if (item.content.maxWidth) {
                newWidth = Math.min(newWidth, parseInt(item.content.maxWidth));
            }
            if (item.content.maxHeight) {
                newHeight = Math.min(newHeight, parseInt(item.content.maxHeight));
            }

            modal.style.width = newWidth + "px";
            modal.style.height = newHeight + "px";
            modalBody.style.height = newHeight - modalHeader.clientHeight + "px";
            savePositionsDebounced(items);
        }

        function onMouseMove(e) {
            window.requestAnimationFrame(() => elementResize(e));
        }

        window.onmousemove = onMouseMove;

        document.onmouseup = closeResizeElement; // Call the closeResizeElement function from the mouseup event listener on the document
    }

  document.querySelector(".desktop").appendChild(modal);

  return modal;
  
  }

function createContextMenuModal(item) {
    contextMenu.innerHTML = ""; // Clear any previous contents

    const openFolderItem = document.createElement("li");
    openFolderItem.id = "openFolder";
    openFolderItem.textContent = "Open";

    const optionsItem = document.createElement("li");
    optionsItem.id = "options";
    optionsItem.textContent = "Options";

    contextMenu.appendChild(openFolderItem);
    contextMenu.appendChild(optionsItem);

    openFolderItem.addEventListener("click", function () {
        const itemName = contextMenu.dataset.itemName;
        const modal = document.getElementById(`modal${itemName}`);
        console.log(`Clicked on 'Open' for item '${itemName}'`);
        if (modal) {
            console.log(`Modal found:`, modal); 
            modal.style.display = "block";
            contextMenu.style.display = "none"; 
        } else {
            console.error(`Modal with ID 'modal${itemName}' not found`);
        }
    });

    optionsItem.addEventListener("click", function () {
        const itemName = contextMenu.dataset.itemName;
        const itemObject = main_items.find((i) => i.name === itemName);
        if (itemObject && itemObject.context_menu_content) {
            openContextMenuContentModal(itemObject.context_menu_content);
            contextMenu.style.display = "none"; // Hide the context menu
        } else {
            console.error(`Content not found for item '${itemName}'`);
        }
    });

    document.querySelector(".desktop").appendChild(contextMenu);

    return contextMenu;
}

function createContextMenuContentModal(item) {
    const contextMenuContentModal = document.createElement("div");
    contextMenuContentModal.classList.add("context-menu-content-modal");
    contextMenuContentModal.id = `contextMenuContentModal${item.name}`;
    contextMenuContentModal.dataset.itemName = item.name;

    const defaultWidth = 300;
    const defaultHeight = 200;
    const defaultCenterLeft = (window.innerWidth - defaultWidth) / 2;
    const defaultCenterTop = (window.innerHeight - defaultHeight) / 2;

    contextMenuContentModal.style.width = defaultWidth + "px";
    contextMenuContentModal.style.height = defaultHeight + "px";
    contextMenuContentModal.style.left = defaultCenterLeft + "px";
    contextMenuContentModal.style.top = defaultCenterTop + "px";

    if (item.context_menu_content) {
        item.context_menu_content.forEach((content) => {
            const contentElement = document.createElement("div");
            contentElement.textContent = content;
            contextMenuContentModal.appendChild(contentElement);
        });
    }

    return contextMenuContentModal;
}

function openContextMenuContentModal(contents) {
    const modal = document.createElement("div");
    modal.classList.add("context-menu");
    modal.style.display = "block";
    modal.style.left = contextMenu.style.left;
    modal.style.top = contextMenu.style.top;

    const closeModalButton = document.createElement("button");
    closeModalButton.textContent = "Close";
    closeModalButton.classList.add("options_close");
    closeModalButton.addEventListener("click", () => {
        modal.remove();
    });

    contents.forEach((contentObject) => {
        const contentWrapper = document.createElement("div");
        contentWrapper.classList.add("options_wrapper");

        contentWrapper.innerHTML = `
        <div class="options_header">${contentObject.title}</div>
        <p class="options_content">${contentObject.content}</p>
    `;
        modal.appendChild(contentWrapper);
    });

    modal.appendChild(closeModalButton);
    desktop.appendChild(modal);

    dragElement(modal);
}

function debounce(func, wait) {
    let timeout;
    return function (...args) {
        const context = this;
        clearTimeout(timeout);
        timeout = setTimeout(() => func.apply(context, args), wait);
    };
}

function throttle(func, limit) {
    let inThrottle;
    return function (...args) {
        const context = this;
        if (!inThrottle) {
            func.apply(context, args);
            inThrottle = true;
            setTimeout(() => (inThrottle = false), limit);
        }
    };
}

function dragElement(element) {
    let posX = 0;
    let posY = 0;
    let initialMouseX = 0;
    let initialMouseY = 0;

    element.onmousedown = onMouseDown;

    function onMouseDown(e) {
        e = e || window.event;
        e.preventDefault();
        initialMouseX = e.clientX;
        initialMouseY = e.clientY;
        document.onmouseup = onMouseUp;
        document.onmousemove = onMouseMove;
    }

    function onMouseMove(e) {
        e = e || window.event;
        e.preventDefault();
        posX = initialMouseX - e.clientX;
        posY = initialMouseY - e.clientY;
        initialMouseX = e.clientX;
        initialMouseY = e.clientY;
        element.style.top = element.offsetTop - posY + "px";
        element.style.left = element.offsetLeft - posX + "px";
    }

    function onMouseUp() {
        document.onmouseup = null;
        document.onmousemove = null;
    }
}
