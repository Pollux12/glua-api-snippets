---@meta

---@class Angle
--- List of all possible functions to manipulate angles.
---
--- Created by Global.Angle.
---@field p number
---@field y number
---@field r number
---@field pitch number
---@field yaw number
---@field roll number
---@field x number
---@field z number
---@field [1] number
---@field [2] number
---@field [3] number
---@operator add(Angle): Angle
---@operator div(number): Angle
---@operator mul(number): Angle
---@operator sub(Angle): Angle
---@operator unm: Angle
local Angle = {}

---@class Color
---@field r number The red component of the color.
---@field g number The green component of the color.
---@field b number The blue component of the color.
---@field a number The alpha component of the color.
local Color = {}

---@class ENT : ENTITY
ENT = {}

---@class SWEP : WEAPON
SWEP = {}

---
--- The **TOOL** table is used in Sandbox tool creation. You can find a list of callbacks on the  page and a list of methods on the  page. Do note that some of the fields below have no effect on server-side operations.
---
--- The tool information box drawn on the HUD while your tool is selected has 2 values that are set by [language.Add](https://wiki.facepunch.com/gmod/language.Add).
--- * `tool.[tool mode].name` - The tool name (Note this is NOT the same as TOOL.Name)
--- * `tool.[tool mode].desc` - The tool description
---
--- Ensure that all tool file names are entirely lowercase.  Including capital letters can lead to unintended behavior.
---
---@class TOOL : Tool
TOOL = {}

---@class VMatrix
--- A 4x4 matrix.
---
--- This page lists all possible functions to manipulate matrices.
---
--- This object can be created by Global.Matrix.
---@operator add(VMatrix): VMatrix
---@operator mul(Vector): Vector
---@operator mul(VMatrix): VMatrix
---@operator sub(VMatrix): VMatrix
---@operator unm: VMatrix
local VMatrix = {}

---@class Vector
--- List of all possible functions to manipulate vectors.
---
--- Created by Global.Vector.
---@field x number
---@field y number
---@field z number
---@field [1] number
---@field [2] number
---@field [3] number
---@operator add(Vector): Vector
---@operator div(number|Vector): Vector
---@operator mul(number|Vector): Vector
---@operator sub(Vector): Vector
---@operator unm: Vector
local Vector = {}
