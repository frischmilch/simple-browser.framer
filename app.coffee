# Create simple browser device
Framer.DeviceView.Devices["simple-browser-1280-680"] =
	"deviceType": "desktop"
	"screenWidth": 1280
	"screenHeight": 680
	"deviceImage": "images/simple-browser-1280.png"
	"deviceImageWidth": 2792/2
	"deviceImageHeight": 1680/2
Framer.Device.deviceType = "simple-browser-1280-680" # Set custom device
document.body.style.cursor = "auto" # Normal desktop cursor

bg = new BackgroundLayer backgroundColor: "#bbb"

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
tl = new Layer backgroundColor: "red", size: 50
tr = new Layer backgroundColor: "red", size: 50, maxX: Screen.width
bl = new Layer backgroundColor: "red", size: 50, maxY: Screen.height
br = new Layer backgroundColor: "red", size: 50, maxY: Screen.height, maxX: Screen.width