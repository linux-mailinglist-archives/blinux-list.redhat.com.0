Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2152C2B82A7
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 18:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605719261;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=956NBHOJUWrwC18kbDZx1qH6U4/dgB9o4XM8KrHUfZQ=;
	b=WvDUoysg6KaWiXNEy7PI6AR1lCw5fqLimEOl24ocNYZXHzp/lUHIUMCc7gVYC3MGSBqMuL
	LhxHSdRPE2mIAZAuDmhTV//Jk1MP3+QVIugg109WNRT4QamoR+mCCgyLgTTIgLfWgY7G+D
	na6w6YA/6Jfiz5KREjR9H3PNr1SCKiY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-169-vI791gamO5eDqJzhnb3wgg-1; Wed, 18 Nov 2020 12:07:38 -0500
X-MC-Unique: vI791gamO5eDqJzhnb3wgg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11EB5100F7A9;
	Wed, 18 Nov 2020 17:07:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBD285C1D7;
	Wed, 18 Nov 2020 17:07:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C411C18095C9;
	Wed, 18 Nov 2020 17:07:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIH7Uvf000836 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 12:07:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 702B59D61; Wed, 18 Nov 2020 17:07:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A75594621
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:07:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60191801224
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:07:27 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-247-h6Q6m_GxMLChU8yQWBIcjQ-1; Wed, 18 Nov 2020 12:07:24 -0500
X-MC-Unique: h6Q6m_GxMLChU8yQWBIcjQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Cbq4C3k4Kz1JRM
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 12:07:23 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Cbq4C25Myzcbc; Wed, 18 Nov 2020 12:07:23 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Cbq4C1g9XzcbV
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 12:07:23 -0500 (EST)
Date: Wed, 18 Nov 2020 12:07:23 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: as I suspected
In-Reply-To: <CAGJxbF60i13tKz-Wf_X+LEq5hg4xPKDT0z971A88cG9pVS=ojQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2011181201000.25416@panix1.panix.com>
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
	<CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
	<CAGJxbF60i13tKz-Wf_X+LEq5hg4xPKDT0z971A88cG9pVS=ojQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just tried the latest iso and I hope it needs accessibility booting
instructions because it doesn't talk when booted up the way that was
done on earlier isos.  I wrote Daniel about this when I found out so
maybe I'll be able to get this or some future iso working.  Virtual
environments are not good for software development and that may have got
Jenux development into trouble this time.  I need to try the iso on
another machine to see if I can duplicate the failure.

I have drive sleds on both machines which means the machines so long as
I have a drive that doesn't brick them are impossible to brick.  You
switch out drives to a known working drive and you're back in business.
That's why I can do the testing I do.  If you don't have a test
environment or don't want to participate in testing that's perfectly
understandable.  I can't test braille yet but am thinking about buying
an orbit reader to use to test brltty and whatever other braille
technology Linux has to offer.

On Wed, 18 Nov 2020, Linux for blind general discussion wrote:

> Date: Wed, 18 Nov 2020 09:45:39
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: as I suspected
>
> I mean, he's definitely not around on the linux-a11y IRC. He's also not
> keeping the VM of Jenux updated, as far as I can tell. But I'd rather have
> a friend help me install Arch than potentially brick my PC with this.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
> On Tue, Nov 17, 2020 at 6:36 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > Daniel Nash, the maintainer of Jenux, is a good friend of mine and he
> > always seems to make sure that things stay updated. His dedication to the
> > Linux operating system and to his user base has not been equaled in the
> > space of visually impaired Linux distributions, at least in my opinion.
> >
> > On Tue, Nov 17, 2020, 11:48 AM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> > > A new iso was released.
> > > https://nashcentral.duckdns.org/projects/Jenux-2020.11.16-dual.iso
> > > for Jenux.
> > >
> > >
> > > --
> > > United States has 633 Billionaires with only 10 doing any annual
> > > significant giving.
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
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
United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

