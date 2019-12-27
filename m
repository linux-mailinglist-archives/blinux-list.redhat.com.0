Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 9E34A12B026
	for <lists+blinux-list@lfdr.de>; Fri, 27 Dec 2019 02:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577409687;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dKGdQxa8v8gdGAngM5WE+kWZK6ryA3UBSr9J2LnuMNg=;
	b=ir/J5OE/rGjGbTnmApyVci1nEnKF5qjSj/ZHu0561srW5xFOkdBYR+3YCo0GsGW1DrpexL
	W9ilUEZcWK+ZLSHXHWXXA8ZMrD9vJ/xMKfNxtDwpycJJjhFPuyD79WoU9yElmtr47vhqLZ
	mQLkI9IFFaP2Um+iwTy8giwGe2YAY74=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-QYH0Ri3TNB6oo2BY4YMt3g-1; Thu, 26 Dec 2019 20:21:25 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0403418543A0;
	Fri, 27 Dec 2019 01:21:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD5E51001901;
	Fri, 27 Dec 2019 01:21:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CADCF4E16B;
	Fri, 27 Dec 2019 01:21:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBR1L5wO023815 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 26 Dec 2019 20:21:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1F879874FC; Fri, 27 Dec 2019 01:21:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1971697CF6
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 01:21:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED0008ED1EC
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 01:21:02 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-74-1xujCdq0M9GEMRnD4r8FCA-1; Thu, 26 Dec 2019 20:21:00 -0500
Received: by mail-wm1-f51.google.com with SMTP id p17so7206141wmb.0
	for <blinux-list@redhat.com>; Thu, 26 Dec 2019 17:21:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=mn+daRauMy0dilyLqJLBctoqC0X4DamIho2Duh9SEoc=;
	b=XdAE9IcWP7DMP16iiozPaS23IK25ZrqBpPov5tN+/HrI1uCKHvCdFSkgIjf4exs6EZ
	f+U9UHetUbieg3Usk04ba5FZVKfv/qtMwwv3DOF5W0I33q8cM5yY3WXovEszlj5SzrTj
	WYxSwYMhH9bT/IHutWqCWf7KytVXy6Lx9/sRwFBzZ3AavyzYjLMYmQS+vbhw/fZZlnXw
	gjK5mnEQFzksXZWyARNVPYhPTgiCuI+C3CjL5ML6NIAHEFskieKPx2/BDL+LL7yoUuOJ
	sF+MgGcAvY9Z0+/k1zGui9bzHKyu9onZ6XlzJCQU2trfHPQJX4u/3goA/Nr/npu/BfAT
	PDMw==
X-Gm-Message-State: APjAAAWojIrkUgOET9i0FM3Mq9Cci5Xgm0dAggoaNhwEuS2xDhaYk1Pd
	wfzVYNeGito2K1X042mymg2ItN1UzWU0IJXMJHvOK2RS
X-Google-Smtp-Source: APXvYqwoS4uNL5SD68+8eOrdCxDmX/J37VUW5OMmA6T49WqXElxX5sW0Ba+ZR09+lqHXifYN9QCiRBtEY6TqM1TC6CQ=
X-Received: by 2002:a05:600c:228f:: with SMTP id
	15mr16881030wmf.56.1577409658898; 
	Thu, 26 Dec 2019 17:20:58 -0800 (PST)
MIME-Version: 1.0
References: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
In-Reply-To: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
Date: Thu, 26 Dec 2019 20:20:47 -0500
Message-ID: <CAJKfDDGWs-DC9EM7ZOXwgCtU4se7yAjoGkx7QhL2R2+q-T2JLQ@mail.gmail.com>
Subject: Re: I question about how does a blind person get speech going on a
	Ubentu System.
To: blinux-list <blinux-list@redhat.com>
X-MC-Unique: 1xujCdq0M9GEMRnD4r8FCA-1
X-MC-Unique: QYH0Ri3TNB6oo2BY4YMt3g-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VXNlIHVidW50dSBtYXRlIDE5LjEwLCBhdCBzdGFydCBpdCBvZmZlciBzcGVlY2ggb3V0cHV0IGlm
IHlvdSB3YWl0LCBhZnRlcgppbnN0YWxsIHVzZSB0aGUgd2luZG93cyBrZXkgdG8gb3BlbiB0aGUg
bWVudSwgdHlwZSBtYXRlLXR3ZWFrIGFuZCBzZWVrIHRvCmFkZCBjb21waXosIGl0IHdpbGwgZ2l2
ZSBhbiBvbiBkZW1hbmQgem9vbSBhbmQgY29udHJvbCBpbnZlcnNpb24sIHdpbmRvd3MKa2V5ICsg
bW91c2Ugc2Nyb2xsIGZvciB6b29tLCBXaW5kb3dzIGtleSArIE0gb3IgTiBmb3IgY29sb3IgaW52
ZXJzaW9uLApnbm9tZS1vcmNhIGlzIHByZXNlbnQgYnkgZGVmYXVsdCwgZXh0cmEgZ2FpbiBpdCBo
YXMgYSBnb29kIHN1cHBvcnQgZm9yCm52aWRpYSBvcHRpbXVzLCAuLi4KCk1pa2UKCgpMZSBqZXUu
IDI2IGTDqWMuIDIwMTksIMOgIDE4IGggNTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPApibGludXgtbGlzdEByZWRoYXQuY29tPiBhIMOpY3JpdCA6Cgo+IEhlbGxvIG15IHN1
YmplY3QgbGluZSBzYXlzIGl0IGFsbCwgSSBhbSB0b3RhbGx5IGJsaW5kLiBJIGRvd25sb2FkZWQg
YQo+IGNvcHkgb2YgRGVza3RvcCBVYmVudHUgMTguMy4gVGhpcyBkaXN0cmlidXRpb24gaGFzIGJl
ZW4gaW5zdGFsbGVkIGluIGEKPiB2aXJ0dWFsIE1hY2hpbmUuIEFmdGVyIGluc3RhbGxhdGlvbiB0
aGUgc3lzdGVtIGlzIHJ1bm5pbmcgdGhlIEdVSQo+IEludGVyZmFjZS4gSSB3b3VsZCBsaWtlIHRv
IHVzZSBPcmNhIGZvdXIgc2NyZWFtIFJlYWRpbmcgYWNjZXNzPyBIb3cgY2FuCj4gSSBkdWUgdGhp
cz8KPgo+IFNpbmNlcmVseSBNYXVyaWNlIE1pbmVzLgo+Cj4gUFMgdGhpcyBlbWFpbCBoYXMgYmVl
biBkaWN0YXRlZCB0byBteSBNYWMgQm9vayBwcm8uIFBsZWFzZSBmb3JnaXZlIGFueQo+IG1pc3Rh
a2VzP0kgaG9wZSB0aGF0IHRoaXMgaXMgcmVhZGFibGU/Cj4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

