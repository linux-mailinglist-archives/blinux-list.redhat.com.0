Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A4E842F5AE0
	for <lists+blinux-list@lfdr.de>; Thu, 14 Jan 2021 07:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610606818;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Fb43ee27q4d5jSXGPupNrCEreinZKaU1VBL+IoxXu/Y=;
	b=MFYbkPTIlOrgMsWaHdQXaU53BFnB0Hf264drmGk5JvVfnS0D+BzHRi8gKSB0+fioiNyAFi
	oya/0/M5C95KiA+6T5kokEAZ0xeyiJusg+U8Om8rCv94uL5L6Va4rVKXn8vUVF+CcfkbgO
	NiV8jA7GVX8e9dQx3O+4SPoXcInvYMs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-Ah8H7x2ROSC2sI3ipnx_MQ-1; Thu, 14 Jan 2021 01:46:16 -0500
X-MC-Unique: Ah8H7x2ROSC2sI3ipnx_MQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2462806665;
	Thu, 14 Jan 2021 06:46:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23D2670497;
	Thu, 14 Jan 2021 06:46:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C591C4A7C6;
	Thu, 14 Jan 2021 06:46:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10E6k3au011944 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 Jan 2021 01:46:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 95BBB2166B2A; Thu, 14 Jan 2021 06:46:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F4BD2166B2D
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 06:46:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40CF9186E123
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 06:46:01 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-207-oAwymloYNeWsrIoJ5ydsEA-1; Thu, 14 Jan 2021 01:45:57 -0500
X-MC-Unique: oAwymloYNeWsrIoJ5ydsEA-1
X-SimpleLogin-Client-IP: 2a04:3542:1000:910:8c7a:9cff:fe3c:20ac
Received: from [172.17.0.8] (mx1.simplelogin.co
	[IPv6:2a04:3542:1000:910:8c7a:9cff:fe3c:20ac])
	by mx2.simplelogin.co (Postfix) with ESMTP id 4E4315DE0E
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 06:36:47 +0000 (UTC)
In-Reply-To: <CAO2sX30taDZzLWFMKMZY-pzWhWqVKTm_ZbBku77tO5CAxKhJQg@mail.gmail.com>
References: <161058501163.6.3631318214282253314.3039996@slmail.me>
	<CAO2sX30taDZzLWFMKMZY-pzWhWqVKTm_ZbBku77tO5CAxKhJQg@mail.gmail.com>
Subject: Re: How to activate a "clickable" icon?
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161060620711.6.6273027773023556597.3043286@slmail.me>
Date: Thu, 14 Jan 2021 06:36:47 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 3043286
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hey,
Thank you so much for those detailed shortkeys. Orca key, which is capslock on my laptop, so capslock and 7 activated that clickable icon.
Thank you so much!
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

