Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BA2983F5287
	for <lists+blinux-list@lfdr.de>; Mon, 23 Aug 2021 23:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629752437;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Lxxtpa6zIA6cFrwMzBABR3y1gsc+6UURggtmVJVcc2U=;
	b=TagNCKIGr5GQAiUYz1ZBWNo8OdW44Ow1SIP/aLzxNg+4Rj7OOkJxCQh36OTN+YDy40LuUG
	PxiA5S52jlHADp/mk9GPzmN8ntpcKr8ndf5tC/oqT3hit642WLezKtnZVe8D+9wizbavz2
	fbLtZocAuPboJ3jz2J1YbL3guAAXpEQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-RNRUqlxONzq8rn7qT_Yv5g-1; Mon, 23 Aug 2021 17:00:36 -0400
X-MC-Unique: RNRUqlxONzq8rn7qT_Yv5g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 61F7C192CC40;
	Mon, 23 Aug 2021 21:00:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB3695D6AB;
	Mon, 23 Aug 2021 21:00:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2D7204BB7B;
	Mon, 23 Aug 2021 21:00:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17NL0F3a018286 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Aug 2021 17:00:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 19FA121449CD; Mon, 23 Aug 2021 21:00:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BF7A21449C8
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 21:00:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A3E918A01B5
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 21:00:06 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-444-zfWpEzGtNo2E2r8X9_gZGg-1; Mon, 23 Aug 2021 17:00:03 -0400
X-MC-Unique: zfWpEzGtNo2E2r8X9_gZGg-1
Received: by mail-qt1-f178.google.com with SMTP id e3so8812627qth.9
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 14:00:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=joH7OiokbtVxnvzmAA7y9/AiOH5tEIevbPwul6yUSJY=;
	b=TiEIWptygjbEOm9RPSkqzF3nkoO/DEC3cupDeTenVIDrheLIwZzuHxsRNmdGsWbSDV
	tfvGtWXvq9LY9I7fAW3shWAx52GKGxLkNAyieeYjKe2dg0MjjEwnuNooSTjTDVoPozJe
	KWizv1nvnN0g+DsOlz3CpMoStU7D3HsZ9N8RUyMxbeTnT1EKUpBtQi2Mc78py4giPiJT
	i7L1HALRoL/ab7E0gapjjZzBgyfYumvrB/vh2aXA8IQ/G6i11Wwq/yewCrI8ZhhwkgYp
	m6WLxPaI6BT+kZuOZNpY6lK9NSP8S5l4DmQ2CLZLi84ImLm6qEwF7VnB0WuqwY8mzMzA
	jkeg==
X-Gm-Message-State: AOAM533Hy0Dzb8kIlMkmik2pK3+y2UOqaT8ppf8Rj3dc+LPFCYTTvFcV
	TDotWq8rsPnagIG57e3JeKxxiVGOT7LMTQ==
X-Google-Smtp-Source: ABdhPJzSKsGlnSkvHCi8ljtYUGnAi1ehwbggnMorZ/91Km0woyJsZXCBxzN9wVWSF9xgJ2I8WEk/1g==
X-Received: by 2002:ac8:4716:: with SMTP id f22mr32382588qtp.250.1629752403098;
	Mon, 23 Aug 2021 14:00:03 -0700 (PDT)
Received: from probook.example.slint ([2601:192:4c80:1420::b37d])
	by smtp.gmail.com with ESMTPSA id u6sm9230486qkp.49.2021.08.23.14.00.02
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 23 Aug 2021 14:00:02 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>,
	orca-list@gnome.org
Subject: Ubuntu 21.10 (Canary) installer inaccessible?
Message-ID: <f365db53-fc4b-3e7b-e816-a1a0cfd59ab6@gmail.com>
Date: Mon, 23 Aug 2021 17:00:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8hCgoKSSBncmFiYmVkIHRoaXMsIHRvZGF5LCBhbmQgdHJpZWQgdG8gZ2l2ZSBpdCBhIHNw
aW4uwqAgSXQgbG9va3MgbGlrZSAKdGhleSd2ZSByZXBsYWNlZCB1YmlxdWl0eSAodGhlIG9sZCBp
bnN0YWxsZXIpLCBtYXliZSB3aXRoIHRoYXQgbmV3IApGbHV0dGVyLWJhc2VkIG9uZT/CoCBJIGNh
bm5vdCBnZXQgcGFzdCB0aGUgbG9jYWxlIHNlbGVjdG9yLsKgIE9yY2EgY2FuIApyZWFkIHRoZSBu
YW1lIG9mIGVhY2ggaXRlbSwgYW5kIHNheXMgImZyYW1lIGdyYXllZCIsIGFmdGVyIHRoZSBuYW1l
LsKgIApUaGVyZSBzZWVtcyB0byBiZSBubyB3YXkgdG8gc2VsZWN0IHRoZXNlIHRoaW5ncywgdXNp
bmcgdGhlIGtleWJvYXJkLsKgIApXaGF0J3MgbW9yZSwgSSBjYW4ndCBmaWd1cmUgaG93IHRvIGdl
dCBvdXQgb2YgdGhlIHBpY2tlcnMuIEZsYXQgcmV2aWV3IApzaG93cyBub3RoaW5nIHVzZWZ1bC7C
oCBJIGd1ZXNzIHRoZXJlIGFyZSAiYmFjayIsICJuZXh0IiwgYW5kICJjYW5jZWwiIApidXR0b25z
IG91dHNpZGUgdGhlIHBpY2tlcnM/wqAgSWYgc28sIGhvdyBjYW4gSSBnZXQgdG8gdGhlbT8KCgoK
VGhhbmtzLAoKCgpEYXZlCgoKCgotLSAKU2VudCBmcm9tIG15IEhQIFByb2Jvb2ssIHJ1bm5pbmcg
U2xpbnQgR05VL0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mci9IYW5kQm9vay5odG1sIGZvciBhbnN3
ZXJzIHRvIGZhcS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

