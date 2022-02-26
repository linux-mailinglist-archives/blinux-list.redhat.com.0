Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A35474C54C5
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 10:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645866347;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5eWLM/GYaeTSKDT5hRm6XzIP2Iv2oRgQ9wJEUED/2VU=;
	b=ACOrpivejNY83At9+ZMuAZ/fwfdUwPXs/wQyNHwknIFBOcTiJPfdF/Y5/vrtnbns5bK/6+
	yoAkDYStilXGPN4VNOPTMogHVNVXUyV19zS1rqhAGRn4IiY4fA70ZC9vRrGzyplnkhIIH8
	zdRjJHECmfkvYjzPQs7V0QiNqhC4ohs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-14-iCRSQmr8MJGeyfk_yna5YA-1; Sat, 26 Feb 2022 04:05:43 -0500
X-MC-Unique: iCRSQmr8MJGeyfk_yna5YA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A96108145FA;
	Sat, 26 Feb 2022 09:05:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B094A293F;
	Sat, 26 Feb 2022 09:05:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5572B18095C9;
	Sat, 26 Feb 2022 09:05:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21Q948r4028612 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 04:04:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 820312144B21; Sat, 26 Feb 2022 09:04:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DD672180158
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 09:04:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27D0485A5BC
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 09:04:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-422-CqVddoo8Nvi36d2SmLHlPQ-1; Sat, 26 Feb 2022 04:03:57 -0500
X-MC-Unique: CqVddoo8Nvi36d2SmLHlPQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K5LKm2x4Dz2YR4
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 04:03:56 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K5LKm2GvNzcbc; Sat, 26 Feb 2022 04:03:56 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K5LKm1yDczcbC
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 04:03:56 -0500 (EST)
Date: Sat, 26 Feb 2022 04:03:56 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Voice assistant on Linux?
In-Reply-To: <CAJ4cocyr56pDGi7Y8D6w5beJwVcDUR0M4vpX13-4Kfo9prB2jA@mail.gmail.com>
Message-ID: <16c8178b-53d0-655d-1179-93b9cd48e96@panix.com>
References: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
	<5a55ff72-4742-1540-5859-c169a1ab81f8@free2.ml>
	<1f5fe928-53cd-2c91-4ff6-f14339f36d19@gmail.com>
	<753fd4ae-d611-e942-7270-a777b53858cf@free2.ml>
	<e995e809-c3fc-20f7-a633-82e9fd1e4e87@gmail.com>
	<CAJ4cocyr56pDGi7Y8D6w5beJwVcDUR0M4vpX13-4Kfo9prB2jA@mail.gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The github link was given for those without snapd so they could try
building the package from source.


On Fri, 25 Feb 2022, Linux for blind general discussion wrote:

> Hello as fast as far as I know there are some things but not really
> efficient working
>
> Linux for blind general discussion <blinux-list@redhat.com> schrieb am Fr.,
> 25. Feb. 2022 22:30:
>
> > Unfortunately my system (Slint) cannot run snapd, no Systemd.
> >
> >
> > I tested Almond, but no use, you have to type queries and in that time I
> > could've asked an Echo.
> >
> >
> > Warm regards,
> >
> > Brandt Steenkamp
> >
> > Sent using Thunderbird from the Slint machine
> >
> > On 2022/02/25 21:30, Linux for blind general discussion wrote:
> > > I thought I remembered someone telling me that you could install Alexa
> > > using Snap, but I also remember it being somewhat experimental or
> > > something.
> > >
> > >
> > > Yes, I also have a couple of Alexa devices, I just keep them out of
> > > bedrooms and bathrooms, what I consider to be the most private parts
> > > of the house. They stay in the livingroom and kitchen, where they are
> > > most useful at any rate.
> > >
> > > ~Kyle
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
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

