Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 665321640C3
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 10:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582105683;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GZ3xPhJqlpJuYCLPdvqlkZM39KYbA0uS7cxeai0R5OQ=;
	b=MceKR40tyFTY85kDFEAQuLWA/XEkyNQvJAoEUbIyyB6zcLRWUAfRrg7pGTD9BFTjGY8+TU
	DTUivkNE3nLHmxZtTX0l1dABA7jhqTjaSaivMHQHntEsuUUVaamhx4pTTZdc1O3QFxXCRT
	xKGd6ry1BWh+5ZFBWrWyZNKNX9otnUw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-UbqNaOMfN8O-euV_CQxKBw-1; Wed, 19 Feb 2020 04:48:01 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2999E107ACC5;
	Wed, 19 Feb 2020 09:47:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ED0D60BE1;
	Wed, 19 Feb 2020 09:47:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A9A4218089CD;
	Wed, 19 Feb 2020 09:47:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01J9lhRY027783 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 04:47:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B02352166B28; Wed, 19 Feb 2020 09:47:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC18F2166B27
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 09:47:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24B988028B1
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 09:47:41 +0000 (UTC)
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-168-7luIM_-zMuew4sYACPnxAg-1; Wed, 19 Feb 2020 04:47:37 -0500
Received: from darkstar.slint.fr (unknown [176.172.247.100])
	(Authenticated sender: appartement.cdm)
	by smtp4-g21.free.fr (Postfix) with ESMTPSA id A7EF619F4F8
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 10:47:35 +0100 (CET)
Subject: Re: early warning I hope
To: blinux-list@redhat.com
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
Message-ID: <8b00d709-122b-a693-cac3-1630c2bbec7f@free.fr>
Date: Wed, 19 Feb 2020 10:47:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: 7luIM_-zMuew4sYACPnxAg-1
X-MC-Unique: UbqNaOMfN8O-euV_CQxKBw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01J9lhRY027783
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWljaGHDq2wsCgpsZXQgbWUgYW5zd2VyIHRvIHRoaXMgcGFydCBvZiB5b3VyIGxhc3QgbWVz
c2FnZToKCkxlIDE5LzAyLzIwMjAgw6AgMDQ6MjgsIE1pY2hhw6tsIENhcm9uIENvdXR1cmllciBh
IMOpY3JpdCA6Cj4gT24gdGhlIG90aGVyIHNpZGUsIFNsaW50IGlzIFNsYWNrd2FyZSBiYXNlZCwg
b3V0IG9mIHRoZSA1IG1ham9ycwo+IGRpc3RyaWJ1dGlvbnMgYmFzZXMsIGl0J3Mgb25lIG9mIHRo
ZSB0d28gZmFyIGxlc3MgdXNlZCBzbyB0aGUgdXNlciBoYXZlCj4gYmFyZWx5IG5vIGNvbW11bml0
eSB0byBoZWxwIGhpbSBpbiBjYXNlIG9mIGlzc3Vlcy4KClJlYWxseT8KCkZvciBTbGFja3dhcmUg
cHJvcGVyLCB0aGVyZSBpcyB0aGlzIGEgdmVyeSBhY3RpdmUgZm9ydW06Cmh0dHBzOi8vd3d3Lmxp
bnV4cXVlc3Rpb25zLm9yZy9xdWVzdGlvbnMvc2xhY2t3YXJlLTE0LwoKRm9yIFNsaW50IHNwZWNp
ZmljYWxseSB3ZSByZWNlbnRseSByZXBsYWNlZCB0aGUgZm9ybWVyIG1haWxpbmcgbGlzdCBieSBh
Cm5ldyBvbmUsIGNmLiB0aGlzIGJsb2cgcG9zdDoKaHR0cHM6Ly9zbGludC5mci9ibG9nL3dlbGNv
bWUtdG8tdGhlLW5ldy1zbGludC1tYWlsaW5nLWxpc3QuaHRtbApJdCBpcyB2ZXJ5IGZyaWVuZGx5
IGFuZCBhY3RpdmUsIHlvdSBjYW4gY2hlY2sgbG9va2luZyBhdCB0aGUgYXJjaGl2ZXMKZm9yIHRo
ZSBjdXJyZW50IG1vbnRoOiBodHRwczovL3d3dy5mcmVlbGlzdHMub3JnL2FyY2hpdmUvc2xpbnQv
MDItMjAyMAoKV2UgaGF2ZSBub3cgYWxzbyBhIG11bWJsZSBjaGFubmVsIGRlZGljYXRlZCB0byBT
bGludC4KClNvIHlvdXIgc3RhdGVtZW50ICJubyBjb21tdW5pdHkgdG8gaGVscCBpbiBjYXNlIG9m
IGlzc3VlcyIgaXMgbm90IHRydWUuClRoZSBTbGludCBtYWlsaW5nIGxpc3QgaXMgZXZlbiBtb3Jl
IGFjdGl2ZSB0aGFuIHRoZSBkZWJpYW4tYWNjZXNzaWJpbGl0eQptYWlsaW5nIGxpc3QgdGhhdCBJ
IGFsc28gZm9sbG93IDxzbWlsZT4uCkkgZG9uJ3Qgc2F5IHRoYXQgdG8gZGVzcGlzZSBEZWJpYW4g
d2hpY2ggaW5kZWVkIGlzIGEgZ29vZCBkaXN0cmlidXRpb24sCmFuZCBEZWJpYW4gY29udHJpYnV0
b3JzIGxpa2UgU2FtdWVsIGRvIGFuIG91dHN0YW5kaW5nIGpvYi4KCkFzIGFuIGFzaWRlIGluZGVl
ZCBTbGludCBzaGlwcyBNYXRlIHdpdGggbWF0ZS10d2VhayBhbmQgQ29tcGl6LCBhbmQKZG9jdW1l
bnRzIGhvdyB0byBnZXQgdGhlIGJlc3Qgb2YgaXQ6Cmh0dHA6Ly9zbGFja3dhcmUudWsvc2xpbnQv
eDg2XzY0L3NsaW50LTE0LjIuMS9kb2MvQWNjZXNzaWJpbGl0eS9Db21waXpLZXlCaW5kaW5ncwoK
U2xpbnQgYWxzbyBhbGxvd3MgdG8gc3dpdGNoIGJldHdlZW4gY29uc29sZSBtb2RlIGFuZCBhIGRl
c2t0b3Agd2l0aG91dApsb29zaW5nIHNwZWVjaCBvdXQgb2YgdGhlIGJveCwgd2hpY2ggeW91IGNh
biBkbyB3aXRoIG90aGVyIGRpc3RyaWJ1dGlvbnMKb25seSB3aXRoIGEgbm90IG9idmlvdXMgcG9z
dC1pbnN0YWxsIG1hbnVhbCBjb25maWd1cmF0aW9uLgoKVGhhdCdzIG5vdCB0byBzYXkgU2xpbnQg
aXMgcGVyZmVjdCwgaXQgY2VydGFpbmx5IGlzbid0LiBCdXQgd2UgYWxsIGVhcnMKdG8gYnVnIHJl
cG9ydHMgYW5kIHJlcXVlc3RzIGZvciBoZWxwIGFuZCBlbmhhbmNlbWVudHMuCgpCZXN0IHJlZ2Fy
ZHMsCgpEaWRpZXIgU3BhaWVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

