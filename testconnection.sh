#!/bin/sh

$names = Get-content "input.lst"

foreach ($name in $names){
      if (Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue){
              Write-Host "$name,up"
                }
                  else{
                          Write-Host "$name,down"
                            }
                        }in/sh



