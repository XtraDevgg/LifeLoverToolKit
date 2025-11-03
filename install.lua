local inet = require("internet") -- Загружаем библиотеку для работы с интернетом

-- Функция для скачивания файла по URL
local function downloadFile(url, path)
    local result = ""
    -- Считываем данные чанками и соединяем их
    for chunk in inet.request(url) do
        result = result .. chunk
    end

    -- Записываем скачанное в файл
    local file = io.open(path, "w")
    file:write(result)
    file:close()
    print("Успешно загружено: " .. path)
end

print("Installing LLFETCH...")
downloadFile("https://raw.githubusercontent.com/XtraDevgg/LifeLoverToolKit/refs/heads/main/bin/llfetch.lua", "/bin/fetch.lua")
print("Up2dating boot...")
downloadFile("https://raw.githubusercontent.com/XtraDevgg/LifeLoverToolKit/refs/heads/main/bin/boot.lua", "/lib/core/boot.lua")
print("This is all, you can reboot.")
