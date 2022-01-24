Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5321F497ED1
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 13:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643026490;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xh6+JZp955rBjZF03eObywaZLIQGTPGVQ/d4JYNrpGk=;
	b=LomQ5txPDOWW/X+FupahAvODD356ch0kmLJr7KGB7XPKbNFS8zy2wHiUNI2lvrl7jiFdJr
	/gA5sVKN8RXdzF6KV9fFiimWUa9QNOHj9KGMn63UBt4zg5QRyR5NP7zpGCaudsGl7YYsqg
	5HQYUU4wfiF/lsoQPiAHA/l8Mr1zPkg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-580-fs_WPm4GMRizIts_En6OKw-1; Mon, 24 Jan 2022 07:14:46 -0500
X-MC-Unique: fs_WPm4GMRizIts_En6OKw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CCAF83DD21;
	Mon, 24 Jan 2022 12:14:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 098A9106C064;
	Mon, 24 Jan 2022 12:14:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D1691809CB8;
	Mon, 24 Jan 2022 12:14:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20OCEQJp004512 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jan 2022 07:14:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2B666C0809F; Mon, 24 Jan 2022 12:14:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 278BCC0809B
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 12:14:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0E58811E76
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 12:14:25 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-655-S31v07ntNU6Hg2wnQLSkoQ-1; Mon, 24 Jan 2022 07:14:24 -0500
X-MC-Unique: S31v07ntNU6Hg2wnQLSkoQ-1
Received: by mail-wm1-f45.google.com with SMTP id
	q141-20020a1ca793000000b00347b48dfb53so27598596wme.0
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 04:14:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=SRnhTZnFtOnUvjE5WB1oLHyXmh7G/72ZhAw9AJyoYTI=;
	b=F7nW0sQ4B+s1v6qrvZKiX0JYo7IwybSl0A5U/4xXQm+mbB9WoMJ21sm2XJjSBHMpNg
	1DtZKRnfeXlEGph2hIG46qCiKs7677XQQ0UQ9Lzg5HiF+XvxXPSjycuBLGHiUWvjWSmy
	wUSbSSPicK84gqxtoRf4FNmXQiSdpJj04QkXTZw1xIcjYtGMvLyO8inl78zWuQDrRQ4I
	WGf840o7zk7g00wFgfQkgZbKpMzNEO1EYDg6JdLfx/IKW3G343BNoyW9usThE+gXupvT
	Rc6ChOoDHNDHWuDKdobQNN7SMRhD4Rb1cBsUDAXr9n9J55mCtL1OjGvMp3pr9/2e6vZz
	yXIg==
X-Gm-Message-State: AOAM5322+z7dvOUhLbEzW2i431WtGa2BVmFFs+5svgYMJ+KU3Z9Bb6Jb
	F3qBKWgb96RuhFu+FKiP/d+aVxl8rt4faQ==
X-Google-Smtp-Source: ABdhPJz2gL6egiaEcPYtqT1EVptl2HMRm74PIdKqdpisTinKUpWiAttFyFhYEShSrfowrL/pQDklYw==
X-Received: by 2002:a1c:9d94:: with SMTP id g142mr1550398wme.139.1643026462756;
	Mon, 24 Jan 2022 04:14:22 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	c8sm16323132wmq.34.2022.01.24.04.14.21 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 24 Jan 2022 04:14:22 -0800 (PST)
Subject: Re: Configuring ratpoison
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
	<e0e9740-3cd8-37ee-936-575e53672dc2@panix.com>
Message-ID: <ad8c5f38-8730-f5e2-bb6e-812803897cc9@gmail.com>
Date: Mon, 24 Jan 2022 12:14:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <e0e9740-3cd8-37ee-936-575e53672dc2@panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

UmlnaHQuIEl0IHNob3VsZCBnbyBsaWtlIHRoaXM6CgpTZWxlY3QgeW91ciBSYXRwb2lzb24ga2V5
LiBJdCBjb21lcyB1cCB3aXRoIGEgYnVuY2ggb2Ygb3B0aW9ucy4gQy0gaXMgCmNvbnRyb2wsIE0g
aXMgZWl0aGVyIGFsdCBvciBzaGlmdAoKU3VwZXJfTCBpcyB3aGF0IEkgZ28gZm9yLCBsZWZ0IFN1
cGVyIGtleQpUaGVuIGlmIHlvdSBnb3QgbXVsdGlwbGUgYnJvd3NlcnMsIHRleHQgZWRpdG9ycyBh
bmQgc28gb24gaXQnbGwgYXNrIHlvdSAKd2hpY2ggb25lLCB0aGVuIGl0J2xsIGFzayBpZiB5b3Ug
d2FudCBSYXRwb2lzb24gdG8gbWFrZSBzb3VuZHMsIGhvdyBtYW55IAp3b3Jrc3BhY2VzLCBhbmQg
aWYgeW91IHdhbnQgYnJhaWxsZSwgdGhlbiBhZnRlciB0aGF0IHlvdSdsbCBoYXZlIGEgCi5yYXRw
b2lzb25yYyBmaWxlCgpOZXh0LCBlaXRoZXIgYmFjayB1cCB5b3VyIGV4aXN0aW5nIHhpbml0cmMg
c29tZXdoZXJlIHNhZmUsIG9yIGRvIAouL3NldHVwLnNoIC14IHRvIG1ha2UgYSBuZXcgLnhpbml0
cmMgd2l0aCBSYXRwb2lzb24gc2V0dGluZ3MgdGhlbiBkbyBzdGFydHgKCkxpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSBnb3QgcmF0cG9pc29uIGFuZCBzdHJ5Y2hu
aW5lIGluc3RhbGxlZCBhbmQgcmFuIHRoZSBzZXR1cC5zaCBzY3JpcHQgaW4KPiBzdHJ5Y2huaW5l
LiAgVGhlIGZpcnN0IHNjcmVlbiBvZiBvcHRpb25zIEkgZGlkbid0IHVuZGVyc3RhbmQgc28gaGl0
IGVudGVyCj4gb24gdGhhdCBzY3JlZW4gd2l0aG91dCBzZWxlY3RpbmcgYW55dGhpbmcuICBJZiBJ
IGhhZCB0byBndWVzcywgSSdkIGd1ZXNzCj4gdGhhdCB3YXMgYSBsYW5ndWFnZSBzZWxlY3Rpb24g
c2NyZWVuIGJ1dCBlbmdsaXNoIHNvIGZhciBhcyBJIGNvdWxkIHRlbGwKPiB3YXNuJ3Qgb24gdGhh
dCBzY3JlZW4uCj4KPgo+IE9uIFN1biwgMjMgSmFuIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gSGkgQnJhbmR0LAo+Pgo+PiBJIGZvcndhcmRlZCB5
b3VyIHF1ZXN0aW9uIHRvIG15IGZyaWVuZCBTdG9ybSBEcmFnb24gb24gSVJDIGFuZCBoZXJlIGhp
cyBoaXMgYW5zd2VyOgo+PiAoMTY6MjQ6MjApIHN0b3JtOiBEaWRpZXJTcGFpZXI6IGh0dHBzOi8v
Z2l0LjJtYi5jb2Rlcy9+c3Rvcm1kcmFnb24yOTc2L3N0cnljaG5pbmUKPj4gKDE2OjI1OjA5KSBz
dG9ybTogVGhhdCdzIG15IHNjcmlwdCB0aGF0IGNyZWF0ZXMgYSAucmF0cG9pc29ucmMuIEl0J3Mg
d2hhdCBJIHVzZQo+PiBldmVyeSBkYXkgZm9yIG15IFggc2Vzc2lvbi4KPj4KPj4gQ2hlZXJzLAo+
PiBEaWRpZXIKPj4gLS0KPj4gRGlkaWVyIFNwYWllcgo+PiBTbGludCBtYWludGFpbmVyCj4+Cj4+
IExlIDIzLzAxLzIwMjIgPyAxNDo0MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhID9jcml0wqA6Cj4+PiBIaSBhbGwuCj4+Pgo+Pj4KPj4+IEkgaW5zdGFsbGVkIHJhdHBvaXNv
biBvbiBteSBTbGludCBzeXN0ZW0sIGFuZCBkb24ndCBoYXZlIGVpdGhlciB+Ly5yYXRwb2lzb25y
Ywo+Pj4gb3IgL2V0Yy9yYXRwb2lzb24uCj4+Pgo+Pj4KPj4+IFdoZXJlIGNhbiBJIGdldCBhIGdv
b2QgcmF0cG9pc29uIGNvbmZpZyBmaWxlPyBEb2VzIG9uZSBvZiB0aGUgT3JjYSB1c2VycywgSSdk
Cj4+PiBhc3N1bWUgdGhhdCB3b3VsZCBiZSBtb3N0IG9mIHVzLCBoYXZlIG9uZSBvbiBnaXRodWIg
b3Igc29tZXdhcmU/Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

