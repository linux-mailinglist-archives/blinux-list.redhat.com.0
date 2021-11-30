Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A4570462ACF
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 04:01:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638241279;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9LqbBIT5olAtMNNg3rFnd2ODK01xjCYhtA/UD/46tpA=;
	b=JiFksKZ2c791wzkD+N/yqTn+J8E2rDPaKd7Sct1G3MhIDJfZ8LKYqJkjn0QLd6NP75EltK
	jIj/l6JLSqnKRF3ocSXqDfD++VjSWX6HRWTGCYpIxIu1zZ4s6wTPHdN0YEeyNNXajr1HBC
	2g/JXTc3i7sHw0jXSxFPNqhcaAj60YY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-317-rA6QvUZ6OwCRUvdwsuLiUg-1; Mon, 29 Nov 2021 22:01:17 -0500
X-MC-Unique: rA6QvUZ6OwCRUvdwsuLiUg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF3BB80D680;
	Tue, 30 Nov 2021 03:01:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E003196F1;
	Tue, 30 Nov 2021 03:01:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D22A31809C81;
	Tue, 30 Nov 2021 03:01:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AU30vbA002123 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 22:00:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0A808492C3B; Tue, 30 Nov 2021 03:00:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 056BD492C38
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 03:00:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E01CB808784
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 03:00:56 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[69.89.27.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-22-FJASZJ49Nzui2-iFFxOI4g-1; Mon, 29 Nov 2021 22:00:54 -0500
X-MC-Unique: FJASZJ49Nzui2-iFFxOI4g-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id DDAC92009BD38
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:00:51 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id rtNzmYhLPcfn8rtNzmUIS5; Mon, 29 Nov 2021 21:00:51 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:41263 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mrtNz-002Yjk-Kg
	for blinux-list@redhat.com; Mon, 29 Nov 2021 21:00:51 -0600
Date: Mon, 29 Nov 2021 21:00:50 -0600
To: blinux-list@redhat.com
Subject: Re: What is the easiest and most accessible editor?
Message-ID: <20211129210050.090ce9a0@bigbox.attlocal.net>
In-Reply-To: <alpine.NEB.2.23.451.2111292017540.5144@panix1.panix.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<alpine.NEB.2.23.451.2111292017540.5144@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1mrtNz-002Yjk-Kg
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:41263
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I like putting my configuration files in version control,
whether git, subversion, or even just old-school RCS.  That way I
have a complete history of changes, can undo all sorts of changes,
compare various versions, etc.  It really helps track down
when/why/where something broke.

-tim




On November 29, 2021, Linux for blind general discussion wrote:
> Before editing a configuration file, make a copy of it to another
> file, that way if you do a configuration change you don't like you
> can back out and same goes with any mistakes.  If you like your
> changed configuration file, then maybe delete your backup.
> 
> 
> On Mon, 29 Nov 2021, Linux for blind general discussion wrote:
> 
> > Thanks a bundle for all of you folks. I did not know how much of
> > a discussion my innocent and naive question would generate. I
> > learned a lot from your answers. Although I have never messed
> > with configuration files since the days of the autoexec.bat in
> > the days of dos, I think I have enough courage to play with
> > changing some configuration settings using some of the editors
> > you suggested.
> >
> > I launched few of them both in the desktop and in the terminal
> > and I found geany and nano to be easy. I did not find Micro, I
> > guess it is not preinstalled on slint.
> >
> > I know that my editing needs would be very basic.
> >
> > Cheers,
> >
> > Ibrahim
> >
> > On 11/29/21 5:33 PM, Linux for blind general discussion wrote:  
> > > There is teachjove and jove is jonathan's own version of emacs
> > > and teachjove can be run without running jove or emacs
> > > directly.  This can be done from the terminal for any willing
> > > to learn.  I suppose emacs could be configured in the same way
> > > but haven't tried that yet.  It probably would need a small
> > > script.
> > >
> > >
> > > On Mon, 29 Nov 2021, Linux for blind general discussion wrote:
> > >  
> > >> I actually have a computer science degree and still find both
> > >> emacs and vi to be riddles, wrapped in mysteries, inside
> > >> enigmas and I should probably figure out a way to add puzzle,
> > >> conundrum, and a few other synonyms to that Matryoshka doll of
> > >> an idiom.
> > >>
> > >> I don't doubt the claims they are powerful bits of kit once
> > >> mastered, but they certainly for the faint of heart and not a
> > >> good choice if you just want to edit the occasional config
> > >> file.
> > >>
> > >> I personally use Nano, and it lets you just enter nano to open
> > >> a blank file you can just start typing in or nano
> > >> path/to/filename.ext to open an existing file, but it does
> > >> have some commands that might throw people coming from a
> > >> grapphical editor or word processor for a loop(e.g. save is
> > >> ctrl+o, not ctrl+s, quit is ctrl+x, not ctrl+q) and has cut
> > >> and paste that is line based instead of selection based(e.g.
> > >> ctrl+k cuts the current line in its entirety, repeating ctrl+k
> > >> without otheer input continues adding lines to the cut buffer,
> > >> ctrl+u uncuts evereything in the cut buffer, copying is
> > >> accomplished by uncutting where youo cut, then uncutting again
> > >> where you want the copy). Also, pressing ctrl+g will bring up
> > >> nano's full command list, while the most commond commandsare
> > >> printed on the bottom two lines of the screen.
> > >>
> > >> For simpler console text editors, there's also Micro, which is
> > >> similar to Pico/nano, but has key bindings more in line with
> > >> the majority of graphical editors.
> > >>
> > >> _______________________________________________
> > >> Blinux-list mailing list
> > >> Blinux-list@redhat.com
> > >> https://listman.redhat.com/mailman/listinfo/blinux-list
> > >>
> > >>  
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >  
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

