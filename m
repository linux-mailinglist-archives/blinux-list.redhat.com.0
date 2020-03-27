Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id AA6201961CE
	for <lists+blinux-list@lfdr.de>; Sat, 28 Mar 2020 00:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585351294;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9sEFRiEFYlFP6r3/vYEOJn/ylYg7Od68+XMdY2+oGj8=;
	b=Vpld4lulSJgKci/ZbqCYOgwgDKnBnzdkBR52mJC/Trcaszlidc7iMVzS6cM3ANQvCbr0px
	AcIIR5jR5v8VSuDAJ6lZ4qoEfJQF4rtP5Etbj6d3jdl9H6BFSeUlaKwJSL8z1q/XdkdAFW
	cmQBWFFbglw46mAHyfWw1QxuzPAc9DY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-210-x7Xwi5PjNs-j0bbPmpkNPA-1; Fri, 27 Mar 2020 19:21:32 -0400
X-MC-Unique: x7Xwi5PjNs-j0bbPmpkNPA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76F3C8017CC;
	Fri, 27 Mar 2020 23:21:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0E7E5E009;
	Fri, 27 Mar 2020 23:21:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3E6CC8A05A;
	Fri, 27 Mar 2020 23:21:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RNJC5n024833 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 19:19:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 149721055235; Fri, 27 Mar 2020 23:19:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EB701055233
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 23:19:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35C4F800260
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 23:19:10 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-93-jUUNT37sPb2CyQ1cuSUKJA-1; Fri, 27 Mar 2020 19:19:07 -0400
X-MC-Unique: jUUNT37sPb2CyQ1cuSUKJA-1
Received: from panix2.panix.com (panix2.panix.com [166.84.1.2])
	by mailbackend.panix.com (Postfix) with ESMTP id 48pyV262NqzrLH
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 19:19:06 -0400 (EDT)
Received: by panix2.panix.com (Postfix, from userid 20196)
	id 48pyV24VhFz1ZTq; Fri, 27 Mar 2020 19:19:06 -0400 (EDT)
Date: Fri, 27 Mar 2020 19:19:06 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Convert unwrapped paragraphs to hard wrapped paragraphs when
	there's no blank lines.
Message-ID: <20200327231906.GA19889@panix.com>
References: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
	<20200327142702.35209f95@bigbox.attlocal.net>
MIME-Version: 1.0
In-Reply-To: <20200327142702.35209f95@bigbox.attlocal.net>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RNJC5n024833
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The following assumes a newline at the end of each paragraph.

The PERL script below will put a blank line after each unwrapped paragraph, which in text is
just one long line terminated with a newline.
Put the perl script in your ~/bin/ directory in a file named doublespace and chmod it to 755. 

Next, the following command will break an unwrapped paragraph into 75 character lines:
fold -sbw 75 <file>

Now put the two together:

cat $1 | doublespace  | fold -sbw 75 

Put the above command into ~/bin/dscat, chmod it to 755 
and you can do:
dscat unwrapped_file > double_spaced_file

Now here's the perl script:
#!/usr/local/bin/perl

# Double space the standard input. Expects a text file.
while(<STDIN>)
{
chomp $_;
if ($_ eq "" or $_ =~ /^  *$/)
{
print "\n";
}
else
{
print "$_

";
}
}



On Fri, Mar 27, 2020 at 02:27:02PM -0500, Linux for blind general discussion wrote:
> On March 27, 2020, Linux for blind general discussion wrote:
> > does anyone know a way to automate inserting blank lines before
> > and after each line in a file that's too long to fit on the screen
> > all at once and then hard wrap those long lines?
> 
> Well, since adding a blank line after each line-break puts a blank
> line before the next line, you (should?) only need to add newlines
> after each line which can easily be done with sed:
> 
>   $ sed G input_file.txt > output_file_with_spaces.txt
> 
> If you want to format the lines at the same time, you can do that
> with "fmt"
> 
>   $ sed G input.txt | fmt > formatted_output_with_spaces.txt
> 
> By default, fmt formats to 72 characters wide but you can adjust that
> using
> 
>   fmt -80
> 
> Hope this helps,
> 
> -tim
> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

