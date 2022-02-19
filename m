Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D8B4BCABE
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 22:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645306989;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vwPir8P//Eeg7NCz5J09AxiU2n4/KazxkIyX8I1T0VA=;
	b=FCL2Igk1KdxPf8NyFDS3nNFZxywdW0mmpV0hRWmHZ0r7xA9k3BeWYu8V2+N12J3Oa8KEAC
	GBrfvLAsvTIzu7DOxjvkKuBsLkF2YxufgGg1cGomi/H4wZRO0Cpc/i1gUVWiijKWWzhAuw
	OzgEqMOjRl1a1w9Y4A4oeVNJk17fiWc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-361-1t9d5DgVPJmiR80jXtl1Gw-1; Sat, 19 Feb 2022 16:43:08 -0500
X-MC-Unique: 1t9d5DgVPJmiR80jXtl1Gw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE49180A1BE;
	Sat, 19 Feb 2022 21:43:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF59F6107F;
	Sat, 19 Feb 2022 21:42:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 16C8A4BB7C;
	Sat, 19 Feb 2022 21:42:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21JLg2si010841 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Feb 2022 16:42:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 096C32166B2D; Sat, 19 Feb 2022 21:42:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04C7A2166B26
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 21:41:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D81629AA382
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 21:41:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-61-rFUkBkAiPAqNwAhmLP7RDQ-1; Sat, 19 Feb 2022 16:41:57 -0500
X-MC-Unique: rFUkBkAiPAqNwAhmLP7RDQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K1MTc6NCtzjwL
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 16:41:56 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K1MTc6TQczcbf; Sat, 19 Feb 2022 16:41:56 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K1MTc6PpdzcbC
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 16:41:56 -0500 (EST)
Date: Sat, 19 Feb 2022 16:41:56 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Installing Jenux
In-Reply-To: <f59be0f6-98b7-1f47-7992-eb1e5aa38a5e@brandt-slint.local>
Message-ID: <24d576d5-2676-1c77-9413-f7cb4dd67253@panix.com>
References: <f59be0f6-98b7-1f47-7992-eb1e5aa38a5e@brandt-slint.local>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You do have a drive selection possibility with jenux.  So an external
drive installation ought to work.


On Sat, 19 Feb 2022, Linux for blind general discussion wrote:

> Hi all,
>
> I am thinking about installing Jenux on an external drive, but cannot recall
> if it gives you the option to do so.
>
> Otherwise, I might just copy the relevant folders off of my Slint install to
> that external drive as a backup, after all, I'll probably hop back to Slint in
> short order anyway.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Slint console using Alpine
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

