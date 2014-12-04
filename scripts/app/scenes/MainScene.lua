local MainScene = class("MainScene", function()
	return display.newScene("MainScene")
end)

function MainScene:ctor()
	--我的参考分辨率是960*640，这是个横屏项目，而且是以高为标准。
	--背景图片的大小是1140*640
	local ph = "back.png"
	local bg = display.newSprite(ph, display.cx, display.cy)
	self:addChild(bg)

	--这个属于最小可视区域内的元素
	local paint_area = display.newSprite("b.png", display.cx - 263, display.cy)
	self:addChild(paint_area)

	--这个属于ui，我们的返回按钮可以置于这样一个位置
	local ui_area = display.newSprite("c.png", display.left + 50, display.top - 50)
	self:addChild(ui_area)

	--无论我们如何转换我们的屏幕分辨率，我们的主要显示区域黑板都很完整，而且我们的方格图片都紧紧靠着我们的黑板的左侧放置。
	--同时我们的左上角的按钮一直居于左上角不随分辨率的变化而变化。
	--我觉得，这可以作为一种快速的分辨率的适配。
end

function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene
