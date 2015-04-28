# Stop for errors

set -e


# Figure out where we are

howIWasRun=$0

whereIAm=`pwd`/`dirname $howIWasRun`

results=$whereIAm/results

website=$whereIAm/website

log=log.txt


# Make a clean place to save our work

test -d $results && {
	
	rm -rf $results
	
}


# Clean up the log file

test -f $log && {
	
	rm -f $log
	
}

mkdir $results


# Find shell scripts

cd $whereIAm

find website -name '*.build' \
| sed -r 's@^[^/]+(/?)@@' \
| {
	
	while read filePath
	
	do
		
		echo $filePath
		
		directoryPath=`dirname $filePath`
		
		filename=`basename $filePath`
		
		resultName=`basename $filename .build`
		
		resultPath=$results/$directoryPath
		
		(
			
			cd website/$directoryPath
			
			resultPath=$resultPath \
			resultName=$resultName \
			directoryPath=$directoryPath \
			filename=$filename \
			sh $filename
			
			returnCode=$?
			
			if [ $returnCode -gt 0 ]
			
			then
				
				exit 1
				
			fi
			
		)
		
	done
	
} 2>&1
