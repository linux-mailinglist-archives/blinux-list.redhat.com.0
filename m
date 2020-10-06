Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7D50284C90
	for <lists+blinux-list@lfdr.de>; Tue,  6 Oct 2020 15:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601991045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RI33aAhbPGFJ5ByTBzp4Yh2y3EVp6XCH3immTZo5DBE=;
	b=K9k1uBx/nJlSKtRmXagOe6SpW3sd0bC67lLfNNbOwoLtqQDNqOltF3R49ptpMdvm0j5dFg
	ckfVZTmu9RnPbiQDY/yxp/48D8Ui7AEz4y4tkKsruYdwxwHPjXmwcCBQfWCFyBfXPgvYlS
	95z9kbsaDK2eCsZxbYD1Yp/9/XFcf2Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-c588tO2fNky_df9zP6F_pg-1; Tue, 06 Oct 2020 09:30:41 -0400
X-MC-Unique: c588tO2fNky_df9zP6F_pg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A73801074657;
	Tue,  6 Oct 2020 13:30:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4124127CC5;
	Tue,  6 Oct 2020 13:30:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3316B44A6D;
	Tue,  6 Oct 2020 13:30:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 096DUHYJ001871 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Oct 2020 09:30:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C4C8ECF635; Tue,  6 Oct 2020 13:30:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEE7ACF62C
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 13:30:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E5BA18AE948
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 13:30:14 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-24-ibgboNtaPFO9jP238fKS7g-1; Tue, 06 Oct 2020 09:30:11 -0400
X-MC-Unique: ibgboNtaPFO9jP238fKS7g-1
Received: by mail-qk1-f180.google.com with SMTP id z6so8083843qkz.4
	for <blinux-list@redhat.com>; Tue, 06 Oct 2020 06:30:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:user-agent
	:mime-version;
	bh=+9hVquK7pdYMeGoniAhB8ygeAXhErD/HjD9MPt06oa8=;
	b=i8LwgDcQa2MJ4FBnmgMDDya6GHuXF5RVXbDKKbzoGIQEhH8/iw+br1Era0LpBy1u/m
	SHehDLU3VwBDfJBB681zxnlUEvgew6Ltw9lVcKxo9cESxj4yH/QOgc2JRhnUCBjRixK7
	yVxgWDApLk3s/KUl+aqP0CNnXQ3gjAI5vkC5kQ7cObCUwG2yxdMIhSPKdsqVjoENwe74
	uEOMLqr3jcZKcVDfmQ+Bq7hSNBiCpVTTCpuRxuI+SVwtTqKTsfzXoPI18rgsbmrCCw+P
	erPQAfp65kLVUGlT5uPChevxH4akL4MfKHf2Qn+HgQrH5DaVgNiTeghBo3TMXEBtXXuE
	Gb+w==
X-Gm-Message-State: AOAM531mlDwBUsl1Pv5FmB6QG/eTJo3/mBjUXmf/nBZTjH3rt5B0EVey
	3y48a6KTigLmu9Yhum1jkziBrM9vFQEeZg==
X-Google-Smtp-Source: ABdhPJy3BicdcJWyw04SnRWSGq4F+XR1HRk+53scqGycS7/OQVkwKf2bbDEDGmOU/OPMKfdEuVnXzg==
X-Received: by 2002:a37:6407:: with SMTP id y7mr4869319qkb.404.1601991010601; 
	Tue, 06 Oct 2020 06:30:10 -0700 (PDT)
Received: from dans-mac-mini.home (pool-74-98-222-165.pitbpa.ftas.verizon.net.
	[74.98.222.165])
	by smtp.gmail.com with ESMTPSA id l5sm2328525qtc.28.2020.10.06.06.30.08
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 06 Oct 2020 06:30:09 -0700 (PDT)
Date: Tue, 6 Oct 2020 09:30:08 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup and links browser
Message-ID: <alpine.OSX.2.23.453.2010060924400.5318@dans-mac-mini.home>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Lynx the cat has two options that greatly inhibit inline images and image file links:

Show images (!)                  : [ignore___]
Verbose images                   : [OFF__________]

On Mon, 5 Oct 2020, Linux for blind general discussion wrote:

> Hi there,
> Okay, after fixing the link so there was no slash before the org part of
> the  path, here is what I did.
> Granted, as stated, I am not using speakup, but if you have links the
> chain configured to its best advantage, this sould not be a problem.
> by which I mean you have the links are numbered feature turned on.  Much
> as with lynx the cat, numbering the links lets you skip past images
> without issue.
> I have no idea which file  you desired, there is allot of them.
> Still, I used my arrow keys past the things like parent directory and the
> like to reach one of the  binary images listed.
> When I hit entre I got the message
> download,
> details of the file name is a binary image, would you like to save or
> display   this file?
> Such is what I normally get when downloading, if you move your arrow key
> to the right you get an s for save, a d for display, sometimes an extra
> like  show full headers, and c to cancel the  process.
> I cannot imagine why speakup would prevent that from working
> comparatively.
> Indeed the files menu, I hit escape and arrow down, is there, but i am
> unsure it is the best choice here.  When I am saving a formatted document I
> use the files menu.  but other files like this one or audio or whatever
> hitting the entre key starts the process for me, and I have links are
> numbered set so I can reach the desired download.
> Does this resonate?
> Karen
>
>
>
> On Mon, 5 Oct 2020, Linux for blind general discussion wrote:
>
> > https://bouncer.gentoo/org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/
> >
> > What I did with speakup was to try moving with the tab key onto the
> > first stage3 link andthat didn't work.  So I tried with the arrow keys
> > and that didn't work either.  Speakup said it had worked, but speakup
> > lied.  How I know is the stage3 file ends in .tar.xz and the only thing
> > links was willing to download was an image file from that location.  So
> > next I left braille terminal alone since I had enabled that before going
> > into the site and it didn't do anything for me.  Finally, I numbered
> > links in the links configuration settings under html options then saved
> > those html options two separate menu entries then I keyed in the correct
> > number for the stage3 file to download and that was the only way links
> > would get the job done.  What's worse, I got no notification that the
> > download was complete from links.
> > The other way that's possible is with a bash script where site and
> > download are two variables defined and using wget with the -bc options
> > since that way you can know when your download is complete.
> > You use grep to search wget-log for the word saved and that line will
> > let you know your file download is complete.  No comment on validity of
> > the download, that's a matter for sha512sum.
> >
> > On Sun, 4 Oct 2020, Linux for blind general discussion wrote:
> >
> >> Date: Sun, 4 Oct 2020 18:45:08
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Linux for blind general discussion <blinux-list@redhat.com>
> >> Subject: Re: speakup and links browser
> >>
> >> How about share the location  so others
> >> can see if they have the same download issue?
> >> no idea about speakup, but I use links the chain for downloading often.
> >>
> >>
> >>
> >> On Sun, 4 Oct 2020, Linux for blind general discussion wrote:
> >>
> >>> I tried downloading a file from a website using links and couldn't
> >>> download the file.
> >>> Using speakup I was able to cursor onto the desired file or that's what
> >>> speakup told me.
> >>> However when I tried to download that file I got offered an image file
> >>> from another cursor location on the screen I did not want.
> >>> I think this is more of a links problem than a speakup problem and am
> >>> wondering if it's possible to configure links in some way to clear this
> >>> problem.
> >>> I don't know what the braille setting would have bought me since I have no
> >>> braille display.
> >>> As things stand, I had more success with wget and a bash script I wrote.
> >>> For that reason I'm going to share this one with the list.
> >>> The script could probably be improved by adding a site variable to the
> >>> download variable for wget to process but I haven't done that yet.
> >>>
> >>> #!/usr/bin/env bash
> >>> #file: s3.sh - gentoo stage3 download script
> >>> download="stage3-amd64-20201001T120249Z.tar.xz"
> >>> wget -bc
> >>> https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/current-stage3-amd64/$download
> >>>
> >>>
> >>> --
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://www.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >>
> >
> > --
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

