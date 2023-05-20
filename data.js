var main_items = [
    {
        name: "Music Player",
        icon: {
            image: "img/icos/ico1.png",
            position: {
                left: "250px",
                top: "50px",
            },
        },
        content: {
            isApp: true,
            backgroundImage : "img/icos/ico4.png",
            isOpen: false,
            title: "Music Player",
            iframeURL: "micro/player/player.html",
            defHeight: 500,
            defWidth: 400,
            minHeight: 450,
            minWidth: 400,
            maxHeight: 500,
            maxWidth: 400,
        },
         context_menu_content: [
          {
            title: "About Music Player",
            content: "Mood Player. Sit back and Relax",
          },
        ],
    },
    {
        name: "We Are Humans",
        icon: {
            image: "img/icos/ico2.png",
            position: {
                left: "150px",
                top: "50px",
            },
        },
        content: {
            isApp: false,
            backgroundImage : "img/bg.jpg", 
            isOpen: false,
            title: "We Are Humans",
            iframeURL: "img/port/WAH/thumb.gif",
            defHeight: 600,
            defWidth: 800,
            minHeight: 600,
            minWidth: 800,
            maxHeight: 1024,
            maxWidth: 1920,
        },
        context_menu_content: [
          {
            title: "About Work case 1",
            content: "This is the best work case.",
          }
        ],
    },
    {
        name: "Work Database",
        icon: {
            image: "img/icos/ico4.png",
            position: {
                left: "50px",
                top: "50px",
            },
        },
        content: {
            isApp: false,
            backgroundImage: "img/bg.jpg",
            isOpen: false,
            title: "My Portfolio ",
            iframeURL: "micro/Panels/index.html",
            defHeight: 600,
            defWidth: 800,
            minHeight: 600,
            minWidth: 800,
            maxHeight: 1024,
            maxWidth: 1920,
        },
        context_menu_content: [
            {
                title: "About Work case 1",
                content: "This is the best work case.",
            }
        ],
    },
];

var start_menu_items = [
    {
        icon: "img/icos/ico2.png",
        name: "Twitter",
        description: "Description for Item 1",
        link: "https://example.com/item1",
    },
    {
        icon: "img/icos/ico3.png",
        name: "Youtube",
        description: "Description for Item 1",
        link: "https://example.com/item1",
    },
    {
        icon: "img/icos/ico4.png",
        name: "Email",
        description: "Description for Item 1",
        link: "https://example.com/item1",
    },
];

