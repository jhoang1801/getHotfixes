function GetHotfixes{
Clear-Host
$windowsUpdate = new-object -com "Microsoft.Update.Searcher"
$updateCount = $null
$updateCount = $windowsUpdate.GetTotalHistoryCount()
$hotFixes = $windowsUpdate.QueryHistory(0,$updateCount)
$hotFixes = $hotFixes | ? ($_.Resultcode -eq 2}
Return $hotFixes
}
getHotfixes