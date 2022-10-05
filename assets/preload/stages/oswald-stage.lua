function onCreate()
	makeLuaSprite('bg', 'BG_OSWALD', -600, -300)
	updateHitbox('bg')
	addLuaSprite('bg', false)
	
	makeAnimatedLuaSprite('grain', 'grain')
	addAnimationByPrefix('grain', 'idle', 'grain', 24, true)
	setGraphicSize('grain', screenWidth + 6, screenHeight + 6)
	screenCenter('grain')
	setObjectCamera('grain', 'other')
	setProperty('grain.x', getProperty('grain.x') + 3)
	setProperty('grain.y', getProperty('grain.y') + 3)
	setProperty('grain.antialiasing', false)
	addLuaSprite('grain', false)
	objectPlayAnimation('grain', 'idle', true)
	
	makeAnimatedLuaSprite('daStatic', 'daSTAT', 0, 0)
	setGraphicSize('daStatic', screenWidth, screenHeight)
	setProperty('daStatic.alpha', 0.05)
	screenCenter('daStatic')
	setObjectCamera('daStatic', 'other')
	addAnimationByPrefix('daStatic', 'static', 'staticFLASH', 24, true)
	addLuaSprite('daStatic', false)
	objectPlayAnimation('daStatic', 'static', true)
end

function onCreatePost()

    makeLuaText('score','',0,15,520); 
    setTextSize('score', 20);
    setTextFont('score', "wi.ttf") 
    addLuaText('score');

    makeLuaText('misses','',0,15,560); 
    setTextSize('misses', 20);
    setTextFont('misses', "wi.ttf")
    addLuaText('misses');
 
    makeLuaText('accu', 'Accuracy: '..math.floor(rating * 100, 2)..'%', 0, 15,600) 
    setTextSize('accu', 20);
    setTextFont('accu', "wi.ttf")
    addLuaText('accu');

    makeLuaText('sick','',0,1150,500); 
    setTextSize('sick', 20);
    setTextFont('sick', "wi.ttf")
    addLuaText('sick');

    makeLuaText('good','',0,1150,530); 
    setTextSize('good', 20);
    setTextFont('good', "wi.ttf")
    addLuaText('good');

    makeLuaText('bad','',0,1150,560); 
    setTextSize('bad', 20);
    setTextFont('bad', "wi.ttf")
    addLuaText('bad');

    makeLuaText('shit','',0,1150,595); 
    setTextSize('shit', 20);
    setTextFont('shit', "wi.ttf")
    addLuaText('shit');
end

function onUpdate()
    setTextString('sick', 'Sick: '..getProperty('sicks'));
    setTextString('good', 'Good: '..getProperty('goods'));
    setTextString('bad', 'Bad: '..getProperty('bads'));
    setTextString('shit', 'Shit: '..getProperty('shits'));
    setTextString('score', 'Score: '..getProperty('songScore'));
    setTextString('misses', 'Misses: '..getProperty('songMisses'));
    setTextString('accu','Accuracy: '..getProperty('ratingPercent'));

end

function onUpdatePost()
  setProperty('timeBarBG.visible', false)
  setProperty('scoreTxt.visible', false)

  setProperty('timeBar.x', 445)
  setProperty('timeBar.scale.x', 3.275)
  setProperty('timeBar.y', 710)
  setObjectCamera('timeBar', 'other')

  setTextSize('timeTxt', 20)
  setTextFont('timeTxt', "wi.ttf")
  setTextBorder('timeTxt', 1, '000000')
  setTextAlignment('timeTxt', 'left')
  setProperty('timeTxt.x', 10)
  setProperty('timeTxt.y', 685)
  setObjectCamera('timeTxt', 'other')

  setProperty('timeBar.color', getColorFromHex('ffffff'))

end
