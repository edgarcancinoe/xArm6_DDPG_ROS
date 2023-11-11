
"use strict";

let MoveAxisAngle = require('./MoveAxisAngle.js')
let GetErr = require('./GetErr.js')
let ConfigToolModbus = require('./ConfigToolModbus.js')
let PlayTraj = require('./PlayTraj.js')
let TCPOffset = require('./TCPOffset.js')
let SetString = require('./SetString.js')
let ClearErr = require('./ClearErr.js')
let GripperState = require('./GripperState.js')
let SetDigitalIO = require('./SetDigitalIO.js')
let GetFloat32List = require('./GetFloat32List.js')
let SetAxis = require('./SetAxis.js')
let SetLoad = require('./SetLoad.js')
let SetMultipleInts = require('./SetMultipleInts.js')
let Call = require('./Call.js')
let SetControllerAnalogIO = require('./SetControllerAnalogIO.js')
let GetControllerDigitalIO = require('./GetControllerDigitalIO.js')
let Move = require('./Move.js')
let FtIdenLoad = require('./FtIdenLoad.js')
let SetModbusTimeout = require('./SetModbusTimeout.js')
let GetSetModbusData = require('./GetSetModbusData.js')
let GripperConfig = require('./GripperConfig.js')
let FtCaliLoad = require('./FtCaliLoad.js')
let GripperMove = require('./GripperMove.js')
let GetAnalogIO = require('./GetAnalogIO.js')
let MoveVelocity = require('./MoveVelocity.js')
let SetInt16 = require('./SetInt16.js')
let GetInt32 = require('./GetInt32.js')
let GetDigitalIO = require('./GetDigitalIO.js')
let SetToolModbus = require('./SetToolModbus.js')
let MoveVelo = require('./MoveVelo.js')
let SetFloat32 = require('./SetFloat32.js')

module.exports = {
  MoveAxisAngle: MoveAxisAngle,
  GetErr: GetErr,
  ConfigToolModbus: ConfigToolModbus,
  PlayTraj: PlayTraj,
  TCPOffset: TCPOffset,
  SetString: SetString,
  ClearErr: ClearErr,
  GripperState: GripperState,
  SetDigitalIO: SetDigitalIO,
  GetFloat32List: GetFloat32List,
  SetAxis: SetAxis,
  SetLoad: SetLoad,
  SetMultipleInts: SetMultipleInts,
  Call: Call,
  SetControllerAnalogIO: SetControllerAnalogIO,
  GetControllerDigitalIO: GetControllerDigitalIO,
  Move: Move,
  FtIdenLoad: FtIdenLoad,
  SetModbusTimeout: SetModbusTimeout,
  GetSetModbusData: GetSetModbusData,
  GripperConfig: GripperConfig,
  FtCaliLoad: FtCaliLoad,
  GripperMove: GripperMove,
  GetAnalogIO: GetAnalogIO,
  MoveVelocity: MoveVelocity,
  SetInt16: SetInt16,
  GetInt32: GetInt32,
  GetDigitalIO: GetDigitalIO,
  SetToolModbus: SetToolModbus,
  MoveVelo: MoveVelo,
  SetFloat32: SetFloat32,
};
