Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DB91365F177
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 17:54:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672937648;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QVd9dNnS4sD4QS5S5mHt9wj7w5AQhOJcOVG8uU4ISa4=;
	b=Udj99ssVYTN6784DIJjXuW2ccTe1WK1IPra7xCPEHu4tUFaHwj5oy3G68Vjz5y+nr61TcE
	LqdM/YKpUR6Wc6FanrIGLOcjIIZBTW/+mBR3ee5qjeOJQVVbMiE1g62P0mgkWhD/eIApgH
	mOiYsH+FzoJUmTjHxvSD8qN598k6OOs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-191-RK_megPYNEGr_5D2WjtfrQ-1; Thu, 05 Jan 2023 11:54:05 -0500
X-MC-Unique: RK_megPYNEGr_5D2WjtfrQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6C9953C0CD41;
	Thu,  5 Jan 2023 16:54:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ADF984014CEA;
	Thu,  5 Jan 2023 16:54:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 74B291947053;
	Thu,  5 Jan 2023 16:54:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Jan 2023 16:53:56 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Reducing redundancy in a collection of text files.
References: <mailman.1402.1672189247.2515662.blinux-list@redhat.com>
 <mailman.3121.1672914251.2515682.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.3121.1672914251.2515682.blinux-list@redhat.com>
Message-ID: <mailman.3182.1672937640.2515682.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Strangely, I didn't see the original posting, so following
up to the reply that came in today.

The for-loop doesn't work well unless there's a consistent naming
between the two file-names or you have the original cached somewhere.

If you need to diff multiple files, you need a way to associate one
with the other. In the below example, I imagined that they were named
"file_orig.txt" and "file_new.txt" which would turn your example into

  $ for fname in *_orig.txt ; do diff "$fname" "${fname%orig.txt}new.txt" ; done

which will find all the "*_orig.txt" files and compare them with
their corresponding "*_new.txt" versions.

Version-control is great for this sort of thing, whether git,
mercurial, fossil, or even svn, cvs, or rcs.  In this case, you
only have one filename, and the version control software manages
tracking the old-vs-new.  For example:

  $ git init .
  $ git add file1.txt file2.txt
  $ git commit -m "Initial checkin"
  $ edit file1.txt
  $ edit file2.txt
  $ git diff --word-diff=plain
  $ git commit -m "Made some satisfactory edits"
  $ edit file1.txt
  $ edit file2.txt
  $ git diff --word-diff=plain
  $ git commit -m "Made more edits"

That said, if you're *not* tracking them in version-control, you
can use diff or wdiff.  For prose, I find that `wdiff` is a little
easier to read

  $ wdiff file1.txt file2.txt

especially since you can set the text that is used for markers
around the text that was added/removed.  This lets you do crazy
things like use espeak's SSML markup mode if you want like

  $ wdiff \
     --start-delete '<s><prosody pitch="-8st">' \
     --end-delete='</prosody></s>' \
     --start-insert='<voice gender="female">' \
     --end-insert='</voice>' \
     file_orig.txt file_new.txt | espeak -m

so that deleted text gets spoken in a low voice and inserted text
gets spoken in a female voice.

Hopefully that puts a few tools in your belt that you can use to
make your work easier.

-tim


On 2023-01-05 12:19, Linux for blind general discussion wrote:
> You can look at the comm command for compairing files.
> It does not solve your problem, but might help you getting there.
> Regards, Willem
> 
> 
> On Wed, 28 Dec 2022, Linux for blind general discussion wrote:
> 
> >Okay, I have two related issues, one regarding comparing text files
> >and one regarding the contents of a single text file, and in both
> >cases, I'm mostly working with transcripts of conversations I had with
> >an AI language model that I'm trying to clean up.
> >
> >For the first issue, mostly caused by sometimes saving a transcript at
> >a dozen points in the conversation, let's say we have two versions of
> >a file A and B.
> >
> >Ideally, B contains everything contained in A plus some extra content
> >not found in A. Since A has no unique content, it can be deleted
> >safely.
> >
> >By extention, ideally, if I have a dozen versions of a given file, the
> >above would hold for every link in the chain, and I could just do a wc
> >on the files and delete all but the longest file.
> >
> >Problem is, I can't be sure A doesn't have contents not found in B,
> >and on top of that, the file names aren't always descriptive, so it
> >isn't obvious when I should even try comparing the contents of two
> >files.
> >
> >I suspect diff has an option or set of options to detect when one or
> >both of a pair of files have unique contents, but diff's lack of batch
> >processing would make using such a bit of a pain even just running it
> >on the file pairs I know to be similar.
> >
> >Is there either a utility that will compare every pair of files in a
> >directory looking for contents found in one but not the other,
> >deleting files with no unique content or a way to have a bash script
> >loop through a directory with diff to do something similar?
> >
> >Does something like
> >
> >for file 1 in *.txt file2 in *.txt; do
> >diff $file1 $file2
> >done
> >
> >or nesting fore loops of this sort even work in bash? I honestly don't
> >know as I don't think I've ever written a script that had to loop
> >through a cartesian product of input files instead of a single set.
> >
> >The other issue is that the AI language model in question likes
> >repeating itself... I might get a dozen responses that are half new
> >and half quoting part of the previous response, leading to a deozen
> >copies of some paragraphs.
> >
> >I know the uniq command can find and remove duplicate lines in a file,
> >but it only works if the duplicates are adjacent, and sorting the file
> >to make the duplicates adjacent would destroy any semblance of the
> >files having an order... plus, I'm more interested in finding
> >duplicates at the paragraph level, not the line level and while some
> >of the files only have line breaks at the end of the paragraph, others
> >have line breaks mid paragraph... Also, it would be nice if, instead
> >of just deleting the duplicate paragraphs, the tool I use to automate
> >tracking them down replaced the duplicates with a marker indicating
> >the starting line number of the original and the first 40 or so
> >characters of the paragraph to facilitate wanting to either move the
> >duplicated paragraph to one of the later occurances or deciding to
> >keep some of the duplicates for one reason or another.
> >
> >Anyone know of any tools for locating repeated content in a file
> >without the limitations of uniq?
> >
> >And for either issue, I would prefer a command line solution.
> >
> >_______________________________________________
> >Blinux-list mailing list
> >Blinux-list@redhat.com
> >https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

