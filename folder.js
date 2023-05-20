function createFolder(item, modal) {
    const folder = document.createElement("div");
    folder.classList.add("folder");
    folder.id = `folder${item.name}`;
    folder.style.left = item.icon.position.left;
    folder.style.top = item.icon.position.top;
    folder.innerHTML = `<img src="${item.icon.image}" alt="Folder"><p>${item.name}</p>`;
    document.querySelector(".desktop").appendChild(folder);

    folder.addEventListener("click", () => modal.style.display = "block");
    folder.addEventListener("mousedown", folderDragMouseDown);
    folder.dataset.itemName = item.name;

    function folderDragMouseDown(e) {
        e.preventDefault();
        if (e.button === 2) {
            e.stopPropagation();

            // Helper function to close all context menus
            function closeAllContextMenus() {
                const existingContextMenus = document.querySelectorAll(".desktop .context-menu");
                existingContextMenus.forEach(menu => {
                    menu.remove();
                });
            }

            // Close all context menus before opening a new one
            closeAllContextMenus();

            const contextMenuModal = createContextMenuModal(item);
            Object.assign(contextMenuModal.style, { display: 'block', left: e.clientX + 'px', top: e.clientY + 'px' });
            contextMenu.dataset.itemName = item.name;
            desktop.appendChild(contextMenuModal);
            return;
        }

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
            document.onmouseup = document.onmousemove = null;
            savePositions(items);
        }
    }

    openFolderItem.addEventListener('click', function() {
        const itemName = contextMenu.dataset.itemName;
        const modal = document.getElementById(`modal${itemName}`);
        modal ? modal.style.display = 'block' : console.error(`Modal with ID 'modal${itemName}' not found`);
    });

    return folder;
}

items = loadPositions(main_items);

items.forEach(item => {
    const modal = createModal(item);
    createFolder(item, modal);
});
