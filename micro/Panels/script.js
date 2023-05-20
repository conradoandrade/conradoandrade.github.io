const folderContainer = document.getElementById("folder-container");
const backButton = document.getElementById('back-button');
const searchInput = document.getElementById("search-input");
searchInput.addEventListener('input', searchByNameTagOrYear);
let currentPath = [];
var folderData;
var selectedTags = new Set();
var selectedYears = new Set();

fetch("data.json")
    .then(response => response.json())
    .then(data => {
        generateYearAndTagLists(data.folders);
        render(data.folders);
        folderData = data.folders;
    })
    .catch(error => {
        console.error("Error fetching data:", error);
    });

backButton.addEventListener('click', () => {
    currentPath.pop();
    navigateToPathIndex(currentPath.length);
});

function generateYearAndTagLists(folders) {
    const yearsSet = new Set();
    const tagsSet = new Set();

    folders.forEach(folder => {
        if (folder.year) yearsSet.add(folder.year);
        if (folder.tag) tagsSet.add(folder.tag);
    });

    const leftPanel = document.getElementById("left-panel");
    leftPanel.innerHTML = '';
    createListSection(leftPanel, "Years", yearsSet, selectedYears);
    createListSection(leftPanel, "Tags", tagsSet, selectedTags);
}

function createListSection(panel, title, items, selectedSet) {
    const heading = document.createElement("h1");
    heading.innerText = title;
    panel.appendChild(heading);

    const ul = document.createElement("ul");
    Array.from(items).sort().forEach(item => {
        const li = document.createElement("li");
        const button = document.createElement("button");
        button.innerText = item;
        button.addEventListener("click", () => {
            if (selectedSet.has(item)) {
                selectedSet.delete(item);
                button.classList.remove("selected");
            } else {
                if (title === "Years") {
                    selectedSet.add(parseInt(item));
                } else {
                    selectedSet.add(item);
                }
                button.classList.add("selected");
            }
            filterByTagsAndYears();
        });
        li.appendChild(button);
        ul.appendChild(li);
    });
    panel.appendChild(ul);
}

function render(contents) {
    folderContainer.innerHTML = '';
    contents.forEach(item => {
        const elem = document.createElement('div');
        elem.className = item.type;
        elem.dataset.name = item.name;

        if (item.type === 'folder') {
            if (item.image) {
                elem.style.backgroundImage = `url(${item.image})`;
                elem.className += " item-bg";
            }
            if (hasYoutubeVideo(item)) {
                const videoId = getYoutubeVideoId(item);
                elem.style.backgroundImage = `url(https://img.youtube.com/vi/${videoId}/maxresdefault.jpg), url(https://img.youtube.com/vi/${videoId}/sddefault.jpg), url(https://img.youtube.com/vi/${videoId}/mqdefault.jpg)`;
                elem.className += " item-bg";
            }
            if (hasImage(item)) {
                elem.style.backgroundImage = `url(${item.image})`;
                elem.style.backgroundSize = 'cover'; // Optional: adjust background-size
                elem.style.backgroundPosition = 'center'; // Optional: adjust background-position
                elem.style.backgroundRepeat = 'no-repeat'; // Optional: adjust background-repeat
            }
            elem.addEventListener('click', handleFolderClick);
        }
        

        const folder_content = document.createElement('div');
        folder_content.className = "folder-content";
        elem.appendChild(folder_content);

        const folder_title = document.createElement('div');
        folder_title.innerText = item.name;
        folder_title.className = "folder-title";
        folder_content.appendChild(folder_title);

        const folder_tag = document.createElement('div');
        folder_tag.innerText = item.tag;
        folder_tag.className = "folder-tag";
        folder_content.appendChild(folder_tag);

        const folder_year = document.createElement('div');
        folder_year.innerText = item.year;
        folder_year.className = "folder-year";
        folder_content.appendChild(folder_year);

        folderContainer.appendChild(elem);
    });
}

function handleFolderClick(event) {
    const folderName = event.target.dataset.name;
    const folder = findFolder(folderName, folderData);
    if (folder) {
        if (folderName === "Youtube") {
            openYoutubeModal(folder.contents[0].videoId);
        } else {
            currentPath.push(folderName);
            render(folder.contents);
            toggleYearAndTagButtons(false);
        }
    }
}

function openYoutubeModal(videoId) {
    const modal = document.createElement("div");
    modal.id = "youtube-modal";
    modal.style.display = "block";
    modal.style.width = "80%";
    modal.style.height = "80%";
    modal.style.position = "fixed";
    modal.style.top = "50%";
    modal.style.left = "50%";
    modal.style.transform = "translate(-50%, -50%)";
    modal.style.backgroundColor = "rgba(0, 0, 0, 0.8)";
    modal.style.zIndex = 1000;

    const iframe = document.createElement("iframe");
    iframe.width = "100%";
    iframe.height = "100%";
    iframe.src = `https://www.youtube.com/embed/${videoId}?modestbranding=1`;
    iframe.frameBorder = "0";
    iframe.allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture";
    iframe.allowFullscreen = true;

    modal.appendChild(iframe);
    document.body.appendChild(modal);

    modal.addEventListener("click", () => {
        modal.remove();
    });

    const closeButton = document.createElement("span");
    closeButton.innerHTML = "&times;";
    closeButton.style.position = "absolute";
    closeButton.style.top = "10px";
    closeButton.style.right = "15px";
    closeButton.style.fontSize = "30px";
    closeButton.style.fontWeight = "bold";
    closeButton.style.cursor = "pointer";
    closeButton.style.color = "white";
    closeButton.style.zIndex = 1;

    modal.appendChild(closeButton);
    document.body.appendChild(modal);

    closeButton.addEventListener("click", () => {
        modal.remove();
    });

    modal.addEventListener("click", (event) => {
        if (event.target === modal) {
            modal.remove();
        }
    });
}

function toggleYearAndTagButtons(enabled) {
    const leftPanel = document.getElementById("left-panel");
    const buttons = leftPanel.querySelectorAll("button");
    buttons.forEach(button => {
        button.disabled = !enabled;
    });

    backButton.disabled = currentPath.length === 0;
}
function findFolder(name, contents) {
    for (const item of contents) {
        if (item.type === 'folder' && item.name === name) return item;
        if (item.type === 'folder') {
            const found = findFolder(name, item.contents);
            if (found) return found;
        }
    }
    return null;
}

const homeButton = document.getElementById("home-button");
homeButton.addEventListener("click", () => {
    currentPath = [];
    navigateToPathIndex(currentPath.length);
});

function navigateToPathIndex(pathIndex) {
    currentPath.splice(pathIndex);
    let contents = folderData;
    currentPath.forEach(folderName => {
        const folder = findFolder(folderName, contents);
        if (folder) {
            contents = folder.contents;
        }
    });

    render(contents);
    toggleYearAndTagButtons(currentPath.length === 0);
}

function searchByTagAndYear() {
    console.log(selectedYears);
    console.log(selectedTags);

    const filteredFolders = folderData.filter(folder => {
        const tagMatches = selectedTags.size === 0 || (folder.tag && selectedTags.has(folder.tag));
        const yearMatches = selectedYears.size === 0 || (folder.year && selectedYears.has(folder.year.toString()));
        return tagMatches && yearMatches;
    });

    render(filteredFolders);
}

function searchByNameTagOrYear() {
    const searchText = searchInput.value.toLowerCase();

    const filteredFolders = folderData.filter(folder => {
        const nameMatches = folder.name.toLowerCase().includes(searchText);
        return nameMatches;
    });

    render(filteredFolders);
}

function filterByTagsAndYears() {
    const filteredFolders = folderData.filter(folder => {
        const tagMatches = selectedTags.size === 0 || (folder.tag && selectedTags.has(folder.tag));
        const yearMatches = selectedYears.size === 0 || (folder.year && selectedYears.has(Number(folder.year)));
        return tagMatches && yearMatches;
    });

    render(filteredFolders);
}

function hasYoutubeVideo(folder) {
    return folder.contents.some(content => content.type === 'youtube');
}

function getYoutubeVideoId(folder) {
    const youtubeContent = folder.contents.find(content => content.type === 'youtube');
    return youtubeContent ? youtubeContent.videoId : null;
}

function hasImage(folder) {
    return folder.contents.some(content => content.type === 'image');
}