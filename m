Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id ED5E540075D
	for <lists+blinux-list@lfdr.de>; Fri,  3 Sep 2021 23:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630703794;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fZU/+/CgZnnoOWWmOMb0f1ldgHn6a3ZEcO5Dv/btLrU=;
	b=VQqn4xChAPPMwW+fuT9W5HRc7Xy1GBH8LRUjy5zBW4XMoHsaLE3EpfNg1LyvEs0n5Yso8M
	FlIEx4gWBgqCeOeGgiuhR7SAe7TnvfOnTu2lm3kSzQ6QHuk8WnbnHhvL1qNNLrTlws4z1t
	g8Le4p2mh01GDSmuETpm6tCFtHmPSwE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-Xj_KiO3VOVSuYh6n6cgexg-1; Fri, 03 Sep 2021 17:16:33 -0400
X-MC-Unique: Xj_KiO3VOVSuYh6n6cgexg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 81D95593C4;
	Fri,  3 Sep 2021 21:16:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD96A60C81;
	Fri,  3 Sep 2021 21:16:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C548B1809C98;
	Fri,  3 Sep 2021 21:16:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 183LAN2p029937 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Sep 2021 17:10:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2D82720C3C0F; Fri,  3 Sep 2021 21:10:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28C6F2102BE4
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 21:10:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 279AA101A529
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 21:10:20 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-291-rmgwMoJ4P-SfDwKM1cAkTw-1; Fri, 03 Sep 2021 17:10:18 -0400
X-MC-Unique: rmgwMoJ4P-SfDwKM1cAkTw-1
Received: by mail-oi1-f174.google.com with SMTP id q39so720816oiw.12
	for <blinux-list@redhat.com>; Fri, 03 Sep 2021 14:10:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=cH1nPbnRBhhwlRte3KQh37LhSvhSqUNLwtRqKCknWPw=;
	b=dv7ul3xnSYFt5RPsPrZAYcKLuLsh8V/U6B7NFt5dXHhLGbVfOKZTc4WpZSpvKMVvMr
	+wv19560567Z+NC763HPsKy2cY1y71TplcIITy9Rp39OX1WYP2HDSVImxMwtdhNaNE+P
	CNtLwWnuPaVX0qLHpKxv0c2oFZSjsFIJvFcO0WABYLgDhH0zIRE1churbEQ41WxWxj2l
	2GlLLNCNS3cm2fDQCq9zkWCWEl+W3gKchfon0oKZW84iVuMemT2P3x2R+JCD+1g8b1h7
	eXQVnhKD29xq6wayQlXf6OuklX3p0gSdLma27G3WuSidtljwfpoJvzsRD3t0vlDK1eJ/
	RYiQ==
X-Gm-Message-State: AOAM530gXEd93zYTy0CBLCKw9gUE0f+YWMH+clUrLKhG2imDjNLEGbWX
	3Ls9iceby0H0Z4ONjedyXakcKtMFmIhWZQ==
X-Google-Smtp-Source: ABdhPJy2t57dQFNv5VTbBHbJ77YI4Q64F69WHnD3m1ZsViI7HLe2Hdt37cutFVZiBUTZhAcBMixRxQ==
X-Received: by 2002:aca:aad7:: with SMTP id t206mr612933oie.12.1630703417595; 
	Fri, 03 Sep 2021 14:10:17 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:34bf:d358:37ae:7907?
	([2600:1702:20f0:4420:34bf:d358:37ae:7907])
	by smtp.gmail.com with ESMTPSA id f5sm109214oij.6.2021.09.03.14.10.16
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 03 Sep 2021 14:10:17 -0700 (PDT)
Subject: Re: https://blindcomputing.org/ status
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2109022351370.24726@panix1.panix.com>
	<75dd52ca-fee4-885d-8533-4eff739c47b8@gmx.net>
	<40F30BDE-AEE1-491B-8E8C-F8D958329702@gmail.com>
Message-ID: <0a574865-fcda-0115-943e-e6083ee6532f@gmail.com>
Date: Fri, 3 Sep 2021 17:10:15 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <40F30BDE-AEE1-491B-8E8C-F8D958329702@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWF0dGhldwoKCgpKdXN0IGEgdGhvdWdodCwgYnV0IGl0IGxvb2tzIGxpa2UgdGhlIHJlcG9zIGFy
ZSBxdWl0ZSBvbGQuwqAgSGF2ZSBub3QgCnNlZW4gYW55IHRoaW5nIGZyb20gdGhpcyB5ZWFyLsKg
IEFzIGEgc2lkZSBub3RlLCBsb29rcyBsaWtlIHRoZXJlIHNvIGEgCnNvbmFyIGZvcmsgdGhlcmUg
YXMgd2VsbC4KCgoKSGksCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

