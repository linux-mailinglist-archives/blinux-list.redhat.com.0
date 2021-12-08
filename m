Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C4D46DEF5
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 00:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639005410;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=07oS5eA6liSmBm1XN/ruysctz0yrkXCWC8z0lAQJDao=;
	b=MxDayeu3pwo1xGUxUMBKgJlWF1DgWg1Axda3LoA8XltPl2rMTopHTdfalMcBGcmSMBJcr1
	rcwqoa1yfAVqsgkgTtRtAO3hQQQwyTc6WOObc4SpNEKcHHXCnOC0vZCgzCb5vVdAhx5PAL
	gktwSpNT4O7qiNi5HaAGimGWl4azI9M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-99-6XI22NyTPG6bqg0GIfYI4g-1; Wed, 08 Dec 2021 18:16:47 -0500
X-MC-Unique: 6XI22NyTPG6bqg0GIfYI4g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C72791F2DA;
	Wed,  8 Dec 2021 23:16:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A305E5D6CF;
	Wed,  8 Dec 2021 23:16:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 384924BB7B;
	Wed,  8 Dec 2021 23:16:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8NGZIu010465 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 18:16:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D3D34C08095; Wed,  8 Dec 2021 23:16:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CFAEDC08094
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 23:16:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3C42811E78
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 23:16:35 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-147-Hj-fJNWcNsOiRyYmPJmD9g-2; Wed, 08 Dec 2021 18:16:34 -0500
X-MC-Unique: Hj-fJNWcNsOiRyYmPJmD9g-2
Received: by mail-qt1-f171.google.com with SMTP id f20so3762595qtb.4
	for <blinux-list@redhat.com>; Wed, 08 Dec 2021 15:16:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qlUc0JaEzB3/WVND9AC7JWNKPMohcL/vM+fZnGuHltQ=;
	b=Pt4VPJzbYiVnvSlQp7WJwnHlLgNcejbDR21/NBZ7zfHT0xbr8SiAp9P2fbSgSnPveD
	5AM4NR8b8MxVsNujmf7dX3awUaYZkKMPvBFcLBtEXQh44tuVGr3jMa+MkLOqIe6f550+
	U0cawy+dvqi1gl3zMAtwKZ6YFQ67Fe7J26hiThYLaaga5lhGMNffeuaVH3cxVtjpA57A
	TEd1YPDDaxHz1zdbL9583mSyKvf6nOADdoViMG6ZUplvatI/VUCizzZhhr9f56m4oIzo
	FNKHsc4cXBgw9ubzN1y14t+gnpjFmvAoiA6HxfnKRRLj9n26dpqJLYzcUnxrFFYwb4VP
	fEGw==
X-Gm-Message-State: AOAM5338ZkvA3EFFntbGdkjx5JoeWRMQhOF/0+kbapxHf9LA80LP8DQi
	y31h642K9xzS2TYB+XQi6f3/fcpTuzhFEnvP
X-Google-Smtp-Source: ABdhPJzBGQ97+kbQ00UCr4U/JThHvX7IMThUgantot+Y1Wvc/VCmlxObF1dr20o1t6EOmCR2bMHhnQ==
X-Received: by 2002:ac8:5990:: with SMTP id e16mr12064237qte.615.1639005393427;
	Wed, 08 Dec 2021 15:16:33 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id b9sm2511776qtb.53.2021.12.08.15.16.32
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 08 Dec 2021 15:16:32 -0800 (PST)
Subject: Re: screen not in text mode on a braille display, how can I put it
	back in text mode?
To: blinux-list@redhat.com
References: <08486966-a674-edf1-c39d-759eb107cd7c@gmail.com>
	<8295a943-5f8e-b9c7-137c-2f7ea9962516@slint.fr>
Message-ID: <658beed4-1a83-326d-6032-74397a390493@gmail.com>
Date: Wed, 8 Dec 2021 18:16:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8295a943-5f8e-b9c7-137c-2f7ea9962516@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

SGkgRGlkaWVyLAoKSSB0cmllZCB5b3VyIHN1Z2dlc3Rpb24sIGJ1dCBpdCB1bmZvcnR1bmF0ZWx5
IGRpZCBub3Qgd29yay4gVGhlIEJyYWlsbGUgCmRpc3BsYXkgcmVtYWluZWQgc3R1Y2sgb24gInNj
cmVlbiBub3QgaW4gdGV4dCBtb2RlIgoKVGhpcyBpcyBhIHB1enpsZS4gVGhlIGZ1bm55dGhpbmcg
aXMgdGhhdCBTbGludCBzZWVzIHRoZSBCcmFpbGxlIGRpc3BsYXkgCmFuZCBpdCBsYXVuY2hlcyBC
cmx0dHkuCgpJIHdpbGwgdHJ5IHRvIHR3ZWVrIHdpdGggaXQgYSBsaXR0bGUgYW5kIHNlZSBpZiBJ
IGNhbiBndWVzcyB3aGF0IHRoZSAKcHJvYmxlbSBpcyEKCkNoZWVycywKCklicmFoaW0KCk9uIDEy
LzgvMjEgNjo1NiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiBIaSBJYnJhaGltLAo+Cj4gSSBkb24ndCBoYXZlIGEgZGlyZWN0IGFuc3dlciBidXQgYSB3b3Jr
YXJvdW5kIGNvdWxkIGJlLCBhZnRlciBoYXZpbmcgCj4gdHVybmVkIG9uCj4gdGhlIGJyYWlsbGUg
ZGlzcGxheSwgdG8gdHlwZSAib3JjYSAtciIgdG8gcmVzdGFydCBpdCBpbnN0ZWFkIG9mIAo+IHJl
Ym9vdGluZy4KPgo+IFBsZWFzZSBsZXQgdXMga25vdyBob3cgdGhhdCBnb2VzLgo+Cj4gQ2hlZXJz
LAo+Cj4gRGlkaWVyCj4KPiBMZSAwOC8xMi8yMDIxIMOgIDIzOjM3LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIEZyaWVuZHMsCj4+Cj4+IEkgZG8g
bm90IGtub3cgaG93IG1hbnkgb2YgeW91IHVzZSBhIGJyYWlsbGUgZGlzcGxheSB3aXRoIGxpbnV4
LCBidXQgSSAKPj4gbGlrZSBicmFpbGxlLiBJIGFtIHVzaW5nIG15IFZhcmlvVWx0cmEgNDAgYXMg
bXkgYnJhaWxsZSBkaXNwbGF5IHdpdGggCj4+IG15IGxpbnV4LiBJIGhvcGUgaWYgdGhlcmUgYXJl
IGJyYWlsbGUgdXNlcnMgaGVyZSBjYW4gaGVscCBtZSBzb2x2ZSAKPj4gdGhpcyBwdXp6bGUuCj4+
Cj4+Cj4+IEkgbm90aWNlZCB0aGF0IGlmIEkgYm9vdCB1cCBteSBTbGludCB3aXRoIHRoZSBicmFp
bGxlIGRpc3BsYXkgdHVybmVkIAo+PiBvbiBhbmQgY29ubmVjdGVkIGl0IHdvcmtzIGJlYXV0aWZ1
bGx5IHdlbGwgd2l0aCBteSBzY3JlZW4gcmVhZGVyLiAKPj4gSG93ZXZlciwgSWYgSSBib290IG15
IG1hY2hpbmUgd2l0aCB0aGUgYnJhaWxsZSBkaXNwbGF5IGlzIHR1cm5lZCBvZmYgCj4+IG9yIGRp
c2Nvbm5lY3RlZCwgd2hlbiBJIGNvbm5lY3QgaXQgb3IgdHVybiBpdCBvbiwgSSBzZWUgdGhlIGJy
bHR0eSAKPj4gNi40IGNvbWVzIHVwIG9uIHRoZSBkaXNwbGF5LCBidXQgYWZ0ZXIgdGhhdCBJIGNh
biBvbmx5IHJlYWQgb24gdGhlIAo+PiBkaXNwbGF5IHNjcmVlbiBub3QgaW4gdGV4dCBtb2RlLiBF
dmVuIGlmIEkga2lsbCBvcmNhIHdpdGggdGhlIGtpbGxhbGwgCj4+IGNvbW1hbmQgYW5kIHJlc3Rh
cnQgb3JjYSwgdGhlIEJyYWlsbGUgZGlzcGxheSBvbmx5IHNob3dzIHNjcmVlbiBub3QgCj4+IGlu
IHRleHQgbW9kZS7CoCBJZiBJIHdhbnQgdG8gdXNlIGJyYWlsbGUgSSBhbSBsZWZ0IHdpdGggbm8g
b3B0aW9uIGJ1dCAKPj4gdG8gcmVib290IHRoZSBtYWNoaW5lIHdpdGggdGhlIGJyYWlsbGUgZGlz
cGxheSBpcyB0dXJuZWQgb24gYW5kIAo+PiBjb25uZWN0ZWQgdG8gbXkgbGFwdG9wLgo+Pgo+PiBJ
cyB0aGVyZSBhIHdheSBvZiBiZWluZyBhYmxlIHRvIGFjdGl2YXRlIGJyYWlsbGUgZXZlbiBpZiBJ
IGZvcmdldCB0byAKPj4gdHVybiB0aGUgZGlzcGxheSBvbiBhbmQgY29ubmVjdCBpdCB0byBteSBs
YXB0b3AgYWZ0ZXIgdGhlIGJvb3R1cD8KPj4KPj4gQ2hlZXJzLAo+Pgo+PiBJYnJhaGltCj4KPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

