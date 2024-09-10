-- Print iniziale per confermare attivazione dell'init di NVIM

print("learner start..")

print("fortis fortuna adiuvat")

-- richiama la directory josh contenenti i lua delle mie configurazioni
require('josh')

print([[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠞⠋⠁⠀⠀⠀⠀⠀⠉⠙⠲⠦⣄⡀⠀⠀⠀⠀⣀⣠⠴⠶⠒⠒⠛⠛⠒⠶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣦⣠⠶⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠏⠀⠀⠀⠀⠀⠀⢀⣠⠴⠒⠂⠀⠀⠀⠈⠙⠓⠶⣤⡀⣿⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⣀⣀⣀⡈⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠃⠀⠀⠀⠀⢀⡴⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠶⣄⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠁⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠶⠶⠒⠒⠂⠀⠸⠶⢤⣄⡀⠀⠀⢀⣀⠠⠤⠄⠒⠒⠀⠐⠒⠲⠦⠿⣷⣤⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⣞⣯⠥⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠼⣧⠀⣀⣠⡤⠤⠀⠀⠐⠛⠛⠛⠛⠓⠲⠤⢤⣙⣷⣄⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣤⠞⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠔⣚⣭⠞⠋⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⡘⣿⠉⠀⠀⠀⠀⣀⣀⣠⣄⣠⣠⣤⣤⣄⣀⣙⡛⢻⣦⡀
⠀⠀⠀⠀⠀⠀⣠⠞⠁⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⣠⡶⠛⠓⠛⠉⠀⠀⠀⠀⣀⣤⣤⣶⣾⣿⣯⣍⠉⠉⠉⠉⠉⢻⣠⡤⠖⠚⠉⠉⠉⣽⣿⣿⣿⣿⣿⣦⠀⠉⠉⠛⣿⠇
⠀⠀⠀⠀⠀⣸⠋⠀⠀⠾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠶⢶⣶⠶⠶⠒⠚⠋⢉⣼⣿⠉⣿⡿⠿⣿⣷⡀⠀⠀⢀⡞⠁⠀⠀⠀⠀⢀⣾⣿⣠⣿⡏⠉⢻⣿⣷⠀⠀⢀⣸⠃
⠀⠀⠀⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⣌⠙⠶⢤⣀⡀⣿⣿⣿⢻⣿⡀⠀⣼⣿⣧⣀⣴⣿⡷⢤⣀⣀⣀⡀⢸⣿⣿⣭⣿⣷⣶⣿⣿⠿⢶⣾⡿⠁⠀
⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠳⠦⣌⣉⣛⣛⣛⣛⣛⡛⣛⣛⡛⣭⣴⠟⠋⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠋⠉⠁⠀⠀⣠⠟⠁⠀⠀⠀
⠀⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁⠀⢀⣤⠞⠁⠀⠀⠀⠘⠷⣤⡀⠀⠀⠀⠀⠀⢀⣤⡤⠖⠛⠁⠀⠀⠀⠀⠀
⠀⢀⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠶⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠙⠯⠉⠉⠁⠀⠀⠈⣧⡀⠀⠀⠀⠀⠀⠀⠀
⢠⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣦⠀⠀⠀⠀⠀⠀
⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀
⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀
⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠶⠛⠉⠉⠉⠉⠉⠉⠉⠛⠲⢦⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⡴⠟⢧⠀⠀⠀
⢺⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⠁⠀⢀⣤⣤⠴⠶⠶⠶⠶⣤⣄⣀⠀⠈⠉⠉⠉⠙⠛⠓⠒⠒⠶⠶⠶⠶⠶⠶⠒⠚⠛⠛⠉⠉⠉⠁⢀⣿⡿⠀⠀⠀
⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⠘⢷⣀⡀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠉⠙⠳⠶⢦⣤⣤⣤⣤⣄⣀⣀⣀⣀⣀⣀⣀⣀⣀⣠⣤⣤⡶⢶⢿⠋⠁⠀⠀⠀⠀
⠀⠈⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⡀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⠛⠓⠶⠤⢤⣤⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣼⠟⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠲⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠙⠛⠛⠛⠛⠛⠛⠒⠒⠒⢛⣻⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣶⠟⠛⢷⣄⠤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡴⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⡏⢐⡆⠀⠉⠻⢦⣄⣉⠉⠓⠒⠶⠦⣄⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⠶⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⡇⢸⡇⠀⠀⠀⠀⠈⠉⠛⠷⠶⣦⣤⣀⣀⠀⠈⠉⠉⠉⠂⠐⠒⠂⠠⠤⠤⠄⠀⠠⠄⠤⠤⠤⠀⠒⠂⣀⣼⣯⣁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⡇⠘⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠷⠶⢤⣤⣤⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣠⣤⡴⠾⠛⠋⠀⠀⠉⠛⠶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠛⠛⠛⠋⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣧⣀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠉⢳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠉⠉⠉⠉⠉⠉⠉⠉⠉⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠿⠿⠿⠿⠿⠷⠿⠿⠿⠾⠶⠾⠿⠷⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀
]])
