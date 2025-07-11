#! /usr/bin/env python3
# ---------------------------------------
# This script updates hardware ip list for generate CHERI-HLS systems
# ---------------------------------------
import sys, os, time, logging, colorlog, functools, shutil, subprocess, glob
from argparse import ArgumentParser


TEMPLATE = """
<?xml version="1.0" encoding="UTF-8"?>
<spirit:component xmlns:xilinx="http://www.xilinx.com" xmlns:spirit="http://www.spiritconsortium.org/XMLSchema/SPIRIT/1685-2009" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <spirit:vendor>ssith</spirit:vendor>
  <spirit:library>user</spirit:library>
  <spirit:name>ssith_processor</spirit:name>
  <spirit:version>1.0</spirit:version>
  <spirit:busInterfaces>
    <spirit:busInterface>
      <spirit:name>master0</spirit:name>
      <spirit:busType spirit:vendor="xilinx.com" spirit:library="interface" spirit:name="aximm" spirit:version="1.0"/>
      <spirit:abstractionType spirit:vendor="xilinx.com" spirit:library="interface" spirit:name="aximm_rtl" spirit:version="1.0"/>
      <spirit:master>
        <spirit:addressSpaceRef spirit:addressSpaceRef="master0"/>
      </spirit:master>
      <spirit:portMaps>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWADDR</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awaddr</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWLEN</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awlen</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWSIZE</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awsize</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWBURST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awburst</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWLOCK</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awlock</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWCACHE</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awcache</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWPROT</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awprot</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWREGION</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awregion</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWQOS</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awqos</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_awready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WDATA</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_wdata</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WSTRB</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_wstrb</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WLAST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_wlast</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_wvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_wready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>BID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_bid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>BRESP</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_bresp</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>BVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_bvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>BREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_bready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARADDR</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_araddr</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARLEN</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arlen</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARSIZE</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arsize</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARBURST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arburst</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARLOCK</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arlock</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARCACHE</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arcache</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARPROT</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arprot</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARREGION</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arregion</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARQOS</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arqos</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_arready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_rid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RDATA</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_rdata</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RRESP</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_rresp</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RLAST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_rlast</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_rvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master0_rready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
      </spirit:portMaps>
    </spirit:busInterface>
    <spirit:busInterface>
      <spirit:name>master1</spirit:name>
      <spirit:busType spirit:vendor="xilinx.com" spirit:library="interface" spirit:name="aximm" spirit:version="1.0"/>
      <spirit:abstractionType spirit:vendor="xilinx.com" spirit:library="interface" spirit:name="aximm_rtl" spirit:version="1.0"/>
      <spirit:master>
        <spirit:addressSpaceRef spirit:addressSpaceRef="master1"/>
      </spirit:master>
      <spirit:portMaps>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWADDR</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awaddr</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWLEN</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awlen</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWSIZE</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awsize</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWBURST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awburst</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWLOCK</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awlock</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWCACHE</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awcache</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWPROT</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awprot</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWREGION</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awregion</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWQOS</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awqos</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>AWREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_awready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WDATA</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_wdata</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WSTRB</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_wstrb</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WLAST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_wlast</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_wvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>WREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_wready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>BID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_bid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>BRESP</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_bresp</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>BVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_bvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>BREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_bready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARADDR</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_araddr</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARLEN</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arlen</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARSIZE</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arsize</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARBURST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arburst</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARLOCK</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arlock</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARCACHE</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arcache</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARPROT</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arprot</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARREGION</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arregion</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARQOS</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arqos</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>ARREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_arready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_rid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RDATA</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_rdata</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RRESP</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_rresp</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RLAST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_rlast</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RVALID</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_rvalid</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RREADY</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>master1_rready</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
      </spirit:portMaps>
    </spirit:busInterface>
    <spirit:busInterface>
      <spirit:name>RST_N</spirit:name>
      <spirit:busType spirit:vendor="xilinx.com" spirit:library="signal" spirit:name="reset" spirit:version="1.0"/>
      <spirit:abstractionType spirit:vendor="xilinx.com" spirit:library="signal" spirit:name="reset_rtl" spirit:version="1.0"/>
      <spirit:slave/>
      <spirit:portMaps>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>RST</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>RST_N</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
      </spirit:portMaps>
      <spirit:parameters>
        <spirit:parameter>
          <spirit:name>POLARITY</spirit:name>
          <spirit:value spirit:id="BUSIFPARAM_VALUE.RST_N.POLARITY" spirit:choiceRef="choice_list_9d8b0d81">ACTIVE_LOW</spirit:value>
        </spirit:parameter>
      </spirit:parameters>
    </spirit:busInterface>
    <spirit:busInterface>
      <spirit:name>CLK</spirit:name>
      <spirit:busType spirit:vendor="xilinx.com" spirit:library="signal" spirit:name="clock" spirit:version="1.0"/>
      <spirit:abstractionType spirit:vendor="xilinx.com" spirit:library="signal" spirit:name="clock_rtl" spirit:version="1.0"/>
      <spirit:slave/>
      <spirit:portMaps>
        <spirit:portMap>
          <spirit:logicalPort>
            <spirit:name>CLK</spirit:name>
          </spirit:logicalPort>
          <spirit:physicalPort>
            <spirit:name>CLK</spirit:name>
          </spirit:physicalPort>
        </spirit:portMap>
      </spirit:portMaps>
      <spirit:parameters>
        <spirit:parameter>
          <spirit:name>ASSOCIATED_BUSIF</spirit:name>
          <spirit:value spirit:id="BUSIFPARAM_VALUE.CLK.ASSOCIATED_BUSIF">master0:master1</spirit:value>
        </spirit:parameter>
        <spirit:parameter>
          <spirit:name>ASSOCIATED_RESET</spirit:name>
          <spirit:value spirit:id="BUSIFPARAM_VALUE.CLK.ASSOCIATED_RESET">RST_N</spirit:value>
        </spirit:parameter>
      </spirit:parameters>
    </spirit:busInterface>
  </spirit:busInterfaces>
  <spirit:addressSpaces>
    <spirit:addressSpace>
      <spirit:name>master0</spirit:name>
      <spirit:range spirit:format="long" spirit:resolve="user" spirit:minimum="4096" spirit:rangeType="long">16777216T</spirit:range>
      <spirit:width spirit:format="long" spirit:resolve="user">64</spirit:width>
    </spirit:addressSpace>
    <spirit:addressSpace>
      <spirit:name>master1</spirit:name>
      <spirit:range spirit:format="long" spirit:resolve="user" spirit:minimum="4096" spirit:rangeType="long">16777216T</spirit:range>
      <spirit:width spirit:format="long" spirit:resolve="user">64</spirit:width>
    </spirit:addressSpace>
  </spirit:addressSpaces>
  <spirit:model>
    <spirit:views>
      <spirit:view>
        <spirit:name>xilinx_anylanguagesynthesis</spirit:name>
        <spirit:displayName>Synthesis</spirit:displayName>
        <spirit:envIdentifier>:vivado.xilinx.com:synthesis</spirit:envIdentifier>
        <spirit:language>Verilog</spirit:language>
        <spirit:modelName>mkP2_Core</spirit:modelName>
        <spirit:fileSetRef>
          <spirit:localName>xilinx_anylanguagesynthesis_view_fileset</spirit:localName>
        </spirit:fileSetRef>
        <spirit:parameters>
          <spirit:parameter>
            <spirit:name>viewChecksum</spirit:name>
            <spirit:value>c1b61aa6</spirit:value>
          </spirit:parameter>
        </spirit:parameters>
      </spirit:view>
      <spirit:view>
        <spirit:name>xilinx_xpgui</spirit:name>
        <spirit:displayName>UI Layout</spirit:displayName>
        <spirit:envIdentifier>:vivado.xilinx.com:xgui.ui</spirit:envIdentifier>
        <spirit:fileSetRef>
          <spirit:localName>xilinx_xpgui_view_fileset</spirit:localName>
        </spirit:fileSetRef>
        <spirit:parameters>
          <spirit:parameter>
            <spirit:name>viewChecksum</spirit:name>
            <spirit:value>f92e9879</spirit:value>
          </spirit:parameter>
        </spirit:parameters>
      </spirit:view>
    </spirit:views>
    <spirit:ports>
      <spirit:port>
        <spirit:name>CLK</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>RST_N</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">5</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awaddr</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">63</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awlen</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">7</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awsize</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">2</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awburst</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">1</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awlock</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awcache</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awprot</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">2</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awqos</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awregion</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_awready</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_wvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_wdata</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">63</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_wstrb</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">7</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_wlast</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_wready</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_bvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_bid</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">5</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_bresp</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">1</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_bready</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">5</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_araddr</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">63</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arlen</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">7</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arsize</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">2</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arburst</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">1</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arlock</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arcache</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arprot</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">2</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arqos</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arregion</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_arready</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_rvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_rid</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">5</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_rdata</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">63</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_rresp</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">1</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_rlast</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master0_rready</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">5</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awaddr</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">63</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awlen</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">7</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awsize</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">2</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awburst</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">1</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awlock</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awcache</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awprot</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">2</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awqos</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awregion</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_awready</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_wvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_wdata</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">63</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_wstrb</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">7</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_wlast</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_wready</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_bvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_bid</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">5</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_bresp</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">1</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_bready</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arid</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">5</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_araddr</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">63</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arlen</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">7</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arsize</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">2</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arburst</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">1</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arlock</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arcache</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arprot</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">2</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arqos</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arregion</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">3</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_arready</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_rvalid</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_rid</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">5</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_rdata</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">63</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_rresp</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">1</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_rlast</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
          <spirit:driver>
            <spirit:defaultValue spirit:format="long">0</spirit:defaultValue>
          </spirit:driver>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>master1_rready</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>cpu_external_interrupt_req</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:vector>
            <spirit:left spirit:format="long">15</spirit:left>
            <spirit:right spirit:format="long">0</spirit:right>
          </spirit:vector>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic_vector</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>jtag_tdi</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>jtag_tms</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>jtag_tclk</spirit:name>
        <spirit:wire>
          <spirit:direction>in</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>std_logic</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>jtag_tdo</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>CLK_jtag_tclk_out</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
      <spirit:port>
        <spirit:name>CLK_GATE_jtag_tclk_out</spirit:name>
        <spirit:wire>
          <spirit:direction>out</spirit:direction>
          <spirit:wireTypeDefs>
            <spirit:wireTypeDef>
              <spirit:typeName>wire</spirit:typeName>
              <spirit:viewNameRef>xilinx_anylanguagesynthesis</spirit:viewNameRef>
            </spirit:wireTypeDef>
          </spirit:wireTypeDefs>
        </spirit:wire>
      </spirit:port>
    </spirit:ports>
  </spirit:model>
  <spirit:choices>
    <spirit:choice>
      <spirit:name>choice_list_9d8b0d81</spirit:name>
      <spirit:enumeration>ACTIVE_HIGH</spirit:enumeration>
      <spirit:enumeration>ACTIVE_LOW</spirit:enumeration>
    </spirit:choice>
  </spirit:choices>
  <spirit:fileSets>
    <spirit:fileSet>
      <spirit:name>xilinx_anylanguagesynthesis_view_fileset</spirit:name>
      <spirit:file>
        <spirit:name>src/p2_constraints.xdc</spirit:name>
        <spirit:userFileType>xdc</spirit:userFileType>
        <spirit:userFileType>USED_IN_implementation</spirit:userFileType>
        <spirit:userFileType>USED_IN_synthesis</spirit:userFileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/ASSIGN1.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/BRAM2.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/FIFO1.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/FIFO2.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/FIFO10.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/FIFO20.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/RevertReg.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/MakeClock.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/MakeReset0.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/RegFile.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/SizedFIFO.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/SizedFIFO0.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/SyncFIFOLevel.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/SyncHandshake.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/SyncResetA.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/SyncWire.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/ClockGen.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>hdl/FIFOL1.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
        <spirit:userFileType>CHECKSUM_bfe3b3df</spirit:userFileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkBranch_Predictor.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkMMU_DCache.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkMMU_ICache.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkCPU.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkTagController.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkCSR_MIE.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkCSR_MIP.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkCSR_RegFile.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkCore.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkCore_Synth.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkDM_Abstract_Commands.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkDM_Run_Control.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkDM_System_Bus.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkDebug_Module.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkGPR_RegFile.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkJtagTap.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkNear_Mem.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkPerfCountersFlute.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkRISCV_MBox.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkSoC_Map.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkTLB.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkP2_Core.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
        <spirit:userFileType>CHECKSUM_d463a775</spirit:userFileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkDM_Mem_Tap.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
        <spirit:logicalName>xil_defaultlib</spirit:logicalName>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkIntMul_32.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkDM_CSR_Tap.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
        <spirit:logicalName>xil_defaultlib</spirit:logicalName>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkDM_GPR_Tap.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
        <spirit:logicalName>xil_defaultlib</spirit:logicalName>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkIntMul_64.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkNear_Mem_IO_AXI4.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkPLIC_16_2_7.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkFBox_Core.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkFBox_Top.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkFPR_RegFile.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
      <spirit:file>
        <spirit:name>../Verilog_RTL/mkFPU.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
{}      <spirit:file>
        <spirit:name>../Verilog_RTL/mkDM_FPR_Tap.v</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
        <spirit:userFileType>CHECKSUM_223a0d1a</spirit:userFileType>
      </spirit:file>
    </spirit:fileSet>
  </spirit:fileSets>
  <spirit:description>mkP2_Core_v1_0</spirit:description>
  <spirit:parameters>
    <spirit:parameter>
      <spirit:name>Component_Name</spirit:name>
      <spirit:value spirit:resolve="user" spirit:id="PARAM_VALUE.Component_Name" spirit:order="1">mkP2_Core_v1_0</spirit:value>
    </spirit:parameter>
  </spirit:parameters>
  <spirit:vendorExtensions>
    <xilinx:coreExtensions>
      <xilinx:supportedFamilies>
        <xilinx:family xilinx:lifeCycle="Production">virtex7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">qvirtex7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">kintex7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">kintex7l</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">qkintex7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">qkintex7l</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">artix7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">artix7l</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">aartix7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">qartix7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">zynq</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">qzynq</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">azynq</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">spartan7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">aspartan7</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">virtexu</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">virtexuplus</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">kintexuplus</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">zynquplus</xilinx:family>
        <xilinx:family xilinx:lifeCycle="Production">kintexu</xilinx:family>
      </xilinx:supportedFamilies>
      <xilinx:taxonomies>
        <xilinx:taxonomy>/UserIP</xilinx:taxonomy>
      </xilinx:taxonomies>
      <xilinx:displayName>mkP2_Core_v1_0</xilinx:displayName>
      <xilinx:definitionSource>package_project</xilinx:definitionSource>
      <xilinx:coreRevision>10</xilinx:coreRevision>
      <xilinx:coreCreationDateTime>2019-06-22T21:20:34Z</xilinx:coreCreationDateTime>
      <xilinx:tags>
        <xilinx:tag xilinx:name="nopcore"/>
        <xilinx:tag xilinx:name="ssith:user:ssith_processor:1.0_ARCHIVE_LOCATION">/tmp/stoy/galois/gfe/bluespec-processors/P2/Flute/src_SSITH_P2/xilinx_ip</xilinx:tag>
      </xilinx:tags>
    </xilinx:coreExtensions>
    <xilinx:packagingInfo>
      <xilinx:xilinxVersion>2017.4</xilinx:xilinxVersion>
      <xilinx:checksum xilinx:scope="busInterfaces" xilinx:value="16fe7448"/>
      <xilinx:checksum xilinx:scope="addressSpaces" xilinx:value="3315be85"/>
      <xilinx:checksum xilinx:scope="fileGroups" xilinx:value="788693fb"/>
      <xilinx:checksum xilinx:scope="ports" xilinx:value="a3be71c0"/>
      <xilinx:checksum xilinx:scope="parameters" xilinx:value="fb7325a1"/>
    </xilinx:packagingInfo>
  </spirit:vendorExtensions>
</spirit:component>
"""


# ---------------------------------------
# Updater
# ---------------------------------------


class Updater:
    """
    args:
        - test : Name of the top-level design
    """

    def __init__(self, args):
        self.args = args
        self.test = self.args.test
        # Root path of cheri-hls
        self.root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
        # Root path of the Vivado design
        self.proj = os.path.join(
            self.root,
            "BESSPIN-GFE",
            "bluespec-processors",
            "P2",
            "Flute",
            "src_SSITH_P2",
        )
        # Root path of Flute build
        self.flute_build = os.path.join(
            self.root,
            "BESSPIN-GFE",
            "bluespec-processors",
            "P2",
            "Flute",
            "builds",
        )
        # Root path of HLS build
        self.hls_build = os.path.join(
            self.root,
            "examples",
            f"{self.test}",
        )
        self.run()

    def run(self):
        # Create HLS source directory
        vproj = os.path.join(
            self.proj,
            f"{self.test}_hls",
        )
        if os.path.exists(vproj):
            shutil.rmtree(vproj)
            print(f"Removed (old) {vproj}")

        # Copy HS sources to the Vivado project
        hls_src = os.path.join(
            self.hls_build, f"{self.test}_prj", "solution", "syn", "verilog"
        )
        # If HLS source does not exist, run Vitis HLS to create it from scratch
        if not os.path.exists(hls_src):
            hls_tool = os.path.join(self.root, "scripts", "run-vitis-hls.sh")
            os.system(f"cd {self.hls_build}; bash f{hls_tool} vhls.tcl")
            if not os.path.exists(hls_src):
                raise RuntimeError("Cannot generate HLS source.")
        shutil.copytree(hls_src, vproj)

        # Copy HLS wrapper
        wrapper = os.path.join(self.flute_build, f"Resources", "hlsWrapper.v")
        shutil.copy(wrapper, vproj)

        # Generate file list for HLS
        buff = ""
        for f in glob.glob(os.path.join(vproj, "*.v")):
            fname = os.path.basename(f)
            buff += f"""      <spirit:file>
        <spirit:name>../{self.test}_hls/{fname}</spirit:name>
        <spirit:fileType>verilogSource</spirit:fileType>
      </spirit:file>
"""

        # Update ip list
        ip_list = os.path.join(self.proj, "xilinx_ip", "component.xml")
        if os.path.isfile(ip_list):
            os.remove(ip_list)
        with open(ip_list, "w") as f:
            f.write(TEMPLATE.format(buff))

        print(f"IP list updated for {self.test}")


# ---------- main function --------------
def cheri_hls():
    USAGE = """Usage:
update_ip_list.py --test vect_mult --mode
"""

    parser = ArgumentParser(usage=USAGE)
    parser.add_argument(
        "-t",
        "--test",
        default=None,
        dest="test",
        help="Name of the top-level design",
    )
    args = parser.parse_args()

    updater = Updater(args)


if __name__ == "__main__":
    cheri_hls()
