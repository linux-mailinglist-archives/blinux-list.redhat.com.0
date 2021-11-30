Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 985484636A7
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 15:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638282613;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GH8J8Us/+vqRv+4sc86fQFiYnLLFn2ZVUTfDU1aqOWk=;
	b=akS7zDG2eTJmnsRVeOdhDqkxD0auxhBGtkQ/eiJROiQ7lrSgMrV3/m9+inuwB4vsEdUH3a
	ooGmcYVlfi9+J1wkNVg3gfLD8zOyo9URW5G0a63SKGMYGuZIgrLy5/XXU2k+lTx/9DuJBY
	a295kBJpjVnizsojKHGzdAyYJdyPv1E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-198-Gk20qnU-MFacVcaR33RLhQ-1; Tue, 30 Nov 2021 09:30:09 -0500
X-MC-Unique: Gk20qnU-MFacVcaR33RLhQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 456B5100F942;
	Tue, 30 Nov 2021 14:30:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AD0310023B8;
	Tue, 30 Nov 2021 14:30:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 075B61809C89;
	Tue, 30 Nov 2021 14:30:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUETxfq020991 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 09:29:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2C7CA401E33; Tue, 30 Nov 2021 14:29:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 280AB401E39
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 14:29:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C1A885A5BB
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 14:29:59 +0000 (UTC)
Received: from gateway11.unifiedlayer.com (gateway11.unifiedlayer.com
	[74.220.192.56]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-51-zKBCKl7lPySGw2OB3TehXw-1; Tue, 30 Nov 2021 09:29:57 -0500
X-MC-Unique: zKBCKl7lPySGw2OB3TehXw-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway11.unifiedlayer.com (Postfix) with ESMTP id 9E0192009DCCE
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 08:05:59 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id s3lfmvFeftGNQs3lfmcxD6; Tue, 30 Nov 2021 08:05:59 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:39686 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1ms3lf-002wJv-AD
	for blinux-list@redhat.com; Tue, 30 Nov 2021 08:05:59 -0600
Date: Tue, 30 Nov 2021 08:05:57 -0600
To: blinux-list@redhat.com
Subject: Re: What is the easiest and most accessible editor?
Message-ID: <20211130080557.3c5ae9fe@bigbox.attlocal.net>
In-Reply-To: <alpine.NEB.2.23.451.2111300127570.10828@panix1.panix.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<alpine.NEB.2.23.451.2111292017540.5144@panix1.panix.com>
	<20211129210050.090ce9a0@bigbox.attlocal.net>
	<alpine.NEB.2.23.451.2111300127570.10828@panix1.panix.com>
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
X-Exim-ID: 1ms3lf-002wJv-AD
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:39686
X-Source-Auth: tim@thechases.com
X-Email-Count: 3
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I like RCS when dealing with single files such as one
configuration file or my "~/notes.txt".  However, once there are
multiple files involved, I usually switch to one of the others (I've
used all the ones I've listed, but default to git these days; but
Fossil is good, too). That way, there's more smarts about how *all*
the files were at any given point in time.

-tim

On November 30, 2021, Linux for blind general discussion wrote:
> Version control can be a good idea if users learn to use it.  I
> found rcs to be the simplest of these systems to learn and use.
> 
> 
> On Mon, 29 Nov 2021, Linux for blind general discussion wrote:
> 
> > Tim here.  I like putting my configuration files in version
> > control, whether git, subversion, or even just old-school RCS.
> > That way I have a complete history of changes, can undo all sorts
> > of changes, compare various versions, etc.  It really helps track
> > down when/why/where something broke.
> >
> > -tim
> >
> >
> >
> >
> > On November 29, 2021, Linux for blind general discussion wrote:  
> > > Before editing a configuration file, make a copy of it to
> > > another file, that way if you do a configuration change you
> > > don't like you can back out and same goes with any mistakes.
> > > If you like your changed configuration file, then maybe delete
> > > your backup.
> > >
> > >
> > > On Mon, 29 Nov 2021, Linux for blind general discussion wrote:
> > >  
> > > > Thanks a bundle for all of you folks. I did not know how much
> > > > of a discussion my innocent and naive question would
> > > > generate. I learned a lot from your answers. Although I have
> > > > never messed with configuration files since the days of the
> > > > autoexec.bat in the days of dos, I think I have enough
> > > > courage to play with changing some configuration settings
> > > > using some of the editors you suggested.
> > > >
> > > > I launched few of them both in the desktop and in the terminal
> > > > and I found geany and nano to be easy. I did not find Micro, I
> > > > guess it is not preinstalled on slint.
> > > >
> > > > I know that my editing needs would be very basic.
> > > >
> > > > Cheers,
> > > >
> > > > Ibrahim
> > > >
> > > > On 11/29/21 5:33 PM, Linux for blind general discussion
> > > > wrote:  
> > > > > There is teachjove and jove is jonathan's own version of
> > > > > emacs and teachjove can be run without running jove or emacs
> > > > > directly.  This can be done from the terminal for any
> > > > > willing to learn.  I suppose emacs could be configured in
> > > > > the same way but haven't tried that yet.  It probably would
> > > > > need a small script.
> > > > >
> > > > >
> > > > > On Mon, 29 Nov 2021, Linux for blind general discussion
> > > > > wrote: 
> > > > >> I actually have a computer science degree and still find
> > > > >> both emacs and vi to be riddles, wrapped in mysteries,
> > > > >> inside enigmas and I should probably figure out a way to
> > > > >> add puzzle, conundrum, and a few other synonyms to that
> > > > >> Matryoshka doll of an idiom.
> > > > >>
> > > > >> I don't doubt the claims they are powerful bits of kit once
> > > > >> mastered, but they certainly for the faint of heart and
> > > > >> not a good choice if you just want to edit the occasional
> > > > >> config file.
> > > > >>
> > > > >> I personally use Nano, and it lets you just enter nano to
> > > > >> open a blank file you can just start typing in or nano
> > > > >> path/to/filename.ext to open an existing file, but it does
> > > > >> have some commands that might throw people coming from a
> > > > >> grapphical editor or word processor for a loop(e.g. save is
> > > > >> ctrl+o, not ctrl+s, quit is ctrl+x, not ctrl+q) and has cut
> > > > >> and paste that is line based instead of selection
> > > > >> based(e.g. ctrl+k cuts the current line in its entirety,
> > > > >> repeating ctrl+k without otheer input continues adding
> > > > >> lines to the cut buffer, ctrl+u uncuts evereything in the
> > > > >> cut buffer, copying is accomplished by uncutting where
> > > > >> youo cut, then uncutting again where you want the copy).
> > > > >> Also, pressing ctrl+g will bring up nano's full command
> > > > >> list, while the most commond commandsare printed on the
> > > > >> bottom two lines of the screen.
> > > > >>
> > > > >> For simpler console text editors, there's also Micro,
> > > > >> which is similar to Pico/nano, but has key bindings more
> > > > >> in line with the majority of graphical editors.
> > > > >>
> > > > >> _______________________________________________
> > > > >> Blinux-list mailing list
> > > > >> Blinux-list@redhat.com
> > > > >> https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > >>
> > > > >>  
> > > > > _______________________________________________
> > > > > Blinux-list mailing list
> > > > > Blinux-list@redhat.com
> > > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > > >  
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > > >
> > > >
> > > >  
> > >
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

