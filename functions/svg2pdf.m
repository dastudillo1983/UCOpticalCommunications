function svg2pdf(svgFile, pdfFile)

cmd = 'inkscape %s --export-pdf=%s';

cmd2 = sprintf(cmd, svgFile, pdfFile);

status = system(cmd2);

if status
    
    error('could not run inkscape, make sure inkscape is in PATH and specified input/output files are accessible');
    
end

end

