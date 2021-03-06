/*
 * main.c - top level 6502 C code for icestick_6502
 * 03-04-19 E. Brombaugh
 * based on example code from https://cc65.github.io/doc/customizing.html
 */
 
#include <stdio.h>
#include <string.h>
#include "fpga.h"
#include "acia.h"

unsigned long cnt;
unsigned char x = 0;
char txt_buf[32];
unsigned long i;

unsigned char *cmd = &SRAM_DATA;
unsigned char *buf = (&SRAM_DATA) + 50;
char st = 0;
int await = 0;

#define NAND_R  4 // Read Enable
#define NAND_E  1 // Chip Enable
#define NAND_CL 8 // Command latch
#define NAND_AL 16 // Address latch
#define NAND_W  2 // Write
#define NAND_OE 32 // Read busy

void idle() {
  NAND_CTL = NAND_E + NAND_W + NAND_R;
}

void enable() {
  NAND_CTL = NAND_W + NAND_R;
}

void cmd_nand(unsigned char cmd) {
  NAND_CTL = NAND_W + NAND_R + NAND_OE;
  NAND_CTL = NAND_W + NAND_R + NAND_CL + NAND_OE;
  NAND_CTL = NAND_R + NAND_CL + NAND_OE;
  NAND_OUT = cmd;
  NAND_CTL = NAND_W + NAND_R + NAND_CL + NAND_OE;
  NAND_CTL = NAND_W + NAND_R + NAND_OE;
  NAND_CTL = NAND_W + NAND_R;
}

void addr_nand(unsigned char addr) {
  NAND_CTL = NAND_W + NAND_R + NAND_OE;
  NAND_CTL = NAND_W + NAND_R + NAND_AL + NAND_OE;
  NAND_CTL = NAND_R + NAND_AL + NAND_OE;
  NAND_OUT = addr;
  NAND_CTL = NAND_W + NAND_R + NAND_AL + NAND_OE;
  NAND_CTL = NAND_W + NAND_R + NAND_OE;
  NAND_CTL = NAND_W + NAND_R;
}

void read() {
  unsigned char v;
  NAND_CTL = NAND_W;
  v = NAND_OUT;
  NAND_CTL = NAND_W + NAND_R;

  acia_tx_str("val: ");
  acia_tx_chr((v / 16) < 10 ? (v / 16) + '0' : (v / 16) + '7');
  acia_tx_chr((v % 16) < 10 ? (v % 16) + '0' : (v % 16) + '7');
  acia_tx_str("\n");
}

void status() {
  cmd_nand(0x70);

  read();
}

void id() {
  cmd_nand(0x90);
  addr_nand(0x20);

  read();
  read();
  read();
  read();
}

int main()
{
    int s = 0;
    int i;

	// Send startup message
	acia_tx_str("\n\n\rIcestick 6502 cc65 serial test\n\n\r");
	
	// enable ACIA IRQ for serial echo in background
	ACIA_CTRL = 0x80;
  NAND_CTL = 0x07;
  NAND_OUT = 0xAA;
  NAND_CTL = 0x27;
	asm("CLI");

    // Run forever with GPIO blink
    while(1) {
      while (await);
        for (i = 0; i < 10000; i ++) {

        }

        if (s == 0) {
            acia_tx_str("hello\no");
            GPIO_DATA = st = 0xAA;
            s = 1;
        } else {
            acia_tx_str("world\nd");
            GPIO_DATA = st = 0x55;
            s = 0;
        }

        idle();
        enable();
        status();
        id();
        idle();
    }

    //  We should never get here!
    return (0);
}

void execute() {
  int len = 0;
  int i;
  unsigned char *addr;
  switch (*cmd) {
    case 's':
      while (*(cmd + len) != 0) {
        len ++;
      }
      buf[len - 1] = 0;
      for (i = 0; i < len - 1; i ++) {
        buf[i] = cmd[len - i - 1];
      }
      break;
    case 'l':
      acia_tx_str(buf);
      break;
    case 'a':
      await = 1;
      break;
    case '0':
      await = 0;
      break;
    case 'r':
      addr = cmd[1] << 8;
      addr += cmd[2];
      acia_tx_chr(*addr);
      break;
    case 'w':
      addr = cmd[1] << 8;
      addr += cmd[2];
      *addr = cmd[3];
      break;
  }
}

void run_cmd() {
  GPIO_DATA = st = 0xff - st;
    if (ACIA_SRAM_STORE != 0) {
      (*cmd) = ACIA_SRAM_STORE;
      cmd++;
    } else {
      (*cmd) = ACIA_SRAM_STORE;
      cmd = &SRAM_DATA;
      execute();
    }
  GPIO_DATA = st = 0xff - st;
  //acia_tx_str(&SRAM_DATA);
    //acia_tx_str("\n\n\rIcestick 6502 cc65 serial test\n\n\r");
}
