Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 620AF297E06
	for <lists+blinux-list@lfdr.de>; Sat, 24 Oct 2020 20:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603564864;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9ZFXbPjs0cwqZlaGZdYfxaMm+NB5e92eoDCJRrEmxC8=;
	b=eBbzKDF37hx4FpJueoLxLJzTih6vLOXsbI7SdIFzZ/DSuboYpcYCzyvuq7GdhW2tQ/oABR
	8LWIZbDb1Jdhyd7z/+M9EmnJzGdPJlEYSw6eA9OYQDPuY7Q9JYmr0TaRmwGd/nVMV0zonl
	k+gA2Ydi4kFTex39eSyW3A/1TuDLK+4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-541-WlirwoVGOO2mP4PCaE89TQ-1; Sat, 24 Oct 2020 14:41:02 -0400
X-MC-Unique: WlirwoVGOO2mP4PCaE89TQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05CC7107B476;
	Sat, 24 Oct 2020 18:40:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0427610013D9;
	Sat, 24 Oct 2020 18:40:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22E1A5811E;
	Sat, 24 Oct 2020 18:40:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09OIensI028277 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Oct 2020 14:40:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 993495AB76; Sat, 24 Oct 2020 18:40:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 940225AB88
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 18:40:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89BDC185A78B
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 18:40:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-172-4TBnS3YPO62wNZmlRbJNGg-1; Sat, 24 Oct 2020 14:40:44 -0400
X-MC-Unique: 4TBnS3YPO62wNZmlRbJNGg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CJVKR3MCtzPVS
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 14:40:43 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CJVKR36n5zcbf; Sat, 24 Oct 2020 14:40:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CJVKR31bwzcbW
	for <blinux-list@redhat.com>; Sat, 24 Oct 2020 14:40:43 -0400 (EDT)
Date: Sat, 24 Oct 2020 14:40:43 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
In-Reply-To: <20201024180518.GB2013@rednote.net>
Message-ID: <alpine.NEB.2.23.451.2010241438040.3794@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
	<20201024180518.GB2013@rednote.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Have you got something like rc.local on that box?
If yes, you could put an aplay command in that file to play a sound and
have the system play that sound for you before you log in.
There's a purple sound set with a login.wav sound in it I helped a
friend get working on his system since he and you share the same
situation.
I can't help out with much, but that's a problem I got solved on this
end.

On Sat, 24 Oct 2020, Linux for blind general discussion wrote:

> Date: Sat, 24 Oct 2020 14:05:18
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: building kernel for ac97 sound card
>
> Yes, the problem is that not all mb provide a speaker for pcspkr. So,
> even with the module loaded, there may be nothing for it to drive.
>
> This is exactly the problem I'm having with my System76 mini PC. Lovely
> box in many ways, but no speaker. I can load pcspkr, but I get no sound.
>
> I've been kicking myself over this issue since acquiring this system
> earlier this year. Never again will I make that mistake.
>
> Janina
>
> Linux for blind general discussion writes:
> > The sound card drivers are modules, so just build the module if need be.
> > Ac97 sounds pretty standard to me though, so I think it should be part of
> > the standard setup already.
> > The pc speaker is something else though.
> > There is a module called pcspkr which allow the use of that.
> > All pc's does not have a speaker though.
> > Maybe I am missing something in your message?
> > Regards, Willem
> >
> >
> >
> >
> > On Fri, 23 Oct 2020, Linux for blind general discussion wrote:
> >
> > > I have an ac97 sound card and a c-media usb sound card on a system.  I
> > > have only had success activating the pcspeaker when building a kernel for
> > > gentoo.  I have no clue as to what to enable to get this done.  This is
> > > even after having gone through lspci output and lsmod output with the
> > > install-minimal dvd running the operating system  The speaker-test utility
> > > puts out sound in the chroot environment and is silent after first boot
> > > into the new environment made by the compiled kernel.
> > >
> > >
> > > --
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

