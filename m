Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CD67B456708
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 01:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637283211;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y1ApRUJy8Nm6a7dWk8aSd7qk5XvE5atfeJ8TouY273U=;
	b=WOotoiMq1qr5SPA842GamB6xn5wGLANTVAsHuc6SQVbTcwfD1wOnGNDd6TJde0JXG2lFgB
	DtmhdoF/Yqx2NkqvRB1y4Xz4D3VoPk/ooqiCE9USRWzqKlDdogaLWcxUMuwpCnISMiO4qu
	lGHeqKJRouY/QOpwyXmWagcMqr2pC4I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-430-E2g2CbLWO4GpVOlIlAlqKw-1; Thu, 18 Nov 2021 19:53:28 -0500
X-MC-Unique: E2g2CbLWO4GpVOlIlAlqKw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C46287D544;
	Fri, 19 Nov 2021 00:53:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 087295D9D5;
	Fri, 19 Nov 2021 00:53:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84A6C4EA2A;
	Fri, 19 Nov 2021 00:53:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ0rFBM014196 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 19:53:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D393351DC; Fri, 19 Nov 2021 00:53:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD56C51DD
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 00:53:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90E1A803D45
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 00:53:11 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com
	[209.85.219.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-400-CGvDILZvNWKn7PmIKuwO2A-1; Thu, 18 Nov 2021 19:53:09 -0500
X-MC-Unique: CGvDILZvNWKn7PmIKuwO2A-1
Received: by mail-yb1-f170.google.com with SMTP id v138so23414412ybb.8
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 16:53:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=JyaLPm6p9aYTj++3yTgq6hZAcA68HILESlZH4rFHi+g=;
	b=vSUXP8jdS/D56mX/bzOqK0vuDum48bl2YJqMVZdASzISCbsY/A8qZjSQIcGjJMZxhA
	IZjVX56u0F1BDm9FYsYnz4PP+6HhwXqw+URTvg0znfVt/fay0elW8E+9A2NiQbdbIyYx
	8VvmUnYg7DqRMXvwSqBitjcpDGKPWm5mKEdH+SwAabx/1Pfk5+52toL8xSzfuDM5olhH
	9QfSEdX16w+P2IPNw//EJ60DcsNsLX0NkqvRDH8B4jElvaMoCjH2L0+ee8KUTkJQQxji
	u3NkpmP/KOyUged/k39Hcck8+2b7jKU8KD7+0dsrD3Ob9JLlcfF3dJp2m5k0zaqWrXbM
	8ZVg==
X-Gm-Message-State: AOAM532yU1MeUt9nItbwuT/mmiavopsvFaemhin9dC4Dn0wDt1+YBDl1
	DZypRyBYQWD1LUmmKJP85Fbm6Zlb8DoPUk3KnE1tbGnu6vs=
X-Google-Smtp-Source: ABdhPJz7GQZxrhsS6WAPAmIgyWob99z8EpMpqkYlHqMz85Qm8mofX2aWmpyEYQShZ0q3c41+SfbRkX7J3GbfveuEZE0=
X-Received: by 2002:a25:944:: with SMTP id u4mr31868419ybm.31.1637283188699;
	Thu, 18 Nov 2021 16:53:08 -0800 (PST)
MIME-Version: 1.0
References: <C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<6F669B1C-20B6-45D4-A0E1-AB6A7D3C76B7@gmail.com>
	<CAO2sX33pXmk+BUEoRWaOHMzv_4Hkh=hzwYa_SetrS2Wz4Kt2OA@mail.gmail.com>
In-Reply-To: <CAO2sX33pXmk+BUEoRWaOHMzv_4Hkh=hzwYa_SetrS2Wz4Kt2OA@mail.gmail.com>
Date: Thu, 18 Nov 2021 18:52:57 -0600
Message-ID: <CAGJxbF4CTY=nWN=mMp6_kXM=dM7ZgV7B2hXMeYtuCKNnFx45sQ@mail.gmail.com>
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V293LiAxNSB5ZWFycyBvZiBMaW51eC4gSSdtIGN1cnJlbnRseSBydW5uaW5nIERlYmlhbiAoc3Rh
YmxlKSBpbiBDcm9zdGluaQooTGludXggY29udGFpbmVyIHdoaWNoIGNvbW11bmljYXRlcyB3aXRo
IHRoZSBob3N0KSBvbiBhIENocm9tZWJvb2suIEkgYnJva2UKRGViaWFuIHVuc3RhYmxlIG9uIGJh
cmUgbWV0YWwgYnkgYXV0b3JlbW92aW5nIGltcG9ydGFudCBwYWNrYWdlcy4gT29wcy4gQnV0Ckkg
ZmluZCB0aGF0IGlmIEkgdXNlIGJhY2twb3J0cyBhbmQgc3VjaCwgaXQgbWFrZXMgRGViaWFuIHN0
YWJsZSBiZWFyYWJsZS4gSQp0cmllZCBydW5uaW5nIHVuc3RhYmxlIG9uIHRoZSBDaHJvbWVib29r
LCBidXQgdGhlIEdhcmNvbiBjb21tdW5pY2F0aW9uCmJldHdlZW4gaG9zdCBhbmQgY29udGFpbmVy
IHdhcyBraW5kYSBicm9rZW4gYWZ0ZXIgYSB3aGlsZSwgYW5kIHRoaXMgaXMgYQpjb250YWluZXIg
SSdtIHRyeWluZyB0byBkbyBhIGxvdCBvZiB3b3JrIG9uLgpEZXZpbiBQcmF0ZXIKci5kLnQucHJh
dGVyQGdtYWlsLmNvbQoKCgoKT24gVGh1LCBOb3YgMTgsIDIwMjEgYXQgNjoxOCBQTSBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cgo+IFdoaWxlIGl0J3MgdHJ1ZSBlbm91Z2ggdGhhdCBEZWJpYW4gU3RhYmxlIGNhbiBoYXZl
IHZlcnkgb3V0ZGF0ZWQKPiBwYWNrYWdlcywgZXNwZWNpYWxseSB3aGVuIHRoZSBuZXh0IHJlbGVh
c2UgaXMgcmlnaHQgYXJvdW5kIHRoZSBjb3JuZXIsCj4gSSBmaW5kIHRoYXQgc3dpdGNoaW5nIHRv
IHRoZSBUZXN0aW5nIGJyYW5jaCBvZiBEZWJpYW4gYWxsZXZpYXRlcyB0aGUKPiBvdXRkYXRlZG5l
c3Mgd2l0aCB2ZXJ5IGxpdHRsZSBsb3NzIG9mIHN0YWJpbGl0eSwgYW5kIGF0IHRoZSBtb21lbnQs
Cj4gSSd2ZSBiZWVuIHNvdXJjaW5nIGFib3V0IDkwJSBvZiBteSBwYWNrYWdlcyBmcm9tIERlYmlh
biBVbnN0YWJsZSBhbmQKPiBhbm90aGVyIDklIGZyb20gRGViaWFuIEV4cGVyaW1lbnRhbCBmb3Ig
c2V2ZXJhbCBtb250aHMgbm93IHdpdGhvdXQKPiBzdWZmZXJpbmcgYW55IGJyZWFrYWdlcyB0aGF0
IHdvdWxkIGhhdmUgbWUgc3dpdGNoaW5nIGJhY2sgdG8gVGVzdGluZwo+IHVudGlsIHRoZSBpc3N1
ZSBpcyByZXNvbHZlZCBhbmQgcHVtb3VudCB3YXMgdGhlIG9ubHkgcGFja2FnZSBJIHJlY2FsbAo+
IGRvd25ncmFkaW5nIHRvIHVuc3RhYmxlIGFmdGVyIHRyeWluZyB0aGUgZXhwZXJpbWVudGFsIHZl
cnNpb24uCj4KPiBUaGF0IHNhaWQsIEknbSBub3Qgc3VyZSBJIGNhbiByZWNvbW1lbmQgRGViaWFu
IHRvIGEgTGludXggYmVnaW5uZXIsCj4gbXVjaCBsZXNzIGEgYmxpbmQgbGludXggYmVnaW5uZXIs
IGJ1dCB0aGVuIGFnYWluLCBJJ20gbm90IHN1cmUgd2hhdCB0bwo+IHJlY29tbWVuZCB0byBhIGJl
Z2lubmVyIHBlcmlvZCBhcyBJJ3ZlIGJlZW4gdXNpbmcgTGludXggYXMgbXkgbWFpbiBPUwo+IGZv
ciBtb3JlIHRoYW4gMTUgeWVhcnMsIFhQIHdhcyB0aGUgbGFzdCB2ZXJzaW9uIG9mIFdpbmRvd3Mg
SSB1c2VkIHdpdGgKPiBhbnkgcmVndWxhcml0eSBhbmQgc28gSSBmZWVsIGxpa2UgSSdtIHRvbyBk
ZWVwIGluIHRoZSBtZXRhcGhvcmljYWwKPiBLb29sLUFpZCB0byBqdWRnZSBhbnkgTGludXggZGlz
dHJvIGZyb20gYSBiZWdpbm5lcidzIHBlcnNwZWN0aXZlIGFuZAo+IHRvbyBvdXQgb2YgdG91Y2gg
d2l0aCB0aGUgd29ybGQgdGhlIG1ham9yaXR5IG9mIExpbnV4IGJlZ2lubmVycyBhcmUKPiBjb21p
bmcgZnJvbS4uLiBJdCdzIGtpbmQgb2YgbGlrZSBzb21lb25lIHdobydzIGJlZW4gc3BlYWtpbmcg
SmFwYW5lc2UKPiBkYWlseSBmb3IgMTUgeWVhcnMgdHJ5aW5nIHRvIHRlYWNoIEphcGFuZXNlIHRv
IGEgbW9kZXJuIGRheSBhbWVyaWNhbgo+IHdoZW4gdGhleSBrbm93IG5vdGhpbmcgb2YgbGFuZ3Vh
Z2UgdGVhY2hpbmcgYW5kIHRoZSBvbmx5IEVuZ2xpc2ggdGhleQo+IGtub3cgaXMgdGhhdCB1c2Vk
IGJ5IFNoYWtlc3BlYXJlLgo+Cj4gT24gMTEvMTgvMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4gd3JvdGU6Cj4gPiBJIGxpa2Vk
IG1pbnQuIEkgd2lzaCB0aGV5IG1ha2UgaXQgcG9zc2libGUgdG8gaW5zdGFsbCBvbiBhbiBleHRl
cm5hbAo+IG1lZGlhCj4gPiBsaWtlIGEgVVNCIGRpc2sgb3IgYW4gU0QgY2FyZC4KPiA+IENoZWVy
cywKPiA+IElicmFoaW0KPiA+Cj4gPiBTZW50IGZyb20gbXkgaVBob25lCj4gPgo+ID4+IE9uIE5v
diAxOCwgMjAyMSwgYXQgNDo1MCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
bgo+ID4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Pgo+ID4+IO+7v0hpLAo+
ID4+IFdoYXQgZG8geW91IHRoaW5rIG9mIExpbnV4IE1pbnQgMjAuMj8KPiA+PiBJcyBpdCBiZXR0
ZXIgdGhlbiBDb2NvbnV0Pwo+ID4+IEkgZG93bmxvYWRlZCB0aGUgTWF0ZSBJU08gZnJvbQo+ID4+
IGh0dHBzOi8vbGludXhtaW50LmNvbQo+ID4+IEkgaW5zdGFsbGVkIGl0IGluIGEgVk0sIEJ1dAo+
ID4+IEkgaGF2ZSBub3QgaGFkIHRpbWUgdG8gcmVhbGx5IGNoZWNrIGl0IG91dC4KPiA+PiBUaGFu
a3MsCj4gPj4gUm9iCj4gPj4KPiA+Pgo+ID4+PiBPbiBOb3YgMTYsIDIwMjEsIGF0IDExOjU3IFBN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4gPj4+IDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPiB3cm90ZToKPiA+Pj4KPiA+Pj4gaGVsbG8gSSBoYXZlIG9uZSBtb3JlIHF1ZXN0
aW9uLCBJIHRoaW5rLiBXaGVyZSBkbyBJIGRvd25sb2FkIHRoaXMKPiA+Pj4gZGlzdHJpYnV0aW9u
IGZyb20/IEFuZCBpbiBnZW5lcmFsIGFib3V0IGhvdyBtdWNoIGRpc2sgc3BhY2UgZG9lcyBpdAo+
IHRha2U/Cj4gPj4+IElzIGl0IHNvbWV0aGluZyB0aGF0IGNhbiBiZSBpbnN0YWxsZWQgYW5kIHdp
bGwgdmlydHVhbCBtYWNoaW5lIG9yIGlzCj4gaXQgYQo+ID4+PiBsaXZlIGRpc3RyaWJ1dGlvbi4g
SSBjYW4gcHJvYmFibHkgdmlueWwgdGhpcyBvdXQgYnkgZ29pbmcgdG8gdGhlIFVSTCBpZgo+ID4+
PiBzb21lb25lIHdvdWxkIGxpa2UgdG8gc2hhcmUgdGhhdCBsaW5rPyBUaGFua3MgaW4gYWR2YW5j
ZS4KPiA+Pj4KPiA+Pj4KPiA+Pj4gRGlzY2xhaW1lciB0aW1lLCBqdXN0IGJlIGF3YXJlIHRoYXQg
dGhlIGFib3ZlIGhhcyBiZWVuIGRpY3RhdGVkIHRvIHRoZQo+ID4+PiBtYWNoaW5lIGJ5IG1lYW5z
IG9mIFdpbmRvd3MtYmFzZWQgZGljdGF0aW9uIHNvZnR3YXJlLiBJZiB0aGVyZSdzCj4gPj4+IHNv
bWV0aGluZyB0aGF0IHlvdSBkb24ndCB1bmRlcnN0YW5kIHRoYXQgaGFzIGJlZW4gd3JpdHRlbiBh
Ym92ZSwgcGxlYXNlCj4gPj4+IHJlYWNoIG91dCB0byBtZSBhbmQgYXNrZWQgbWUgd2hhdCBteSBv
cmlnaW5hbCBpbnRlbnQgbWF5IGhhdmUgYmVlbi4KPiBUaGFuawo+ID4+PiB5b3UgdmVyeSBtdWNo
IGZvciByZWFkaW5nIHRoaXMuCj4gPj4+Cj4gPj4+PiBPbiAxMS8xNi8yMDIxIDU6NTEgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+PiBIaSwKPiA+Pj4+
Cj4gPj4+PiBJIGhhdmUgYmVlbiB1c2luZyBBY2Nlc3NpYmxlIENvY29udXQgZm9yIGFib3V0IGEg
bW9udGguCj4gPj4+Pgo+ID4+Pj4gT3JjYSBjYW4gc3RhcnQgYXQgYm9vdC4KPiA+Pj4+Cj4gPj4+
PiBUaGFua3MsCj4gPj4+Pgo+ID4+Pj4gUm9iCj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IE9uIDExLzE2
LzIxIDg6NDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
Pj4+Pj4gICAgR29vZCBhZnRlcm5vb24gb3IgZ29vZCBldmVuaW5nIG9yIHdoYXRldmVyIHRpbWUg
aXQgaXMgd2hlcmV2ZXIgeW91Cj4gPj4+Pj4gYXJlIHJlYWRpbmcgdGhpcy4gTXkgc3ViamVjdCBs
aW5lIHByZXR0eSBtdWNoIHNheXMgZXZlcnl0aGluZyB0aGVyZQo+IGlzCj4gPj4+Pj4gdG8gdGhp
cyBtZXNzYWdlLiBJIGFtIGxvb2tpbmcgZm9yIGluYXBwcm9wcmlhdGUgTGVubml4IGRpc3RyaWJ1
dGlvbgo+IHRvCj4gPj4+Pj4gcnVuIGluIGEgdmlydHVhbCBlbnZpcm9ubWVudC4gRnJvbSBldmVy
eXRoaW5nIEkgdGhpbmsgSSBrbm93LCBJJ20KPiA+Pj4+PiB0aGlua2luZyB0aGUgYmVzdCBzb2x1
dGlvbiBpcyBzb21ldGhpbmcgdGhhdCBjYW4gYmUgaW5zdGFsbGVkIGVhc2lseSwKPiA+Pj4+PiBh
bmQgYWxsb3cgbWUgdG8gaW5zdGFsbCBvcmNhIHJlYWxseSBxdWlja2x5IGlmIG5vdCBkbyBpdCBp
biB0aGUgc2FtZQo+ID4+Pj4+IGluc3RhbGwuIEFueSBnb29kIHN1Z2dlc3Rpb25zPyBJIGRvIGhh
dmUgYWNjZXNzIHRvIGEgRmVkb3JhIGNvcmUgSVNPCj4gPj4+Pj4gaW1hZ2UgYnV0IEknbSBqdXN0
IHdvbmRlcmluZyBpZiB0aGVyZSdzIHNvbWV0aGluZyBiZXR0ZXIgb3Igd2lsbCB0aGlzCj4gPj4+
Pj4gYmUgc3VmZmljaWVudD8gTG9va2luZyBmb3J3YXJkIHRvIHJlYWRpZyByZXNwb25zZSB3YWtl
IHVwIHRvIG15Cj4gPj4+Pj4gcXVlc3Rpb24uCj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IFBsZWFz
ZSBiZSBhd2FyZSB0aGF0IEkgYW0gZGljdGF0aW5nIHRoaXMgdG8gdGhlIGNvbXB1dGVyIGFuZAo+
IFdpbmRvd3MuIEkKPiA+Pj4+PiBhbSB1c2luZyBkaWN0YXRpb24gc29mdHdhcmUgYmVjYXVzZSBv
ZiBhbiBhZGRpdGlvbmFsIGRpc2FiaWxpdHkuIElmCj4gPj4+Pj4gdGhlcmUncyBzb21ldGhpbmcg
dGhhdCBJJ3ZlIHdyaXR0ZW4gYWJvdXQgdGhhdCB5b3UgdHJ1bHkgZG8gbm90Cj4gPj4+Pj4gdW5k
ZXJzdGFuZCwgcGxlYXNlIHdyaXRlIG1lIGFuZCBhc2tlZCBtZSB3aGF0IEkgbWF5IGhhdmUgbWVh
bnQuIEkKPiB0aGFuawo+ID4+Pj4+IHlvdSBraW5kbHkgaW4gYWR2YW5jZSBmb3IgcmVhZGluZyB0
aGlzLgo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IE9uIDExLzE2LzIwMjEgMzowNiBQ
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4+Pj4gVGhh
bmsgeW91IERpZGllci1hbmQtS3lsZS4gSSB3aWxsIGNlcnRhaW5seSBydW4geW91ciBjb21tYW5k
LCBidXQKPiBkbyBJCj4gPj4+Pj4+IG5lZWQgdG8gdW4gbW91bnQgYW55dGhpbmc/IEkgd291bGQg
YWxzbyBmaWd1cmUgSSB3b3VsZCBiZSBzaXR0aW5nCj4gPj4+Pj4+IG91dHNpZGUgb2YgdGhhdCBt
ZGVpYSBkaXJlY3Rvcnk/IE8tYW5kLXllcywgRGlkaWVyLCBpdCBpcyB2ZmF0Lgo+ID4+Pj4+PiBD
aGltZQo+ID4+Pj4+Pgo+ID4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4KPiA+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Cj4gPj4KPiA+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+ID4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4KPiA+
Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

