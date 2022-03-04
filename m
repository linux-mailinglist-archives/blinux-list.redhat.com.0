Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C62A24CDA3C
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 18:24:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646414659;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eaVy5fdynKfkikJGFawDLZCzfClpzQAmLWqEobl2Z6k=;
	b=U/yMJeylO2CgShMBJdHlv/0XdxhNyAGGlp0xjpqJbk6ysWSaMw4ONteVYrfFVr5LHph4i/
	IXWgB4P7Q5UnDtfco5ndyj5ignLutEucxRFMGOK6AnBuPrIN6zK7xbAUlKHoV+77CEp4M/
	fRPIvVp2Qnd+FJp6dmYeiwB8w64N4gA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-495-onJbhW7HO4SybqDz_C6BcQ-1; Fri, 04 Mar 2022 12:24:18 -0500
X-MC-Unique: onJbhW7HO4SybqDz_C6BcQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9AF2520E;
	Fri,  4 Mar 2022 17:24:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A41F837A9;
	Fri,  4 Mar 2022 17:24:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5FCF21809CB3;
	Fri,  4 Mar 2022 17:24:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224HO6tK024261 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 12:24:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1A3882167D60; Fri,  4 Mar 2022 17:24:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15CC12166B26
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:24:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 82EF52A2AD71
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 17:24:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-163-Y8YRLdVuMl-YCnwyiscxag-1; Fri, 04 Mar 2022 12:24:00 -0500
X-MC-Unique: Y8YRLdVuMl-YCnwyiscxag-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K9F80256DzQbC
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 12:24:00 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K9F801cL9zcbc; Fri,  4 Mar 2022 12:24:00 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K9F801GsWzcbC
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 12:24:00 -0500 (EST)
Date: Fri, 4 Mar 2022 12:24:00 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google is nuking simple username/password sign ins?
In-Reply-To: <dee2c9a3-7810-1fad-c87c-16007ad8e739@free2.ml>
Message-ID: <e9a751f1-c67b-c8bc-24ff-f542ab86c8f@panix.com>
References: <YiHciAX/R+L65BU3@waffles>
	<f49b0dd9-8fe2-9ec1-1d49-ff5ce164ded9@free2.ml>
	<9a21f28f-c957-cb53-af3e-8c0ad9f24c5@panix.com>
	<dee2c9a3-7810-1fad-c87c-16007ad8e739@free2.ml>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Good luck on the transfer and I'll be interest in your progress along that
path since I may be taking that path myself.  I do need a functional
screen reader on the phone though since I'll likely be installing whatever
goes on the phone and maintaining it myself.
What app store or app stores are you getting compatible apps from?


On Fri, 4 Mar 2022, Linux for blind general discussion wrote:

> Well, it's time to stop gmail working on the phone and to also disable it.
>
>
> These days I mod my phone to disable Google as completely as possible. I no
> longer use Gmail on the phone, and I no longer even use Google Play Services.
> I recently broke a phone that was compatible with LineageOS for MicroG, and
> intentionally purchased the same make and model so that I wouldn't even have
> to start with a Google account on the new phone. It's time to say good-bye to
> big tech, and this is my start in that direction. I do keep Gmail in
> Thunderbird for now, because it works there still, and some stuff still comes
> to that email, but I'm transitioning to self-hosted open source stuff as
> completely as possible, which it seems can be faster and more complete than I
> initially thought.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

