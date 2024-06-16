# 芳香飲品屋

「芳香飲品屋」是您品味生活的最佳去處。我們以新鮮、天然的原料，精心調製出一系列獨特的飲品，每一口都是對品質的極致追求。

無論您喜歡清新怡人的果汁，還是濃郁香醇的咖啡，我們都能滿足您的需求。讓我們的招牌特色飲品帶給您無盡的驚喜和滿足感。

## 環境安裝

### 前置準備

1. 安裝xampp
2. 在 `xampp/htdocs` 輸入 `git clone https://github.com/Ru034/drinks_web.git`，把`drinks_web`改名為`www`

2. phpmyadmin 新增帳號

   - 帳號預設:ru

   - 密碼:0000
   若要使用自己的帳號，請在`php\connect.php`修改

3. 新增資料庫 : `bevebeverage`

4. 匯入資料[beverage_backup.sql](https://github.com/Ru034/drinks_web/blob/main/beverage_backup.sql)

5. 安裝taliwind函式庫(可選，需有node)

   ```
   npm install
   ```

   

## 代辦清單

大改點餐畫面--不是一般的醜餒

- [x] 增加圖片預覽，點擊後跳出選單畫面
- [x] 增加購物清單
- [x] 可修改訂單-刪除、編輯
- [x] 增加基本資料選填
- [x] 透過資料庫自動填上預設資料
- [ ] 增加付款方式
- [x] 上傳資料庫

登入系統優化

- [x] cookie實現自動登入
- [x] 登出功能
- [x] 修改自己的基本資料
