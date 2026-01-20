
"use strict";

let Execute = require('./Execute.js')
let SetYawRate = require('./SetYawRate.js')
let GetTelemetry = require('./GetTelemetry.js')
let SetPosition = require('./SetPosition.js')
let SetAltitude = require('./SetAltitude.js')
let NavigateGlobal = require('./NavigateGlobal.js')
let SetRates = require('./SetRates.js')
let SetVelocity = require('./SetVelocity.js')
let SetLEDEffect = require('./SetLEDEffect.js')
let SetYaw = require('./SetYaw.js')
let Navigate = require('./Navigate.js')
let SetAttitude = require('./SetAttitude.js')

module.exports = {
  Execute: Execute,
  SetYawRate: SetYawRate,
  GetTelemetry: GetTelemetry,
  SetPosition: SetPosition,
  SetAltitude: SetAltitude,
  NavigateGlobal: NavigateGlobal,
  SetRates: SetRates,
  SetVelocity: SetVelocity,
  SetLEDEffect: SetLEDEffect,
  SetYaw: SetYaw,
  Navigate: Navigate,
  SetAttitude: SetAttitude,
};
