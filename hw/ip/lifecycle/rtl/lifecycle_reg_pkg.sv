// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package lifecycle_reg_pkg;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////
  typedef struct packed {
    logic        q;
    logic        qe;
  } lifecycle_reg2hw_cmd_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } lifecycle_reg2hw_token_upper_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } lifecycle_reg2hw_token_lower_reg_t;

  typedef struct packed {
    logic [15:0] q;
    logic        qe;
  } lifecycle_reg2hw_dummy_otp_reg_t;

  typedef struct packed {
    logic [31:0] q;
    logic        qe;
  } lifecycle_reg2hw_dummy_gate_reg_t;

  typedef struct packed {
    struct packed {
      logic [2:0]  q;
    } dft_en;
    struct packed {
      logic [2:0]  q;
    } hw_dbg_en;
    struct packed {
      logic [2:0]  q;
    } nvm_dbg_en;
    struct packed {
      logic [2:0]  q;
    } cpu_en;
    struct packed {
      logic [2:0]  q;
    } provision_en;
    struct packed {
      logic [2:0]  q;
    } keymgr_en;
  } lifecycle_reg2hw_dummy_ctrl_reg_t;


  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } update_done;
    struct packed {
      logic        d;
      logic        de;
    } update_err;
    struct packed {
      logic [7:0]  d;
      logic        de;
    } lifecycle_state;
  } lifecycle_hw2reg_status_reg_t;

  typedef struct packed {
    logic [15:0] d;
  } lifecycle_hw2reg_dummy_otp_reg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } lifecycle_hw2reg_dummy_gate_reg_t;


  ///////////////////////////////////////
  // Register to internal design logic //
  ///////////////////////////////////////
  typedef struct packed {
    lifecycle_reg2hw_cmd_reg_t cmd; // [133:132]
    lifecycle_reg2hw_token_upper_reg_t token_upper; // [131:100]
    lifecycle_reg2hw_token_lower_reg_t token_lower; // [99:68]
    lifecycle_reg2hw_dummy_otp_reg_t dummy_otp; // [67:51]
    lifecycle_reg2hw_dummy_gate_reg_t dummy_gate; // [50:18]
    lifecycle_reg2hw_dummy_ctrl_reg_t dummy_ctrl; // [17:0]
  } lifecycle_reg2hw_t;

  ///////////////////////////////////////
  // Internal design logic to register //
  ///////////////////////////////////////
  typedef struct packed {
    lifecycle_hw2reg_status_reg_t status; // [61:62]
    lifecycle_hw2reg_dummy_otp_reg_t dummy_otp; // [61:45]
    lifecycle_hw2reg_dummy_gate_reg_t dummy_gate; // [44:12]
  } lifecycle_hw2reg_t;

  // Register Address
  parameter logic [11:0] LIFECYCLE_CMD_OFFSET = 12'h 0;
  parameter logic [11:0] LIFECYCLE_STATUS_OFFSET = 12'h 4;
  parameter logic [11:0] LIFECYCLE_TOKEN_UPPER_OFFSET = 12'h 8;
  parameter logic [11:0] LIFECYCLE_TOKEN_LOWER_OFFSET = 12'h c;
  parameter logic [11:0] LIFECYCLE_DUMMY_OTP_OFFSET = 12'h 800;
  parameter logic [11:0] LIFECYCLE_DUMMY_GATE_OFFSET = 12'h 804;
  parameter logic [11:0] LIFECYCLE_DUMMY_CTRL_OFFSET = 12'h 808;


  // Register Index
  typedef enum int {
    LIFECYCLE_CMD,
    LIFECYCLE_STATUS,
    LIFECYCLE_TOKEN_UPPER,
    LIFECYCLE_TOKEN_LOWER,
    LIFECYCLE_DUMMY_OTP,
    LIFECYCLE_DUMMY_GATE,
    LIFECYCLE_DUMMY_CTRL
  } lifecycle_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] LIFECYCLE_PERMIT [7] = '{
    4'b 0001, // index[0] LIFECYCLE_CMD
    4'b 0111, // index[1] LIFECYCLE_STATUS
    4'b 1111, // index[2] LIFECYCLE_TOKEN_UPPER
    4'b 1111, // index[3] LIFECYCLE_TOKEN_LOWER
    4'b 0011, // index[4] LIFECYCLE_DUMMY_OTP
    4'b 1111, // index[5] LIFECYCLE_DUMMY_GATE
    4'b 0111  // index[6] LIFECYCLE_DUMMY_CTRL
  };
endpackage

