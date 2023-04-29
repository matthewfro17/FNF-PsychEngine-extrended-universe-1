--created with Super_Hugo's Stage Editor v1.6.3
local shadname = "glitchEffect";

function onCreate()

	makeLuaSprite('obj5', 'redsky', -2888, -1882)
    initLuaShader(shadname)
    setSpriteShader('obj5', shadname)
    setShaderFloat('obj5', 'uWaveAmplitude', 0.1)
    setShaderFloat('obj5', 'uFrequency', 5)
    setShaderFloat('obj5', 'uSpeed', 2)	
	setObjectOrder('obj5', 0)
	scaleObject('obj5', 2.6, 2.6)
	addLuaSprite('obj5', true)

end

function onUpdatePost(elapsed)
	setShaderFloat('obj5', 'uTime', os.clock())
end