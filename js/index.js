import  './exceljs.min.js';
function onClick() {
  const workbook = new ExcelJS.Workbook(); // 創建試算表檔案
  const sheet = workbook.addWorksheet("工作表範例1"); //在檔案中新增工作表 參數放自訂名稱

  sheet.addTable({
    // 在工作表裡面指定位置、格式並用columsn與rows屬性填寫內容
    name: "table名稱", // 表格內看不到的，算是key值，讓你之後想要針對這個table去做額外設定的時候，可以指定到這個table
    ref: "A1", // 從A1開始
    columns: [{ name: "名字" }, { name: "年齡" }, { name: "電話" }],
    rows: [
      ["小明", "20", "0987654321"],
      ["小美", "23", "0912345678"]
    ]
  });

  // 表格裡面的資料都填寫完成之後，訂出下載的callback function
  // 異步的等待他處理完之後，創建url與連結，觸發下載
  workbook.xlsx.writeBuffer().then((content) => {
    const link = document.createElement("a");
    const blobData = new Blob([content], {
      type: "application/vnd.ms-excel;charset=utf-8;"
    });
    link.download = "測試的試算表.xlsx";
    link.href = URL.createObjectURL(blobData);
    link.click();
  });
}

document.getElementById("downloadBtn").addEventListener("click", onClick);
