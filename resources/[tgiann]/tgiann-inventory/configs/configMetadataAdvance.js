const metadataAdvance = {
  // Example of a metadata advance item
  testitem: (metadata) => {
    return `<div class="item_info_container">
      <div class="item_info_row">
          <div class="item_info_row_left">Test Item Label:</div>
          <div class="item_info_row_right">3x</div>
      </div>
    </div>`;
  },
  testitem2: (metadata) => {
    return `<div class="item_info_container">
      <div class="item_info_row">
          <div class="item_info_row_left">${metadata.testValue}</div>
          <div class="item_info_row_right">${metadata.TestValueAmount}x</div>
      </div>
    </div>`;
  },
};

const getItemMetadata = (itemName, metadata) => {
  if (!metadata) return "";
  if (!metadataAdvance[itemName]) return "";

  return metadataAdvance[itemName](metadata);
};

RegisterNuiCallback("GetItemMetadata", (data, cb) => {
  const { itemName, metadata } = data;
  const html = getItemMetadata(itemName, metadata);
  SendNUIMessage({
    app: "app-inventory",
    method: "GetItemMetadataSuccess",
    data: html,
  });
  cb("");
});

const getMetadataAdvanceList = () => Object.keys(metadataAdvance);
exports("GetMetadataAdvanceList", getMetadataAdvanceList);
