import PySimpleGUI as sg

FIRST_LAYOUT = [
    [
        sg.Text("Gestion des utilisateurs")
    ],
    [
        sg.Button("Ajouter un utilisateur")
    ],
    [
        sg.Button("Supprimer un utilisateur")
    ]
]

ADDUSER_LAYOUT = [
    [
        sg.Text("Ajouter un nouvel utilisateur")
    ],
    [
        sg.Text("Nom d'utilisateur : "),
        sg.In(size=(20, 1), enable_events=True, key="-USERNAME-")
    ],
    [
        sg.Text("Mot de passe : "),
        sg.In(size=(20, 1), enable_events=True, key="-PASSWORD-")
    ],
    [
        sg.Button("OK")
    ],
    [
        sg.Button("Annuler")
    ]
]

DELUSER_LAYOUT = [
    [
        sg.Text("Supprimer un utilisateur")
    ],
    [
        sg.Text("Nom d'utilisateur : "),
        sg.In(size=(20, 1), enable_events=True, key="-USERNAME-")
    ],
    [
        sg.Button("Annuler")
    ],
    [
        sg.Button("OK")
    ]
]

FIRST_LAYOUT_NAME = "Gestion des utilisateurs"
ADDUSER_LAYOUT_NAME = "Ajouter un utilisateur"
DELUSER_LAYOUT_NAME = "Supprimer un utilisateur"

# def open_window(name, layout):
#    window = sg.Window(name, layout, modal=True)
#    choice = None
#    while True:
#        event, values = window.read()
#        if event == "Annuler" or event == sg.WIN_CLOSED:
#            break

#    window.close()

def add_user(username, password):

     # Ask for the input
     un = username

     # Asking for users password
     pw = password

     try:
         # executing useradd command using subprocess module
         subprocess.run(['useradd', '-p', pw, un ])
     except:
         print(f"Failed to add user.")
         sys.exit(1)

add_user()


# Création des fenêtres
start_window = sg.Window(FIRST_LAYOUT_NAME, FIRST_LAYOUT)
add_user_window = sg.Window(ADDUSER_LAYOUT_NAME, ADDUSER_LAYOUT)
del_user_window = sg.Window(DELUSER_LAYOUT_NAME, DELUSER_LAYOUT)

# Boucle d'utilisation
while True:
    # Ouverture de la fenêtre principale
    event, values = start_window.read()
    if event == "Ajouter un utilisateur":
        while True:
            open_window(ADDUSER_LAYOUT_NAME, ADDUSER_LAYOUT)
            if event == "OK":
                add_user_window.hide()


    if event == sg.WIN_CLOSED:
        break
start_window.close()
addWindow.close()
