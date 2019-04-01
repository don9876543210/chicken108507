//----------------------------------------
// 載入必要的模組
//----------------------------------------
var linebot = require('linebot');
var express = require('express');


//----------------------------------------
// 填入自己在Line Developers的channel值
//----------------------------------------
var bot = linebot({
    channelId: '1560499088',
    channelSecret: '201a1bc5eafee89e2981adfdfbcedb5a',
    channelAccessToken: 'DTgSQFH7SS43jeUKpgsb+WxBSDyHxAfbx3/MHjbJ+ZX+wa+7TwfGjK0d7PdHKT/rKMv8huuCVlVLRauZA1ZtQYF//bYdLOEe5J5OFdCOhy+MNbBiU/RbOJHVkkLFhU1L7E8l60PCl9y5A73KeUyMogdB04t89/1O/w1cDnyilFU='
});


//========================================
// 機器人接受訊息的處理
//========================================
bot.on('message', function(event) {
    event.reply('Hello, 你好');  
});
//========================================


//----------------------------------------
// 建立一個網站應用程式app
// 如果連接根目錄, 交給機器人處理
//----------------------------------------
const app = express();
const linebotParser = bot.parser();
app.post('/', linebotParser);


//----------------------------------------
// 可直接取用檔案的資料夾
//----------------------------------------
app.use(express.static('public'));


//----------------------------------------
// 監聽3000埠號, 
// 或是監聽Heroku設定的埠號
//----------------------------------------
var server = app.listen(process.env.PORT || 3000, function() {
    const port = server.address().port;
    console.log("正在監聽埠號:", port);
});