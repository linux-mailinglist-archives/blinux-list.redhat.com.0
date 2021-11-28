Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A894602B5
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 02:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638061619;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wlLb4TzOOYbWKxoJmFjQomsoH2BptgFHNyFX4FJn1KA=;
	b=Ooa4rU9Y8AqryuW3SvqzueuELmEq7FKOrort8PifmuYUts2/UHCZrYKRaWJuHUJwlWocRh
	jT2ocHKf6R1btx85WuuvCvuKVM+gL1DFiN8XZO1n99oIxSyc7pJLOj/IjAGBAKOtp85xVr
	F1PXx0HnAYJ1ZVs2c12RxZY1mrojGss=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-237-x0NFtja9NyywOB2AAZKS8g-1; Sat, 27 Nov 2021 20:06:56 -0500
X-MC-Unique: x0NFtja9NyywOB2AAZKS8g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D55981CCB4;
	Sun, 28 Nov 2021 01:06:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B23945C23A;
	Sun, 28 Nov 2021 01:06:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A75AE1809C89;
	Sun, 28 Nov 2021 01:06:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AS12dHH008635 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 20:02:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EC9CC2166B2D; Sun, 28 Nov 2021 01:02:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E751D2166B25
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:02:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B74CC85A5AA
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:02:34 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-484-tgB9OcBkPDWeRXPQrwCIxw-1; Sat, 27 Nov 2021 20:02:33 -0500
X-MC-Unique: tgB9OcBkPDWeRXPQrwCIxw-1
Received: by mail-qv1-f46.google.com with SMTP id p3so3458250qvj.9
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 17:02:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Ib0W8HnlNK8q5QEjUMTp6/4mPszq/mWdAwdBCB/SX4o=;
	b=vXOjpn3yvCATZOT7nwpX5h4dFWPKRYOakhU3/aZywrYbqfbjrGDLNVU0Suairnx4HA
	irksy/zNwg2S7bDYnqAJueYvUOh0R4r7EwYHFGx1dl3myTDnLbxGIxdGRr+SBb2Gqkdc
	gLLNlRraeknnTt4fMyrgJ8d0+IQsQj7Yhjelg86zkiGqeXG5gHW3yMKbl1tPAt3GZFlX
	4OMQGmqS7HZkKYJ/vyJLwaAW9usrc9v+5+Clfmzr5kfT8fG8Qzk2M+bGk7DKd0MSUQ2s
	Jn+Npd7nmwQ32ZLSdrkyjLQ6QzjdP8BOZxR6rdwIlbsJ0yBMbwO7PerjUWPItvfoYSt0
	e7oA==
X-Gm-Message-State: AOAM530lSdfI98f4tO3bnsAs9iQ1SytpqwsBGc1KNe1iZzBFwh0UlkBq
	EWwj/VBpV/xRrdKD8hIlvlzjsqLm1ItEY9dPI2LUngIV
X-Google-Smtp-Source: ABdhPJwImrj4fJ/GYiYDGT0CyFh+NoSbPtGLpTZyz/Gi13r4oMhdMGKw7pTEdu+MlnI+gHMcTUkXTVGpNpH0WLQdn8g=
X-Received: by 2002:a05:6214:5286:: with SMTP id
	kj6mr34028936qvb.50.1638061352227; 
	Sat, 27 Nov 2021 17:02:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Sat, 27 Nov 2021 17:02:31
	-0800 (PST)
In-Reply-To: <c48bf756-d98f-0659-c826-76648ec82e64@gmail.com>
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
	<8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
	<20211127173705.fcq6hh2qbozygm42@alex-pc>
	<77236cdb-7bff-28be-19db-523e15e3a5ea@gmail.com>
	<188e6c5d-8c4c-5521-5d51-556423c3294c@hubert-humphrey.com>
	<c48bf756-d98f-0659-c826-76648ec82e64@gmail.com>
Date: Sun, 28 Nov 2021 01:02:31 +0000
Message-ID: <CAO2sX30Ep5qhUcuCYvg0X9vuVV9LQaZZEoe=AQ8G2C_ekcCfKw@mail.gmail.com>
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The two main places where tab completion comes into play are in not
having to type full names of commands with long names and making
specifying local files and directories as arguments to commands
quicker and less error prone.

For example, on my system, I have a directory of custom-made scripts
I've added to my path(the list of directories the cli searches for
executables matching the command provided). One of these scripts is
titled uncompress.sh and automates extracting all the .zip and .rar
files in the working directory to their own directory(so I don't end
up with files vomited all over my working directory if the zip/rar
lacks a single top level directory to contain everything else.

Instead of typing uncompress.sh manually, I

type unc (i need three litters because their are other commands
begining with un).
press tab to get uncompress(a standard alias of gunzip, the extract
for gzip archives that is standard on most Linux(and probably other
Unix-like systems) systems).
type a dott and press tab again to get the sh.

Another example is that I have rename.ul for batch renaming files, and
while  there are other commands on my system starting with ren, I only
need to type rena and then tab to get the full command name...

Admittedly, completing command names can be of limited use with how
many of the most command commands are single, short words or
abbreviated down to just two or three letters(e.g. the standard file
management commands such as ls to list, rm to remove/delete, mv to
move, cp to copy, du for disc usage, wc for word count, cd to change
directory, mkdir to make directories and rmdir to remove
directories(granted, those last two are five letters each, but style,
very short command).

Where tab completion really shines is in providing a quick, error
resistent, means of not having to type out filenames and directories
in their intirety when providing them as command line arguments.

For example, say you have the following in your home directory:

Books
Desktop
Documents
Downloads
Games
Music
Photos

Except for the Ds, to change to any of those directories, you just
need to type cd, the first letter of the directory name, tab, and prss
enter, and at worse, you just need to type cd dow or cd doc before
doing a tab enter.

Or lets say the current directory contains somthing like:

Chapter 01.txt
Chapter 02.txt
Chapter 03.txt
...
Chapter 50.txt

and you want to open a specific chapter in the nano text editor. You
can type nano, a space, tab to get Chapter\  the number of the chapter
you want, then tab again for the .txt... and the tab completion
automatically adds the backslashes for spaces and any other characters
in the filename that need to be escaped.

And the keystroke savings can really stack up...

if you had a folder with files like:

absurdly ridiculous ludicrously  long filename.extension
bafflingly ridiculous ludicrously  long filename.extension
confusingly ridiculous ludicrously  long filename.extension
ludicrously absurdly ridiculous ludicrously  long filename.extension
ridiculous absurdly ludicrously  long filename.extension

for each, you'd just need to type the first letter and tab to get the
rest, and all the backslashes would be added as needed.

Or lets say you have a directory structure like:

Documents
-College
--Biology
---Anatomy
---Metabolism
--Chemistry
---Ionic
---Covalent
---organic
--Math
---Calculus
---Statistics
---Linear Algebra
-Personal
--Letters
--Fiction
---fantasy
---Sci-Fi
--Essays

As long as no two items in the same subdirectory start with the same
letter, you could do something like type cd D tab C tab B tab A tab to
produce

cd Docuuments/College/Biology/Anatomy/

ANd if there is any point in that path where there's only one item at
a given level, you don't even need to type anything before tabbing
again(though, tab completion always pauses at a slash, but if you had
a very deep, unbranched directory tree, you could just hold tab to get
all the way to the bottom.

I'm long past the point where using tab completion is second nature,
but I hope these examples of how it works are helpful in understanding
how to use it.

But in general, it's most useful when either:

A. Every file/directory in a directory starts with a different letter.
B. Everything in a directory has the same beginning and the first
deviation is something like a number.

but even when the contents of a directory are more random, much of the
time, by the time you type the first word worth of unique characters,
a tab will take you, if not to the end, then two the point of entering
a number because there are files whose name differ only in a number or
an extension because you have files with names that are identical
excapt for the extension.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

