Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 56BA328372E
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 16:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601906515;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4NNxMPXFmJ0X/FtuAdfTWQMaP4BPvuSKqEuzl9kc04Q=;
	b=GsoCzuHYEPBUN2RkATHNrDfiFtlwL2qelPYyCXEqRT2l3HcvfCglHaBEyPkDE+UfmMUzrf
	C8f/9lX5y2+FzrFrjtOn4I3ZUb5UBjq9K4REql6gCD0KohufxKs9huopul5PcASqxWJ3TW
	IkVcGHXIq4sHdyVW7QuUDW7tD4tkg8E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-370-dKsbxkljNR2qye3Q5dOhEQ-1; Mon, 05 Oct 2020 10:01:53 -0400
X-MC-Unique: dKsbxkljNR2qye3Q5dOhEQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9BB281029D23;
	Mon,  5 Oct 2020 14:01:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97C706198B;
	Mon,  5 Oct 2020 14:01:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E38A018198E2;
	Mon,  5 Oct 2020 14:01:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 095E1fjG014775 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 10:01:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CFE2B202450E; Mon,  5 Oct 2020 14:01:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C89DD2028DC0
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 14:01:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E2438007DF
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 14:01:38 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-525-quiIVoRyMLqx3b9sKBkJfw-1; Mon, 05 Oct 2020 10:01:34 -0400
X-MC-Unique: quiIVoRyMLqx3b9sKBkJfw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C4j263F4dz1dvq
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 10:01:34 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C4j262WmpzcbV; Mon,  5 Oct 2020 10:01:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C4j2629SKzcbW
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 10:01:34 -0400 (EDT)
Date: Mon, 5 Oct 2020 10:01:34 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <CAPo=n--CSkWCtp0Vc-XW+JT9w2aU4T0h4dyMU0NF1wAwZh-JgA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2010051000170.22871@panix1.panix.com>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
	<20201003130430.GA2173@rednote.net>
	<alpine.DEB.2.23.453.2010030632540.2247242@chime>
	<20201003100234.4f71a96d@bigbox.attlocal.net>
	<87y2knjmwe.fsf@cmbmachine.messageid.invalid>
	<20201004132601.GA9202@rednote.net>
	<20201004.134338.155.30@192.168.1.130>
	<20201004130414.6b75be74@bigbox.attlocal.net>
	<CAO2sX30sh2cLHnm3AUCRP2iYFByeCZ7SHxHrHwoZFw9RVJb5rg@mail.gmail.com>
	<CAPo=n--CSkWCtp0Vc-XW+JT9w2aU4T0h4dyMU0NF1wAwZh-JgA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can define windows in speakup and make those silent by having only
the window where you're working speaking.

On Mon, 5 Oct 2020, Linux for blind general discussion wrote:

> Date: Mon, 5 Oct 2020 04:47:13
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Console screenreaders
>
> With Speakup you can turn the automatic reading of updated content on and
> off with speakupkey+keypad-enter, or control+speakupkey+normal-enter.
> Fenrir has a similar mechanism.
>
> Regards,
>
> Rynhardt
>
> On Sun, 4 Oct 2020, 21:15 Linux for blind general discussion, <
> blinux-list@redhat.com> wrote:
>
> > I've never used Tmux, but that sounds like a prime example of why I
> > prefer SBL's less chatty nature to espeakup. To give a similar example
> > with a program I use regularly, Nano defaults to having a title bar on
> > the top and a status bar on the third line from the bottom(the bottom
> > two lines are a command quick reference). Espeakup will read these
> > everytime they change, but SBL will only read them if I use screen
> > review to read them, and in most cases, I prefer not to hear what's on
> > those lines(the one exception I can think of where I would prefer
> > espeakup's chattier behavior is in the case of pressing ctrl+C, which
> > prints current position on the status line(I also often care about the
> > lines written when saving a file, but since I'm usually at the end of
> > a file when saving, I can usually just use caps+pageDown to read from
> > current position to end of screen instead of having to manully
> > navigate to the status line with caps and up/down arrows like I
> > usually have to do with current position since I usually do ctrl+c in
> > the middle of a file).
> >
> > Admittedly, there are cases I wish I could switch between "read all
> > newly displayed text" and "read only what I tell you to read" on the
> > fly. I find the latter better for most things, but the former is nice
> > when playing text adventures.
> >
> > -Jeffery
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

