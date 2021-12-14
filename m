Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFDD474DD4
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 23:18:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639520337;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cwrp/f8mkVA5aKfj09etWg4N63jajjeao3Fwec+yx2s=;
	b=i9tbEeWG7fttY55q1p+c2+7vksrvMyspOwE62x5p4hrKDqV8/MM3OCSYsylHkQdkkdWWzN
	botkhp2Yc2BSSEwmrbyWkVtfQy9bL/kJh1Un2KUawka2MegbDiV9BGWWfM+X5xI3c5q8HP
	Fa+KN8qWd6kXG1dauQyGGfJGvejHbU4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-27-AaKJiBIfN2C0uIkSi01R-Q-1; Tue, 14 Dec 2021 17:18:54 -0500
X-MC-Unique: AaKJiBIfN2C0uIkSi01R-Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C908A87A83E;
	Tue, 14 Dec 2021 22:18:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2CC126348;
	Tue, 14 Dec 2021 22:18:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA0271809CB9;
	Tue, 14 Dec 2021 22:18:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEMIT0Y021565 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 17:18:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 03E912166B40; Tue, 14 Dec 2021 22:18:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F116B2166B3F
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 22:18:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0993C3879976
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 22:18:26 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-19-0jB1jfNDPP2RYXk6FmVfTg-1; Tue, 14 Dec 2021 17:18:24 -0500
X-MC-Unique: 0jB1jfNDPP2RYXk6FmVfTg-1
Received: by mail-qt1-f179.google.com with SMTP id 8so19921903qtx.5
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 14:18:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=nO1wzd4OiHExjAsJw1jMKCDfseIt+qKlBZT7OpTvi04=;
	b=bttz75gF7jvGwhJ2Y9N3WipKd/O2h9GsAwywgv3AgU98gpeCztVVT0m4Xw01eKl3QL
	kKf1fxCYttrXXaLAQ3jcQ42fKzcnkuIVtJANrkgZICkXs9YPf/l+eY6x3nKMoKlSPpvR
	biAy6tygD0cLNGEuCsoBA1ttLm1EaYVH8IcC9dFVDA/Vh+0kh8VMRJ1B/vm2SXNdniCK
	e9fk8PHGPLCK9qtUcM8TVmjfGk11kUdLh0j/MjjcRoOfLjmxV8cE5z67qLjl0fObjZg2
	QnGUeOodYI9BfzkbL4Jjvx+gA2Hskq8WZNf4SNW8mfxR42fX91wPJvuAJP0hunsera+K
	QbsA==
X-Gm-Message-State: AOAM533qnrU4W/pA2eZ19Ogf03vj+y8h2yM22EMo0sUpe+QVw9WXCqW2
	tp+JSWNFUmnC+v9Z/OBET3eSGEYBSzYKOA==
X-Google-Smtp-Source: ABdhPJyGDTJk1HgQtN6IetAVe7jZSM8+tK/0wTIWbMoBAKaBWlVTFVoeLDW4ebgjYTTIC9fpw7Tnew==
X-Received: by 2002:a05:622a:120b:: with SMTP id
	y11mr9251306qtx.544.1639520303201; 
	Tue, 14 Dec 2021 14:18:23 -0800 (PST)
Received: from ?IPV6:2603:6011:ba01:8300:1525:bc94:97e:7f98?
	(2603-6011-ba01-8300-1525-bc94-097e-7f98.res6.spectrum.com.
	[2603:6011:ba01:8300:1525:bc94:97e:7f98])
	by smtp.gmail.com with ESMTPSA id f8sm113820qtk.1.2021.12.14.14.18.22
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 14:18:22 -0800 (PST)
Message-ID: <4ebfc7c4-8cdf-230d-c108-a1ac4838a410@gmail.com>
Date: Tue, 14 Dec 2021 17:18:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
In-Reply-To: <70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SnVzdCBhIHRob3VnaHQsIGJ1dCBJIHdvbmRlciBpZiBweXRob24gMy4xMCBpcyB0aGUgcHJvYmxl
bSBhcyB5ZXN0ZXJkYXkgCkkgaGFkIGEgamVudXh4IHN5c3RlbSB3aGljaCBnb3QgdGhlIHB5dGhv
biBwYWNrYWdlcyB1cGRhdGVzIGFuZCBhZnRlciAKcmVib290aW5nLCBJIGhhZCBubyBzcGVlY2gg
c28gcGVyaGFwcyB0aGVyZSBpcyBhIHBhY2thZ2UgaW4gamVudXggd2hpY2ggCmlzIG5vdCB5ZXQg
Y29tcGF0aWJsZS4KCgpNYXR0aGV3CgoKCk9uIDEyLzE0LzIwMjEgNzo0NiBBTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSwKPgo+Cj4gSSBkaWQgdXNlIHRo
ZSBsYXRlc3QgYXMgb2YgYWJvdXQgMTUgaG91cnMgYWdvLiBJIGRpZCBhbHNvIHZlcmlmeSB0aGUg
aXNvLgo+Cj4KPiBUaGUgaXNzdWUgdGhpcyB0aW1lIGlzIHRoYXQgYWZ0ZXIgcnVubmluZyB0aGUg
aW5zdGFsbGVyIGFuZCByZWJvb3RpbmcsIAo+IG5vdGhpbmcgc3Bva2UuIHRoZSBzZWVpbmdBSSBv
biB0aGUgaXBob25lIGNvdWxkIHJlYWQgdGhlIHNjcmVlbiBqdXN0IAo+IGZpbmUsIGJ1dCBJIGNv
dWxkbid0Cj4KPgo+IExhc3QgdGltZSBpdCB3YXMgb3JjYSBpbiBNYXRlIHRoYXQgZGlkbid0IHdh
bnQgdG8gY29tZSBvbiwgbm8gbWF0dGVyIAo+IHdoYXQgSSBkby4KPgo+Cj4gSSBmb3VuZCB0aGF0
IHdpdGggSmVudXgsIG5ldmVyIGV4cGVjdCB0aGUgc2FtZSB0aGluZyB0byBnbyB3cm9uZyAKPiB0
d2ljZSwgaG93ZXZlciBzb21ldGhpbmcgd2lsbCBicmVhay4KPgo+Cj4gV2FybSByZWdhcmRzLAo+
Cj4KPiBCcmFuZHQKPgo+IE9uIDIwMjEvMTIvMTQgMTQ6MzEsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEplbnV4IGdldHMgcmVndWxhciB1cGRhdGVzIGxhdGVz
dCBpcyAyMDIxLjExLjE3IHVubGVzcyB0aGF0IGNoYW5nZWQgCj4+IHRvZGF5Lgo+PiBEaWQgeW91
IHZlcmlmeSB5b3VyIGlzbyBkb3dubG9hZD/CoCBJZiBJIGZpbmQgYW4gLnNoYTUxMiBmaWxlIGZp
bGUgZm9yIGFuCj4+IGlzbywgSSB3b24ndCBpbnN0YWxsIHRoZSBpc28gd2l0aG91dCBmaXJzdCB2
ZXJpZnlpbmcgaXQgd2l0aCB0aGUgLnNoYTUxMgo+PiBmaWxlLsKgIFNvIHR3byBwb3RlbnRpYWwg
cHJvYmxlbXMgbm90IHVzaW5nIGN1cnJlbnQgSmVudXggaW5zdGFsbCBpc28gb3IKPj4gZmFpbGVk
IHRvIHZlcmlmeSBpc28uwqAgSWYgeW91IGRvbid0IGhhdmUgdGhvc2UgdHdvIHByb2JsZW1zLCBw
bGVhc2UgCj4+IHdyaXRlCj4+IGRubC5uYXNoQGdtYWlsLmNvbSBhbmQgbGV0IGhpbSBrbm93IHRo
ZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCBvbiB5b3VyCj4+IGluc3RhbGwgZmFpbC7CoCBUaGF0
IG9uZSBpcyB0aGUgZGV2ZWxvcGVyLgo+Pgo+Pgo+PiBPbiBUdWUsIDE0IERlYyAyMDIxLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+Pj4gSGksCj4+Pgo+Pj4K
Pj4+IEplbnV4IGZhaWxlZCBvbiBtZSwgYWdhaW4uIEkgdGhpbmsgSSdsbCBnaXZlIGl0IGEgc2tp
cCBmb3Igbm93LCB0aGF0IAo+Pj4gaXMgdW5sZXNzCj4+PiB0aGUgZGV2IGFjdHVhbGx5IGZpeGVz
IHRoZSB0aGluZy4KPj4+Cj4+Pgo+Pj4gSSBhbSBvbiBGZWRvcmEsIGZvciBub3csIGJlY2F1c2Ug
aXQgd2FzIHRoZSBuZWFyZXN0IFVzYiBzdGljayBJIAo+Pj4gY291bGQgZ3JhYgo+Pj4gcXVpY2ts
eS4KPj4+Cj4+Pgo+Pj4gSSBtaWdodCBqdXN0IGdpdmUgdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5v
dGhlciBnby4gV2h5IG5vdD8KPj4+Cj4+PiBPbiAyMDIxLzEyLzE0IDEzOjA1LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+IMKgwqBvciBNYW5qYXJvIEFyY2hp
dGVjdC4KPj4+Pgo+Pj4+IFBlcnNvbmFsbHkuIEkndmUgaGFkIHN1Y2Nlc3Mgd2l0aCB0aGUgdmFu
aWxsYSBBcmNoIElTTyBhbmQgdGhlIGd1aWRlZAo+Pj4+IGluc3RhbGxlciAodGhlIGFyY2hpbnN0
YWxsIG9uZSksIEkganVzdCBzZXQgaXQgdG8gYm9vdCB1cCB0YWxraW5nLCAKPj4+PiB3ZW50Cj4+
Pj4gdGhyb3VnaCBpdCBhbmQgYWRkZWQgaW4gYWxzYS11dGlscy9lc3BlYWt1cCBhbmQgdGhlbiBw
dXQKPj4+PiBzcGVlY2gtZGlzcGF0Y2hlci9PcmNhL3ZvaWNlcyBhbmQgYSB3aW5kb3cgbWFuYWdl
ciBvbiBvbmNlIHRoZSAKPj4+PiBzeXN0ZW0gd2FzCj4+Pj4gaW5zdGFsbGVkLgo+Pj4+Cj4+Pj4K
Pj4+PiBKZW51eCBoYXMgbmV2ZXIgcmVhbGx5IHdvcmtlZCBmb3IgbWUgb24gYSBWTSBvciBiYXJl
IG1ldGFsIGF0IGFsbCwgCj4+Pj4gd2hlcmVhcwo+Pj4+IHRoZSBvZmZpY2lhbCBhcmNoIElTTyBp
cyB3b3JraW5nIHJhdGhlciB3ZWxsLCBhbmQgSSBkdW5ubyBpZiB0aGUgCj4+Pj4gQXJjaGl0ZWN0
Cj4+Pj4gZWRpdGlvbiBpcyAzNi82NCBiaXQgb3IgMzJiaXQgb25seSBvciA2NGJpdCBvbmx5LiBB
ZG1pdHRlZGx5LCBJJ3ZlIAo+Pj4+IGdvdCBhCj4+Pj4gNjRiaXQgVUVGSSBzeXN0ZW0gc28gdGhl
IG9mZmljaWFsIElTbyB3b3JrcyBmbGF3bGVzc2x5IG9uIGl0IAo+Pj4+IGhvd2V2ZXIsIGJ1dAo+
Pj4+IFlNTVYgb24gdGhhdCBvbmVZZXMsIGJ1dCB5b3UgcHJvYmFibHkgZG9uJ3Qgd2FudCB0byBo
ZWFyIGl0IGlmIHlvdSAKPj4+PiBhcmUgc2V0Cj4+Pj4gb24gdXNpbmcgSmVudXggaG93ZXZlci4K
Pj4+Pgo+Pj4+IE9uIDEyLzE0LzIxIDA5OjE4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+PiBIaSBhbGwsCj4+Pj4+Cj4+Pj4+IEkgZGVjaWRlZCB0byBnaXZl
IEplbnV4IGFub3RoZXIgZ28sIGxhc3QgdGltZSwgbm8gbWF0dGVyIHdoYXQgSSAKPj4+Pj4gdHJp
ZWQsIEkKPj4+Pj4gY291bGRuJ3QgZ2V0IG9yY2EgdG8gY29tZSBvbiBhZnRlciBsb2dnaW5nIGlu
IHRvIHRoZSBzeXN0ZW0uCj4+Pj4+Cj4+Pj4+IERvZXMgYW55b25lIGhhdmUgYW55IGFkdmljZT8K
Pj4+Pj4KPj4+Pj4gQWxzbywgaWYgdGhpcyBkb2Vzbid0IHdvcmsgb3V0LCBpcyB0aGVyZSBhIGd1
aWRlIGZvciBkb2luZyBhIE1hbmphcm8KPj4+Pj4gYXJjaGl0ZWN0IGluc3RhbGw/ICJNYW5qYXJv
IFRhbGtpbmciIGdvdCB1cGRhdGVkIGEgbGl0dGxlIHdoaWxlIAo+Pj4+PiBhZ28sIGFuZAo+Pj4+
PiBpZiwgYXMgSSBzYWlkLCBKZW51eCBkb2Vzbid0IHdvcmsgb3V0LCBJJ2QgbGlrZSB0byBnaXZl
IHRoYXQgb25lIGEgCj4+Pj4+IGdvLgo+Pj4+Pgo+Pj4+PiBUaGFua3Mgc28gbG9uZy4KPj4+Pj4K
Pj4+Pj4gV2FybSByZWdhcmRzLAo+Pj4+Pgo+Pj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Pj4+Cj4+
Pj4+IFNlbnQgZnJvbSBteSBNYWNCb29rIEFpcgo+Pj4+Pgo+Pj4+PiBDb250YWN0Ogo+Pj4+Pgo+
Pj4+PiBQaG9uZTogKzI3ICgwKTYwIDUyNSA5MTgxIDx0ZWw6Ly8rMjc2MDUyNTkxODE+Cj4+Pj4+
Cj4+Pj4+IEVtYWlsOiBicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbSA8bWFpbHRvOmJyYW5kdC5z
dGVlbmthbXBAZ21haWwuY29tPgo+Pj4+Pgo+Pj4+PiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1w
IDxodHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPj4+Pj4KPj4+Pj4KPj4+
Pj4KPj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

