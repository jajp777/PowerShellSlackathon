param (
    $TotalSamples = 500,
    $SampleSet    = 100
)

1..$TotalSamples |
    ForEach {
        1..$SampleSet |
        ForEach {$s=0}{$s+=Get-Random -Minimum 0 -Maximum 2}{$s}
    } |
      Sort |
      Group -NoElement | Foreach {"*" * $_.count}