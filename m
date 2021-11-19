Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8495A45785B
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 22:49:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637358547;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V6VL6g5AE12NYBJBsb0YnKX67020uqj9Fh8MMXc547Y=;
	b=WUZ/QRvunD7b7jqkrFe+hu5W8hBiv4/sSVo26LzI3jDJxyLzHFON959OicRunG9ua4dIfm
	hRKImLp4bYkLTlxhkTnYAxXwNNyyfVjW0otj+ITEVJRKFrfdzNZCswDCBVtfaA7wpqA0li
	J7Z0P3Xgs7UnaZhSkZrlN7pYO7eSCFE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-435-vb9P8rWUN66m-RTJ8MWXqg-1; Fri, 19 Nov 2021 16:49:03 -0500
X-MC-Unique: vb9P8rWUN66m-RTJ8MWXqg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 460F61006AA0;
	Fri, 19 Nov 2021 21:48:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE1CB5C1A1;
	Fri, 19 Nov 2021 21:48:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5F3AC1832E80;
	Fri, 19 Nov 2021 21:48:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJLmqPg021138 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 16:48:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DA07051E2; Fri, 19 Nov 2021 21:48:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D37A951E1
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 21:48:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1305285A5A8
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 21:48:50 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-236-7Wyw6Hz7MpSJM8zw_8wx7A-1; Fri, 19 Nov 2021 16:48:48 -0500
X-MC-Unique: 7Wyw6Hz7MpSJM8zw_8wx7A-1
Received: by mail-io1-f41.google.com with SMTP id z26so14548576iod.10
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 13:48:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=RfB+4VFqTplaBnMu++f/l1GzQH6V84nk4RGuR079wM8=;
	b=taKaKmHkHsop6sks1rjGGi+diy3UM7yZbTJPUQNp5R5jXo87kCLskTrkpP4FuVXS/p
	tmdWZxY17nU42u+4U1DMkINMWcbbd0pKfDwTuAUONo03aGJHyxA2YCwoOPeaLuzwUlRT
	5eGu7XfCtarXv4/9yK+RIECNTWu/w2e2XiTwItVDL8GPBZcAc3rOB4P99mQR0MtRshvK
	h3CwfhNkDOFJxc1jup1OJtBLAvX4b5Z3MOpqHwPP8NTel4WxXPHkkvtAHM+C1L4hGc63
	3AM3YSgbdmTvoT9rtgRO++t1DIFiFnAvV/Gy9T0t8rFWIaKmfO3omMaXn0VkqLULU6Gu
	qZCw==
X-Gm-Message-State: AOAM530gJiN9ykkdL7B82dY7D8DUl2J7NCIch4iPR0UiKQ5fn9IYjNn5
	XYVXpim/qWWBnATRZIlLv8VOyMzB5cGsxQ==
X-Google-Smtp-Source: ABdhPJyHFR6TT20yzYaS3jpC8jg3SEIvJwG0Z10fOOi6fVvzQJO8FZmNpWu6OcwmlYEoyH8L6Faq5w==
X-Received: by 2002:a05:6638:4087:: with SMTP id
	m7mr31546457jam.112.1637358527365; 
	Fri, 19 Nov 2021 13:48:47 -0800 (PST)
Received: from ?IPV6:2600:1702:20f0:4420::43? ([2600:1702:20f0:4420::43])
	by smtp.gmail.com with ESMTPSA id x11sm461251iop.55.2021.11.19.13.48.46
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 13:48:46 -0800 (PST)
Message-ID: <532a45f6-e767-929f-17ca-99d6a506a679@gmail.com>
Date: Fri, 19 Nov 2021 16:48:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
	<c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
In-Reply-To: <c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkswqAgSSBhbSB3cml0dGluZyB0aGlzIHJlcGx5IGZyb20gbXkgZmVkb3JhIDM1YiB3b3Jrc3Rh
dGlvbiB3aGljaCBpcyAKaW5zdGFsbGVkIG9uIGFuIGV4dGVybmFsIDFUQiBkcml2ZS7CoCBJIGRp
ZCBub3Qgc2VlIGEgcHJvYmxlbSB3aXRoIHNwZWVjaCAKY3V0IG9mZiBvbiB3b3Jrc3RhdGlvbiwg
Zm9yIHNvbWVyZWFzb24gZmVkb3JhIG1hdGUgZG9lcyBoYXZlIHRoaXMgCnBlcm9ibGVtIGR1cnJp
bmcgdGhlIGluc3RhbGwsIGJ1dCByZXN0YXJ0aW5nIG9yY2EgdXN1YWxseSBicmluZ3MgaXQgYmFj
ayAKdGhlbiBJIGNhbiBkbyB3aGF0IEkgbmVlZCB0byB0byBmaW5pYXNoIHRoZSBpbnN0YWxsLsKg
IEhUSC4KCgpNYXR0aGV3CgoKCk9uIDExLzE5LzIxIDI6MDEgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSBhbSBub3QgdHJ1bHkgYW4gZXhwZXJ0IG9uIExp
bnV4IGFuZCBhY2Nlc3NpYmlsaXR5LiBCdXQgSSBmb3VuZCAKPiBGZWRvcmEgdGhlIG1vc3QgcHJv
YmxlbWF0aWMgYW1vbmcgdGhlIGRpc3RyaWJ1dGlvbnMgSSBoYXZlIHRyaWVkLiBJIAo+IHRyaWVk
IENvY29udXQsIFNsaW50LCBNaW50LCBhbmQgbm93IGZlZG9yYS4gSGVyZSBhcmUgdGhlIHByb2Js
ZW1zIEkgCj4gZW5jb3VudGVyZWQgd2l0aCBGZWRvcmEsIHdoaWNoIEkgZGlkIG5vdCBlbmNvdW50
ZXIgaW4gdGhlIG90aGVyIG9uZXMgSSAKPiB0cmllZC4KPgo+IEZpcnN0LCBkdXJpbmcgaW5zdGFs
bGF0aW9uLCBUaGUgc3BlZWNoIHdhcyB0dXJuZWQgb2ZmIGF1dG9tYXRpY2FsbHkgCj4gd2l0aG91
dCB3YXJuaW5nLiBJIHdhcyBsaXN0ZW5pbmcgdG8gdGhlIGNvdW50ZXIgdGVsbGluZyBtZSAxMCBw
ZXJjZW50LCAKPiAyMCBwZXJjZW50IGV0Yy4uLiBhbmQgc3VkZGVubHkgSSBoZWFyZCB0aGUgbWVz
c2FnZSBTY3JlZW4gcmVhZGVyIGlzIAo+IG5vdyB0dXJuZWQgb2ZmLiBJIHdhcyBsb3N0LiBJIHdh
aXRlZCBhYm91dCB0ZW4gbWludXRlcyBhbmQgSSBoaXQgYWx0IAo+IGYyIGFuZCB0eXBlZCBvcmNh
IGFuZCBJIGhpdCBlbnRlciBhbmQgdGhlIHNjcmVlbiByZWFkZXIgY2FtZSBiYWNrIG9uLiAKPiBJ
IG1vdmVkIGFyb3VuZCB0aGUgc2NyZWVuIHRvIGRpc2NvdmVyIHRoYXQgdGhlIGluc3RhbGxhdGlv
biB3YXMgCj4gY29tcGxldGUgYW5kIEkgc2hvdWxkIHJlYm9vdCB0aGUgc3lzdGVtLiBMb3Npbmcg
c3BlZWNoIGR1cmluZyAKPiBpbnN0YWxsYXRpb24gaXMgbm90IHJlYWxseSBhIGdvb2QgdGhpbmcg
Zm9yIGEgYmxpbmQgdXNlci4KPgo+IFNlY29uZCBJIGNvdWxkIG5vdCBhY3RpdmF0ZSBCcmFpbGxl
IGF0IGFsbC4gTm8gbWF0dGVyIHdoYXQgSSB0cmllZCwgCj4gQnJhaWxsZSBzaW1wbHkgaXMgbm90
IGFjdGl2ZSBvbiBteSBmZWRvcmEgbWF0ZS4KPgo+IFRoaXJkLCBJIHRyaWVkIHRvIGRvIHRoZSB1
cGRhdGUgb24gYSB0ZXJtaW5hbCwgYW5kIGhlcmUgYWdhaW4sIGluIHRoZSAKPiBtaWRkbGUgb2Yg
dGhlIHByb2Nlc3MsIEkgbG9zdCBzcGVlY2guIFNvIEkgbGVmdCB0aGUgY29tcHV0ZXIgb24gYWxs
IAo+IG5pZ2h0IHRvIGNvbXBsZXRlIHRoZSB1cGRhdGUsIGFuZCB0aGlzIG1vcm5pbmcgSSByZWJv
b3RlZCB0aGUgc3lzdGVtIAo+IHRvIGdldCB0aGUgc3BlZWNoIGJhY2sgb24uIENsZWFybHkgdGhl
cmUgaXMgYSBwcm9ibGVtIHdpdGggdGhlIHNjcmVlbiAKPiByZWFkZXIgb24gbXkgdmVyc2lvbiBv
ZiBGZWRvcmEgbWF0ZSwgd2hpY2ggaXMgSSBiZWxpZXZlIHZlcnNpb24gMzUuCj4KPiBUaGUgZm91
cnRoIHByb2JsZW0gaGFzIHRvIGRvIHdpdGggY2hhbmdpbmcgbXkgYmlvcyBib290LXVwIHNldHRp
bmdzLiBJIAo+IGRvIG5vdCBsaWtlIGFueSBzeXN0ZW0gdGhhdCBtZXNzIHVwIHdpdGggbXkgYm9v
dCB1cCBzZXR0aW5ncy4gV2hlbiBJIAo+IGluc3RhbGxlZCBpdCwgSSBhc3N1bWVkIHRoYXQgRmVk
b3JhIHdvdWxkIG5vdCBjaGFuZ2UgYW55IG9mIG15IHN5c3RlbSAKPiBzZXR0aW5ncywgc2luY2Ug
SSBpbnN0YWxsZWQgaXQgb24gYW4gZXh0ZXJuYWwgZHJpdmUuIEkgaG9wZSB0aGUgdGVhbSAKPiB3
aG8gd29ya3Mgb24gRmVkb3JhJ3MgYWNjZXNzaWJpbGl0eSB3aWxsIHRha2Ugc3VjaCBzaXR1YXRp
b25zIGludG8gCj4gY29uc2lkZXJhdGlvbi4KPgo+IEZlZG9yYSBpcyBwcm9iYWJseSBhIGdyZWF0
IHN5c3RlbSwgYnV0IEkgYW0gbm90IHN1cmUgdGhhdCBpdCBpcyB0aGUgCj4gYmVzdCBpbiB0dXJt
cyBvZiBhY2Nlc3NpYmlsaXR5Lgo+Cj4gRm9yIHRoZSB0aW1lIGJlaW5nLCBJIGFtIGdvaW5nIHRv
IHN0aWNrIHdpdGggc2xpbnQuIEkgbmV2ZXIgCj4gZW5jb3VudGVyZWQgYW55IGFjY2Vzc2liaWxp
dHkgaXNzdWVzIGluIHNwZWVjaCBvciBicmFpbGwgdXNpbmcgaXQuCj4KPiBPbiAxMS8xOS8yMSAx
MTo0MSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBX
aGF0J3MgbW9yZSwgaXQncyBiYXNlZCBvbiB0aGUgbG9uZy1zdGFibGUgVWJ1bnR1Lgo+Pgo+Pgo+
PiAtRGF2ZcKgIEguCj4+Cj4+Cj4+Cj4+IE9uIDExLzE5LzIxIDExOjM4IEFNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gaXQgaXMgdmVyeSBzaW1wbGUuIEkg
bG92ZSBNaW50IGJlY2F1c2UgdGhlcmUgaXMgbm8gc25hcCBhY3RpdmF0ZWQKPj4+IHdoaWNoIEkg
ZG9uJ3QgbGlrZS4gT25lIGNhbiBzYXk6IE1pbnQgaXMgYW4gVWJ1bnR1IHdpdGhvdXV0IHNuYXAu
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

