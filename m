Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F3D1028362F
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 15:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601903089;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P9eP/AVjiHdZ8y8nNz4t42hQRpCNLaYgzfz+nvQYwkI=;
	b=fw0GRSIcUbf+5iEjSD/eIL/oT7AiioRuwqc2j6I1OsbpQTpwbXw/qua/fmZzdvW7cbkRm9
	2h3cq+QMguVATHBTVh8Y8PVIumAsOTOLpQjSPgCDbyKtnZ6nqOEwSBiHR1Uf/8sv6Wxd6t
	Sw48eYH6rCp8k7Kiz0r5zTkgTSz7Ku8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-381-B0Jo5fb8NACLyaAGLj2-YQ-1; Mon, 05 Oct 2020 09:04:46 -0400
X-MC-Unique: B0Jo5fb8NACLyaAGLj2-YQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18F2F8015F6;
	Mon,  5 Oct 2020 13:04:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3460326185;
	Mon,  5 Oct 2020 13:04:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A81944A5F;
	Mon,  5 Oct 2020 13:04:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 095D4UHd006225 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 09:04:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2347D2166BD9; Mon,  5 Oct 2020 13:04:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A18C2166BA2
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 13:04:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05025805F4D
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 13:04:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-467-ynBdKq0jOOW9M37NWz8G7w-1; Mon, 05 Oct 2020 09:04:24 -0400
X-MC-Unique: ynBdKq0jOOW9M37NWz8G7w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C4gm83TKpz1Xw9
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 09:04:24 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C4gm82Nl4zcbc; Mon,  5 Oct 2020 09:04:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C4gm8226RzcbW
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 09:04:24 -0400 (EDT)
Date: Mon, 5 Oct 2020 09:04:24 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Does anyone have a guide to the E speak screen reader?
In-Reply-To: <001801d69b0a$f4c7ee90$de57cbb0$@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2010050902450.22871@panix1.panix.com>
References: <A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B.ref@yahoo.com>
	<A0FF8B2A-8F06-4EB2-BA56-9E060425EB7B@yahoo.com>
	<001801d69b0a$f4c7ee90$de57cbb0$@gmail.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

duckduckgo is your friend.
http://linux-speakup.org/spkguide.txt
There is no espeak screen reader.  espeak is a component enabling
speakup to work on a system.  speakup is the screen reader.

On Mon, 5 Oct 2020, Linux for blind general discussion wrote:

> Date: Mon, 5 Oct 2020 07:30:40
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: RE: Does anyone have a guide to the E speak screen reader?
>
> There is a TTS called eSpeak but there isn't a screen reader called eSpeak.
> Are you asking for information on the TTS called eSpeak or are you looking
> for information on a screen reader, like Speackup?
>
> --
> Christopher (AKA CJ)
> Chaltain at Gmail
>
> > -----Original Message-----
> > From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> > Behalf Of Linux for blind general discussion
> > Sent: Sunday, October 4, 2020 12:27 PM
> > To: Linux <blinux-list@redhat.com>
> > Subject: Does anyone have a guide to the E speak screen reader?
> >
> > Hi guys,
> > I was wondering if anyone had a user guide for this screen reader? I am
> new to
> > Linux and I just started taking a college course for it and still
> exploring possible
> > options to navigate.
> > Any help would be greatly appreciated. Thanks,
> >
> >
> > Ashley Breger
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
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

