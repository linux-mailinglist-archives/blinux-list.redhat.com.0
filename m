Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B60C949F04E
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 02:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643331883;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tbHKevOhT1wl/BIn6L8Oz8a5b/CeTP4jCovcsjkuxAg=;
	b=LAkUIBjv/Ao+rquy1kqFlLomZcKIGDjxTZTf56tChgB60waUkY+L6GV19y2FH+ppOiFg5I
	cfy8HOPMMiJWeFY1W/kEvdbjmt+ZqNDwtPu+am5BLX5v4LxukiLzizJFTQgyYUcKxnXvxM
	b4yEasXSQRu1jIOG0CaWs2+RhzF5eJM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-423-z1s4Jeb_N4mhgMPlJuVOtw-1; Thu, 27 Jan 2022 20:04:40 -0500
X-MC-Unique: z1s4Jeb_N4mhgMPlJuVOtw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50E5780D6B1;
	Fri, 28 Jan 2022 01:04:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 357C460622;
	Fri, 28 Jan 2022 01:04:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A74721809CB8;
	Fri, 28 Jan 2022 01:04:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S14Wlv028687 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 20:04:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 43A0940885BD; Fri, 28 Jan 2022 01:04:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F75040885BC
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:04:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24ACD1044560
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:04:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-41-g6bmG1RkO1u7wyneHKu8-w-1; Thu, 27 Jan 2022 20:04:29 -0500
X-MC-Unique: g6bmG1RkO1u7wyneHKu8-w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JlK3x2mHKztW4
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 20:04:29 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JlK3x274vzcbc; Thu, 27 Jan 2022 20:04:29 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JlK3x1jkjzcbC
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 20:04:29 -0500 (EST)
Date: Thu, 27 Jan 2022 20:04:29 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
In-Reply-To: <84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>
Message-ID: <79793ef9-1158-eb3c-cfdb-8cbe2aa9bb1@panix.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

If you use archinstall to install archlinux archinstall now has a pipewire
profile.  It will be interesting to find if archlinux on bare metal using
pipewire runs into sound problems.


On Thu, 27 Jan 2022, Linux for blind general discussion wrote:
Endeavouros also uses pipewire but with pipewire-media-manager if memory
serves and that could have been some of my problem.
Also Endeavouros has no accessibility software on their install isos.

> I have been told that Fedora 35 has sound issues in virtual machines. It
> appears it always works on bare metal, but virtual machines get no sound
> in 35, and 34 sounds pretty choppy. As far as I am aware, Fedora is the
> only Linux distribution using Pipewire along with Wireplumber by
> default, which could somehow be causing problems in virtual machines. I
> tried these here on an already running Fedora system and got similar
> results, but only in virtual machines, so I can verify that this is a
> problem, at least with Qemu.
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

