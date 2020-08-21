Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 77DCD24D8FF
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 17:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598024735;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DK4Q1/C68XmvxVLUGD3EUI32YPDWiPaqD2yfb3pWmdE=;
	b=iBSt8CWlgCEK0qVbAGflLCl3dqgld2UY9+i/CPy78+QiFJJzHaKVkWUZ3xAcO7rU99gUmZ
	T5gp9Q1LJBzW4DanaYJRsNrv9aJvWpla0ov6uWoH9zP8c+vDEj/fN5FwVigng7q7oYpxG1
	dBz52vKkx79FNuVZkawJWhKcxjmKg0M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-UmIQs8BsOfKrhwM0vUc4yQ-1; Fri, 21 Aug 2020 11:45:33 -0400
X-MC-Unique: UmIQs8BsOfKrhwM0vUc4yQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00A4E873084;
	Fri, 21 Aug 2020 15:45:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D810919D6C;
	Fri, 21 Aug 2020 15:45:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7940C662BB;
	Fri, 21 Aug 2020 15:45:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LFh8ja016520 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 11:43:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D701CF8969; Fri, 21 Aug 2020 15:43:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2BABF77BE
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 15:43:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5F94857028
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 15:43:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-293-Ff3W-aHsPgGA6Z14omPRTw-1; Fri, 21 Aug 2020 11:43:03 -0400
X-MC-Unique: Ff3W-aHsPgGA6Z14omPRTw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BY5Pz3cs8z11bC
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 11:43:03 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BY5Pz2drszcbY; Fri, 21 Aug 2020 11:43:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BY5Pz27rszcbV
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 11:43:03 -0400 (EDT)
Date: Fri, 21 Aug 2020 11:43:03 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <20200821.140441.108.39@[192.168.1.130]>
Message-ID: <alpine.NEB.2.23.451.2008211141270.8148@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
	<20200821.140441.108.39@[192.168.1.130]>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Being way behind in lots of packages means security exposures galore.
Exim was hacked by the Russians already and ssh servers world-wide have
malware attacking them now too.

On Fri, 21 Aug 2020, Linux for blind general discussion wrote:

> Date: Fri, 21 Aug 2020 10:04:41
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Accessible Distros for a beginner?
>
> Biggest reason is because, being a, stable, distro, debian is way behind in a lot of packages. I remember last year, for example, trying to get wireguard running. I had to build my own kernel because the one in stable debian was too old.
> But for the average user, I guess, debian would do just fine.
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Fri, 21 Aug 2020 15:29:51 +0200
> Subject: Re: Accessible Distros for a beginner?
>
> > Why not just using Debian? IMHO this is still the most accessible distro with a large community and a active team who cares about accessibility. And for a beginner its not more difficult to learn how Debian is working then learning to use another distro.
> >
> > For me Debian is still the best and I wonder why this is not the case for other users? Why do you prefere other distros?
> >
> > Ciao,
> >
> >   Schoepp
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>
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

