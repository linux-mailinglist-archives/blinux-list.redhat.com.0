Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5295C3CA234
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 18:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626366176;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sHIGtO5ZMwjt7n4sJTTVTokYDT39WaBIQpwMH3wKjEc=;
	b=V4s5XRMfY4yyvH6wprNRrLRHths4FiGdOWjmCPODoUxDN/uAPiL8QDjBBWez5qr7LWqEA0
	PNfFWepAOv+IWwKaD7QJjd++EalwvALMsXibAT/584cD9+PgODbWGlglKUjqjO8AiiMoA4
	+zKlfc+/A2EsGEh4u3y1JECG9C64GuM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-HKZ1gBeeN4K3kn4fYlCHqw-1; Thu, 15 Jul 2021 12:22:54 -0400
X-MC-Unique: HKZ1gBeeN4K3kn4fYlCHqw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD133802934;
	Thu, 15 Jul 2021 16:22:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76A6319C45;
	Thu, 15 Jul 2021 16:22:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A21F01809C99;
	Thu, 15 Jul 2021 16:22:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16FGMfJd016762 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 12:22:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F10AD10711D; Thu, 15 Jul 2021 16:22:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB022107123
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 16:22:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E021C96B046
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 16:22:37 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-577-Cwub4HaPMEqK-m8y3s0oIw-1; Thu, 15 Jul 2021 12:22:32 -0400
X-MC-Unique: Cwub4HaPMEqK-m8y3s0oIw-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4GQfm707kwz8w31
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 16:22:31 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id xJQ8fVov6wkb for <blinux-list@redhat.com>;
	Thu, 15 Jul 2021 16:22:28 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4GQfm44dm9z8tdJ
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 16:22:28 +0000 (UTC)
Message-ID: <20210715.162227.936.10@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Transfering Thunderbird folder
Date: Thu, 15 Jul 2021 11:22:27 -0500
MIME-Version: 1.0
In-Reply-To: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16FGMfJd016762
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

Don't you want
~/.mozilla/thunderbird

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Thu, 15 Jul 2021 17:35:04 +0200
Subject: Transfering Thunderbird folder

> Hi,
> 
> I want to transfer my Thunderbird folder from Win to Linux. It was 
> possible 3 4 years ago without any issues, but from some new Thunderbird 
> version, something must be changet to get transfered folder working as 
> expected. Can you help please? When I transfer my folder to 
> .Thunderbird, app ignores all existing profiles and creates another and 
> asks me to login to my mail accounts.
> 
> Thanks,
> 
> Pavel
> 
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

