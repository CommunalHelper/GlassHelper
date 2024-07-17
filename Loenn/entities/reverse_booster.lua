local drawableSprite = require("structs.drawable_sprite")

local reverseBooster = {}

reverseBooster.name = "GlassHelper/ReverseBooster"
reverseBooster.depth = -8500
reverseBooster.placements = {
    {
        name = "green",
        data = {
            red = false,
            twistSprite = "objects/revBooster/twist/twist"
        }
    },
    {
        name = "red",
        data = {
            red = true,
            twistSprite = "objects/revBooster/twist/twist"
        }
    }
}

function reverseBooster.sprite(room, entity)
    local spriteTexture = entity.red and "objects/booster/boosterRed00" or "objects/booster/booster00"
    local boosterSprite = drawableSprite.fromTexture(spriteTexture, entity)
    local overlaySprite = drawableSprite.fromTexture(entity.twistSprite .. "00", entity)
    return {boosterSprite, overlaySprite}
end

return reverseBooster
