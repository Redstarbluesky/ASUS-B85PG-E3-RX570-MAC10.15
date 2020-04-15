DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // EHC1 (8086_8c26)
            "EHC1", Package()
            {
                "port-count", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "PR01", Package()
                      {
                          "UsbConnector", 0,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                      },
                },
            },
            // XHC (8086_8c31)
            "XHC", Package()
            {
                "port-count", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS07", Package()
                      {
                          "UsbConnector", 3,
                          "port", Buffer() { 0x07, 0x00, 0x00, 0x00 },
                      },
                      "HS06", Package()
                      {
                          "UsbConnector", 3,
                          "port", Buffer() { 0x06, 0x00, 0x00, 0x00 },
                      },
                      "HS08", Package()
                      {
                          "UsbConnector", 3,
                          "port", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                      },
                },
            },
        })
    }
}
