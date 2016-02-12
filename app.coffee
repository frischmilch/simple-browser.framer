# Create simple browser device
Framer.DeviceView.Devices["simple-browser-1024-600"] =
	"deviceType": "desktop"
	"screenWidth": 1024
	"screenHeight": 600
	"deviceImage": "images/simplebrowser-1024.png"
	"deviceImageWidth": 1140
	"deviceImageHeight": 760
Framer.Device.deviceType = "simple-browser-1024-600" # Set custom device

document.body.style.cursor = "auto" # Normal desktop cursor

bg = new BackgroundLayer backgroundColor: "#bbb" # canvas background for artboards

# Create draggable box
layerA = new Layer
	width: 200
	height: 200
	borderRadius: 8
	backgroundColor: "white"
layerA.center()
layerA.draggable.enabled = true
layerA.draggable.constraints = Screen

# Show corners
tl = new Layer backgroundColor: "red", width: 50, height: 50
tr = new Layer backgroundColor: "red", width: 50, height: 50, maxX: Screen.width
bl = new Layer backgroundColor: "red", width: 50, height: 50, maxY: Screen.height
br = new Layer backgroundColor: "red", width: 50, height: 50, maxY: Screen.height, maxX: Screen.width
