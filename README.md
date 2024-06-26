# 芳香飲品屋

「芳香飲品屋」是您品味生活的最佳去處。我們以新鮮、天然的原料，精心調製出一系列獨特的飲品，每一口都是對品質的極致追求。

無論您喜歡清新怡人的果汁，還是濃郁香醇的咖啡，我們都能滿足您的需求。讓我們的招牌特色飲品帶給您無盡的驚喜和滿足感。

## 環境安裝

### 前置準備

1. 安裝xampp

2. 在 `xampp/htdocs` 輸入 `git clone https://github.com/Ru034/drinks_web.git`，把`drinks_web`改名為`www`

3. phpmyadmin 新增帳號

   - 帳號預設:ru
   - 密碼:0000

   若要使用自己的帳號，請在`php\connect.php`修改

4. 新增資料庫 : `beverage`

5. 匯入資料[beverage_backup.sql](https://github.com/Ru034/drinks_web/blob/main/beverage_backup.sql)

6. 安裝taliwind函式庫(可選，需有node)

   ```
   npm install
   ```



## 實現功能

1. 將飲料資訊頁面改為動態顯示

   * 從原本寫死在html改為由資料庫抓取[getDrinks.php](https://github.com/Ru034/drinks_web/blob/main/php/getDrinks.php)
   * 點擊後會顯示該飲料的資訊:圖片、名稱、價格、介紹

2. 實現登入和註冊

   註冊:

   * 填入個人資訊
   * 若密碼兩次不相符則無法註冊
   * 使用者名稱(帳號)不能相同(從資料庫檢查)
   * 密碼會進行hash處理
   * 成功後會將資料傳至資料庫登入

   登入:

   * 帳號密碼錯誤檢查
   * 登入成功後，瀏覽器cookie會記錄session
   * 每個頁面會檢查session是否與後端相同，自動登入

   編輯:

   - 登入成功後頭像會變化(沒有做自訂頭像功能)
   - 登入成功後再次點擊頭像會進入`welcom.html`(編輯頁面)
   - 自動從資料庫匯入資料，可在編輯頁面修改資料
   - 輸入密碼驗證後，更新資料庫資料
   - 登出帳號

3. 外送介面

   - 在未登入前，無法進入外送頁面(點擊會自動跳到登入頁面)
   - 自動從資料庫匯入資料，可更改姓名、電話、住址
   - 點餐介面幾乎與飲料資訊頁面一致，多出選擇數量、糖度冰塊
   - 在選擇相同飲料時會自動疊加上去(不同糖度冰塊視為不同飲料)
   - 按下確定後將資料放入選擇列表，並計算總金額
   - 送出表單後會將資料傳入資料庫中
  

   

