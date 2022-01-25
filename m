Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E23E349BC16
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jan 2022 20:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643138926;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/JgF6Q+CqRar/YuUarZZvCOIB/0whM6Bb/rxQy3s4zg=;
	b=IsFlOkjF2KVbDwmDcYgvIj/RSnvEm67Uyzjk44xr63WqixyrVFXEHJOJkuCbnotL/HY4wn
	sGZephtVtlQzTyNTNxWLUDYh6jk8nTLQhmms6kFBeWp2xJLA2vYYpv3WeK/U4OX9Nh0lXe
	Di/fh2WRYw3TbdxF2LvAZrAV1bK3ZP0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-596-rpJlbJczPGGZ9ycqbIcfzA-1; Tue, 25 Jan 2022 14:28:42 -0500
X-MC-Unique: rpJlbJczPGGZ9ycqbIcfzA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7C2F345CB;
	Tue, 25 Jan 2022 19:28:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 751FB19C59;
	Tue, 25 Jan 2022 19:28:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 04A841809CB8;
	Tue, 25 Jan 2022 19:28:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20PJSYJN018649 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Jan 2022 14:28:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C7D1F2144B20; Tue, 25 Jan 2022 19:28:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2213200F461
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 19:28:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3366101A52D
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 19:28:31 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-187-HrtvAzEAOT61Nb2ZVlAdrw-1; Tue, 25 Jan 2022 14:28:29 -0500
X-MC-Unique: HrtvAzEAOT61Nb2ZVlAdrw-1
Received: by mail-wm1-f49.google.com with SMTP id
	r82-20020a1c4455000000b0034e043aaac7so1909946wma.5
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 11:28:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=fh1FUSYZBlogntXWzDXr1v5LdAvRRjlMA0nGIpDyv+w=;
	b=dU08umXC1xX8u7+2z1V+IndpJAf+j9pIw28ENAdsOYxToJ9K0a2JRMQsk8oH0Al1NG
	XX4aBgxOp6L3cCRmT1sRIlfnXAhQkb7IWkuYd/UdTAiTpwuUANLtMppV9aY/mDWvn6Ph
	HFYJCRsE12hVVhK5ya6NubSTPdWlYjiOS7Urn4m8D2l4+4Vw9avxhCUvkaKPblxC2zfJ
	+9T5XQ+TcCm8eSX/4vSqdKddOivFvXH55eOR0c9tUSJmJCGZGie965tWhYB9URG3tu8G
	2ZndVy7GlVVZWo/snQx9GAv/otrF6GffA9SzBWV+Or/ocODLusASohSPEALp7cJ5gKCO
	KZwQ==
X-Gm-Message-State: AOAM533B7oC5u1OxLQ0O56q+0AT5YVYfGEjvyvnU9e2MkSfrnI7hDPh2
	oDBf6FJZZ3rZ7XaR9LWB9FkLYtwSsJL7iA==
X-Google-Smtp-Source: ABdhPJwr09qoWkbvw65J2A7c4yDc9vni2iUpemKqY1fngV5dyjH4xt37Z76d6y1TFSUUPaz6pcUbnw==
X-Received: by 2002:a05:600c:290c:: with SMTP id
	i12mr4452952wmd.102.1643138908055; 
	Tue, 25 Jan 2022 11:28:28 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	c11sm11084077wri.43.2022.01.25.11.28.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 25 Jan 2022 11:28:27 -0800 (PST)
Subject: Re: Configuring ratpoison
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
	<e0e9740-3cd8-37ee-936-575e53672dc2@panix.com>
	<ad8c5f38-8730-f5e2-bb6e-812803897cc9@gmail.com>
	<b2a26ce7-cd2c-93c1-bf4-aae041f468fa@panix.com>
	<87zgnjodji.fsf@yahoo.com>
	<748d48e0-526a-937e-c2a8-2ef4775c132f@panix.com>
Message-ID: <4283a621-51ba-a18c-ea02-85c58d9aa085@gmail.com>
Date: Tue, 25 Jan 2022 19:28:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <748d48e0-526a-937e-c2a8-2ef4775c132f@panix.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Q3VyaW91c2x5IFN0cnljaG5pbmUgZm9yIG1lLCBkb2Vzbid0IHNlZW0gdG8gbGlrZSBNaW50IGhv
d2V2ZXIsIGF0IGxlYXN0IAppbiBteSB0ZXN0IHNldHVwLiBBcmNoIHdvcmtzIHBlcmZlY3RseSB3
ZWxsIGFmdGVyIGdvaW5nIHRocm91Z2ggbXkgCnNldHRpbmcgdGhpbmdzIHVwIHJvdXRpbmUgaG93
ZXZlcgoKQWx0IEYxIHdvcmtzIGZpbmUgaGVyZSBldmVuIGlmIEkgY29tbWVudCBvdXQgdGhlIG90
aGVyIG1lbnVzCgpMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEkg
Z290IGFsdC1mMSB3b3JraW5nIHdpdGggc3RyeWNobmluZSBhbmQgcmF0cG9pc29uIG9uIHNsaW50
IGFuZCBkaWRuJ3QKPiBpbnN0YWxsIHFlbXUuCj4KPgo+IE9uIFR1ZSwgMjUgSmFuIDIwMjIsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gSGksCj4+Cj4+IEkg
aW5zdGFsbGVkIFJhdHBvaXNvbiBhbG9uZyB3aXRoIHRoZSBTdHJ5Y2huaW5lIGFuZCB0cmllZCB0
byBmb2xsb3cgdGhlCj4+IGd1aWRlbGluZXMuIFdoaWxlIHRoaXMgc2VlbXMgdG8gYmUgYSBncmVh
dCBvZmZlcmluZywgSSBzZWVtIHRvIGhhdmUKPj4gaXNzdWVzIHdpdGggdGhlIEFMVCtGMSBtZW51
OiBpdCBkb2VzIG5vdCBzdGFydCB0aGUgbWFpbiBtZW51LiBJIHJlbW92ZWQKPj4gdGhlIHFlbXUu
ZGVza3RvcCBmcm9tIHRoZSAvdXNyL3NoYXJlL2FwcGxpY2F0aW9ucywgYnV0IHN0aWxsIE9yY2Eg
ZG9lcwo+PiBub3QgYW5ub3VuY2UgdGhlIG1lbnUuCj4+Cj4+IEFueSBoaW50cyBvbiBob3cgZWxz
ZSB0byBwcm9jZWVkPwo+Pgo+Pgo+PiBPbiBNb24sIEphbiAyNCwgMjAyMiBhdCAwODoyMiAgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+PiBUaGFua3MsIEkgYWxtb3N0IGdvdCB0aGF0IGNvcnJlY3QuICBJJ2xsIHJl
bW92ZSB0aGUgLnJhdHBvaXNvbnJjIGZpbGUgYW5kCj4+PiBydW4gdGhlIHNldHVwLnNoIHNjcmlw
dCBhZ2Fpbi4KPj4+Cj4+Pgo+Pj4gT24gTW9uLCAyNCBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Cj4+Pj4gUmlnaHQuIEl0IHNob3VsZCBnbyBs
aWtlIHRoaXM6Cj4+Pj4KPj4+PiBTZWxlY3QgeW91ciBSYXRwb2lzb24ga2V5LiBJdCBjb21lcyB1
cCB3aXRoIGEgYnVuY2ggb2Ygb3B0aW9ucy4gQy0gaXMKPj4+PiBjb250cm9sLAo+Pj4+IE0gaXMg
ZWl0aGVyIGFsdCBvciBzaGlmdAo+Pj4+Cj4+Pj4gU3VwZXJfTCBpcyB3aGF0IEkgZ28gZm9yLCBs
ZWZ0IFN1cGVyIGtleQo+Pj4+IFRoZW4gaWYgeW91IGdvdCBtdWx0aXBsZSBicm93c2VycywgdGV4
dCBlZGl0b3JzIGFuZCBzbyBvbiBpdCdsbCBhc2sgeW91Cj4+Pj4gd2hpY2gKPj4+PiBvbmUsIHRo
ZW4gaXQnbGwgYXNrIGlmIHlvdSB3YW50IFJhdHBvaXNvbiB0byBtYWtlIHNvdW5kcywgaG93IG1h
bnkKPj4+PiB3b3Jrc3BhY2VzLAo+Pj4+IGFuZCBpZiB5b3Ugd2FudCBicmFpbGxlLCB0aGVuIGFm
dGVyIHRoYXQgeW91J2xsIGhhdmUgYSAucmF0cG9pc29ucmMgZmlsZQo+Pj4+Cj4+Pj4gTmV4dCwg
ZWl0aGVyIGJhY2sgdXAgeW91ciBleGlzdGluZyB4aW5pdHJjIHNvbWV3aGVyZSBzYWZlLCBvciBk
byAuL3NldHVwLnNoCj4+Pj4gLXgKPj4+PiB0byBtYWtlIGEgbmV3IC54aW5pdHJjIHdpdGggUmF0
cG9pc29uIHNldHRpbmdzIHRoZW4gZG8gc3RhcnR4Cj4+Pj4KPj4+PiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiBJIGdvdCByYXRwb2lzb24gYW5kIHN0cnlj
aG5pbmUgaW5zdGFsbGVkIGFuZCByYW4gdGhlIHNldHVwLnNoIHNjcmlwdCBpbgo+Pj4+PiBzdHJ5
Y2huaW5lLiAgVGhlIGZpcnN0IHNjcmVlbiBvZiBvcHRpb25zIEkgZGlkbid0IHVuZGVyc3RhbmQg
c28gaGl0IGVudGVyCj4+Pj4+IG9uIHRoYXQgc2NyZWVuIHdpdGhvdXQgc2VsZWN0aW5nIGFueXRo
aW5nLiAgSWYgSSBoYWQgdG8gZ3Vlc3MsIEknZCBndWVzcwo+Pj4+PiB0aGF0IHdhcyBhIGxhbmd1
YWdlIHNlbGVjdGlvbiBzY3JlZW4gYnV0IGVuZ2xpc2ggc28gZmFyIGFzIEkgY291bGQgdGVsbAo+
Pj4+PiB3YXNuJ3Qgb24gdGhhdCBzY3JlZW4uCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IE9uIFN1biwgMjMg
SmFuIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+
Cj4+Pj4+PiBIaSBCcmFuZHQsCj4+Pj4+Pgo+Pj4+Pj4gSSBmb3J3YXJkZWQgeW91ciBxdWVzdGlv
biB0byBteSBmcmllbmQgU3Rvcm0gRHJhZ29uIG9uIElSQyBhbmQgaGVyZSBoaXMKPj4+Pj4+IGhp
cwo+Pj4+Pj4gYW5zd2VyOgo+Pj4+Pj4gKDE2OjI0OjIwKSBzdG9ybTogRGlkaWVyU3BhaWVyOgo+
Pj4+Pj4gaHR0cHM6Ly9naXQuMm1iLmNvZGVzL35zdG9ybWRyYWdvbjI5NzYvc3RyeWNobmluZQo+
Pj4+Pj4gKDE2OjI1OjA5KSBzdG9ybTogVGhhdCdzIG15IHNjcmlwdCB0aGF0IGNyZWF0ZXMgYSAu
cmF0cG9pc29ucmMuIEl0J3MKPj4+Pj4+IHdoYXQgSQo+Pj4+Pj4gdXNlCj4+Pj4+PiBldmVyeSBk
YXkgZm9yIG15IFggc2Vzc2lvbi4KPj4+Pj4+Cj4+Pj4+PiBDaGVlcnMsCj4+Pj4+PiBEaWRpZXIK
Pj4+Pj4+IC0tCj4+Pj4+PiBEaWRpZXIgU3BhaWVyCj4+Pj4+PiBTbGludCBtYWludGFpbmVyCj4+
Pj4+Pgo+Pj4+Pj4gTGUgMjMvMDEvMjAyMiA/IDE0OjQwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgP2NyaXTCoDoKPj4+Pj4+PiBIaSBhbGwuCj4+Pj4+Pj4KPj4+Pj4+Pgo+
Pj4+Pj4+IEkgaW5zdGFsbGVkIHJhdHBvaXNvbiBvbiBteSBTbGludCBzeXN0ZW0sIGFuZCBkb24n
dCBoYXZlIGVpdGhlcgo+Pj4+Pj4+IH4vLnJhdHBvaXNvbnJjCj4+Pj4+Pj4gb3IgL2V0Yy9yYXRw
b2lzb24uCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IFdoZXJlIGNhbiBJIGdldCBhIGdvb2QgcmF0
cG9pc29uIGNvbmZpZyBmaWxlPyBEb2VzIG9uZSBvZiB0aGUgT3JjYQo+Pj4+Pj4+IHVzZXJzLAo+
Pj4+Pj4+IEknZAo+Pj4+Pj4+IGFzc3VtZSB0aGF0IHdvdWxkIGJlIG1vc3Qgb2YgdXMsIGhhdmUg
b25lIG9uIGdpdGh1YiBvciBzb21ld2FyZT8KPj4+Pj4+Pgo+Pj4+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+
Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

