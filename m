Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 648CF492CD8
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 18:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642528724;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4p/XrxVhHfwaiWFOE1KFE+Xw+/2kr6YDkJgrERsBM20=;
	b=N9ZIzmkUW4Zdgs4S7aVqExMTwaArWdinIQeDz+SYc9MOQsEa3F5aW/OdzAX6QKW3/vbvnh
	RPoF/HLLcgS9bmuv6Ss9dqDM5W0TjqBp6UbC+xxCFv9nWDIgPrjCsrSS2U6kj3r6AIh4rg
	eLalCMwtjxZY40uFKHW3DOlFZcqunC4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-407-ZhUlr1ScOE-FDGDnBA-7pA-1; Tue, 18 Jan 2022 12:58:40 -0500
X-MC-Unique: ZhUlr1ScOE-FDGDnBA-7pA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A09091054FBB;
	Tue, 18 Jan 2022 17:50:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C032838DE9;
	Tue, 18 Jan 2022 17:49:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9898A4A708;
	Tue, 18 Jan 2022 17:49:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20IG1PFE030192 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 11:01:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 904542026D2F; Tue, 18 Jan 2022 16:01:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BD222026976
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 16:01:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64DA6800B21
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 16:01:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-171-F1YFXKMoOHGg92SplHoB8Q-1; Tue, 18 Jan 2022 11:01:13 -0500
X-MC-Unique: F1YFXKMoOHGg92SplHoB8Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JdYRD3LJTzp5b
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 11:01:12 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JdYRD3Nfczcbc; Tue, 18 Jan 2022 11:01:12 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JdYRD3249zcbP
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 11:01:12 -0500 (EST)
Date: Tue, 18 Jan 2022 11:01:12 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: starting out with linux
In-Reply-To: <3869b29d-c142-7ca8-bd53-d93145b94edf@gmail.com>
Message-ID: <79e6ef9b-694-2b1a-44b2-a9a54e2a602@panix.com>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<3869b29d-c142-7ca8-bd53-d93145b94edf@gmail.com>
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

If it's a systemd system you can run localectl KEYBOARD=dvorak-l to bring
xorg into the act.


On Tue, 18 Jan 2022, Linux for blind general discussion wrote:

> Looks like some distros don't have it by default. My Fedora has it, but Arch
> does not. However, I don't think that means it won't recognize it if it's
> added. I seem to recall creating /etc/vconsole.conf being one of the steps of
> Arch installation if you don't use the US keyboard layout. Still, as I recall,
> I think it only works for the text console, not the graphical one, as the
> desktop layout is controlled at the X server level. I do know that changing
> the keyboard layout in MATE is not editing /etc/vconsole.conf, and I'm fairly
> certain that GNOME isn't using that file either.
>
> ~Kyle
>
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

