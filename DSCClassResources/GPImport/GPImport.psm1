enum Ensure
{
    Absent
    Present
}

[DscResource()]
class GPImport
{
    [DscProperty(Key)]
    [string] $Name
    
    [DscProperty(Mandatory)]
    [string] $Path

    [DscProperty(Mandatory)]
    [string] $BackupId
  
    [DscProperty(Mandatory)]
    [Ensure] $Ensure = [Ensure]::Present

    [GPImport] Get() {
        $policy = Get-GPO -Name $this.Name -ErrorAction SilentlyContinue

        if($null -ne $policy) {
            $this.Ensure = [Ensure]::Present
        }
        else {
            $this.Ensure = [Ensure]::Absent
        }

        return $this
    }
  
    [void] Set() {
        $policy = Get-GPO -Name $this.Name -ErrorAction SilentlyContinue

        if($this.Ensure -eq [Ensure]::Present) {
            if($null -eq $policy) {
                Import-GPO -Path $this.Path  -TargetName $this.Name -CreateIfNeeded  -BackupId $this.BackupId
            }
        }
        else {
            Remove-GPO -Name $this.Name
        }
    }

    [bool] Test() {
        $policy = Get-GPO -Name $this.Name -ErrorAction SilentlyContinue

        if($this.Ensure -eq [Ensure]::Present) {
            if($null -eq $policy) {
                return $false
            }

            if($this.Status -eq $policy.GpoStatus) {
                return $true
            }
        }
        else {
            if($null -eq $policy) {
                return $true
            }
            else {
                return $false
            }
        }

        return $false
    }
}
