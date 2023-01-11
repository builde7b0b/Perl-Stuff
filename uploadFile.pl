
    #!/usr/bin/perl
    ###	NOTE: this is to demonstrate binary file upload, text file uploading is simple, but if you want to know how to do textfile uploading, just remove all the binmode() functions and that's it!
    use CGI;
    ###	Set Maximum Upload size to 2MB (prevent ppl from uploading extremely large files or other such malicious stuff)
    $CGI::POST_MAX = 2048;
    print "content-type: text/html\n\n";
    ###	Set Standard Input to Binary Mode (this is critical for binary data (e.g. images) - the key piece of this code which nobody tells you (except me))
    binmode(STDIN);
    @inx = <STDIN>;
    ###	This is just for a single file upload.. you can improve the code to include boundary separations and stuff like that..
    ###	These two lines delete the boundary and file info which comes with the formfeed and leaves only the binary data
    splice(@inx,0,4);
    splice(@inx,$#inx,1);
    $in = join("",@inx);
    $in = substr($in,0,length($in) - 2);;
    ###	This next sniplet assumes you are uploading a JPEG file and saves it as z.jpg in the folder this script is stored
    ###	You can also further improve the script by retreiving the filename from the 'spliced' lines
    open(ff,">z.jpg");
    ###	Set file output to binary mode (since you're assuming to write a binary file)
    binmode(ff);
    print ff $in;
    close(ff);
    print "DONE, Uploaded Size: ".length($in)." bytes";
		
