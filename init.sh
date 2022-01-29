#!/bin/bash

# Fetch stock data from 1 Jan, 2000

symbols=("A" "AAL" "AAP" "AAPL" "ABBV" "ABC" "ABMD" "ABNB" "ABT" "ACN" "ADBE" "ADI" "ADM" "ADP" "ADSK" "AEE" "AEP" "AES" "AFL" "AIG" "AIZ" "AJG" "AKAM" "ALB" "ALGN" "ALK" "ALL" "ALLE" "AMAT" "AMCR" "AMD" "AME" "AMGN" "AMP" "AMT" "AMZN" "ANET" "ANSS" "ANTM" "AON" "AOS" "APA" "APD" "APH" "APTV" "ARE" "ASML" "ATO" "ATVI" "AVB" "AVGO" "AVY" "AWK" "AXP" "AZO" "BA" "BAC" "BAX" "BBWI" "BBY" "BDX" "BEN" "BF.B" "BIDU" "BIIB" "BIO" "BK" "BKNG" "BKR" "BLK" "BLL" "BMY" "BR" "BRK.B" "BRO" "BSX" "BWA" "BXP" "C" "CAG" "CAH" "CARR" "CAT" "CB" "CBOE" "CBRE" "CCI" "CCL" "CDAY" "CDNS" "CDW" "CE" "CERN" "CF" "CFG" "CHD" "CHRW" "CHTR" "CI" "CINF" "CL" "CLX" "CMA" "CMCSA" "CME" "CMG" "CMI" "CMS" "CNC" "CNP" "COF" "COO" "COP" "COST" "CPB" "CPRT" "CRL" "CRM" "CRWD" "CSCO" "CSX" "CTAS" "CTLT" "CTRA" "CTSH" "CTVA" "CTXS" "CVS" "CVX" "CZR" "D" "DAL" "DD" "DDOG" "DE" "DFS" "DG" "DGX" "DHI" "DHR" "DIS" "DISCA" "DISCK" "DISH" "DLR" "DLTR" "DOCU" "DOV" "DOW" "DPZ" "DRE" "DRI" "DTE" "DUK" "DVA" "DVN" "DXC" "DXCM" "EA" "EBAY" "ECL" "ED" "EFX" "EIX" "EL" "EMN" "EMR" "ENPH" "EOG" "EPAM" "EQIX" "EQR" "ES" "ESS" "ETN" "ETR" "ETSY" "EVRG" "EW" "EXC" "EXPD" "EXPE" "EXR" "F" "FANG" "FAST" "FB" "FBHS" "FCX" "FDS" "FDX" "FE" "FFIV" "FIS" "FISV" "FITB" "FLT" "FMC" "FOX" "FOXA" "FRC" "FRT" "FTNT" "FTV" "GD" "GE" "GILD" "GIS" "GL" "GLW" "GM" "GNRC" "GOOG" "GOOGL" "GPC" "GPN" "GPS" "GRMN" "GS" "GWW" "HAL" "HAS" "HBAN" "HCA" "HD" "HES" "HIG" "HII" "HLT" "HOLX" "HON" "HPE" "HPQ" "HRL" "HSIC" "HST" "HSY" "HUM" "HWM" "IBM" "ICE" "IDXX" "IEX" "IFF" "ILMN" "INCY" "INFO" "INTC" "INTU" "IP" "IPG" "IPGP" "IQV" "IR" "IRM" "ISRG" "IT" "ITW" "IVZ" "J" "JBHT" "JCI" "JD" "JKHY" "JNJ" "JNPR" "JPM" "K" "KDP" "KEY" "KEYS" "KHC" "KIM" "KLAC" "KMB" "KMI" "KMX" "KO" "KR" "L" "LCID" "LDOS" "LEN" "LH" "LHX" "LIN" "LKQ" "LLY" "LMT" "LNC" "LNT" "LOW" "LRCX" "LULU" "LUMN" "LUV" "LVS" "LW" "LYB" "LYV" "MA" "MAA" "MAR" "MAS" "MCD" "MCHP" "MCK" "MCO" "MDLZ" "MDT" "MELI" "MET" "MGM" "MHK" "MKC" "MKTX" "MLM" "MMC" "MMM" "MNST" "MO" "MOS" "MPC" "MPWR" "MRK" "MRNA" "MRO" "MRVL" "MS" "MSCI" "MSFT" "MSI" "MTB" "MTCH" "MTD" "MU" "NCLH" "NDAQ" "NEE" "NEM" "NFLX" "NI" "NKE" "NLOK" "NLSN" "NOC" "NOW" "NRG" "NSC" "NTAP" "NTES" "NTRS" "NUE" "NVDA" "NVR" "NWL" "NWS" "NWSA" "NXPI" "O" "ODFL" "OGN" "OKE" "OKTA" "OMC" "ORCL" "ORLY" "OTIS" "OXY" "PANW" "PAYC" "PAYX" "PBCT" "PCAR" "PDD" "PEAK" "PEG" "PENN" "PEP" "PFE" "PFG" "PG" "PGR" "PH" "PHM" "PKG" "PKI" "PLD" "PM" "PNC" "PNR" "PNW" "POOL" "PPG" "PPL" "PRU" "PSA" "PSX" "PTC" "PTON" "PVH" "PWR" "PXD" "PYPL" "QCOM" "QRVO" "RCL" "RE" "REG" "REGN" "RF" "RHI" "RJF" "RL" "RMD" "ROK" "ROL" "ROP" "ROST" "RSG" "RTX" "SBAC" "SBNY" "SBUX" "SCHW" "SEDG" "SEE" "SGEN" "SHW" "SIRI" "SIVB" "SJM" "SLB" "SNA" "SNPS" "SO" "SPG" "SPGI" "SPLK" "SRE" "STE" "STT" "STX" "STZ" "SWK" "SWKS" "SYF" "SYK" "SYY" "T" "TAP" "TDG" "TDY" "TEAM" "TECH" "TEL" "TER" "TFC" "TFX" "TGT" "TJX" "TMO" "TMUS" "TPR" "TRMB" "TROW" "TRV" "TSCO" "TSLA" "TSN" "TT" "TTWO" "TWTR" "TXN" "TXT" "TYL" "UA" "UAA" "UAL" "UDR" "UHS" "ULTA" "UNH" "UNP" "UPS" "URI" "USB" "V" "VFC" "VIAC" "VLO" "VMC" "VNO" "VRSK" "VRSN" "VRTX" "VTR" "VTRS" "VZ" "WAB" "WAT" "WBA" "WDAY" "WDC" "WEC" "WELL" "WFC" "WHR" "WM" "WMB" "WMT" "WRB" "WRK" "WST" "WTW" "WY" "WYNN" "XEL" "XLNX" "XOM" "XRAY" "XYL" "YUM" "ZBH" "ZBRA" "ZION" "ZM" "ZS" "ZTS")
end_ts=$(date +%s)
start_ts=946677600
echo "${start_ts} ${end_ts}"
python -c "import time; print time.ctime(${start_ts})"
python -c "import time; print time.ctime(${end_ts})"

for symbol in "${symbols[@]}"
do
    url="https://query1.finance.yahoo.com/v7/finance/download/${symbol}?period1=${start_ts}&period2=${end_ts}&interval=1d&events=history&includeAdjustedClose=true"
    curl "${url}" | sed -n '1,$ p;$a \' > "stocks/${symbol}.csv"
done
