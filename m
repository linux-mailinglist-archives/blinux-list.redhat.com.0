Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3BF6242B013
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 01:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634080875;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5QvTrQJvmCoAt7BtUH61I8AmUbg+0agd/Ij6sfN45/s=;
	b=LoNetmntO5tOeR7df9bswQlJHvykU1VKophUtVJIVSYf/DFnVp+/bWbVhmHpbZ5wPrUv1J
	9bcTkc+BvvkKw41s7aC9AVqGPXKIsWs8gj/clteR0kAifOowtoiG2ufzuh5xxkEGshixar
	f/HbzjBSc1G119rtc7HlKIz6WpMUsIk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-586-OQPSzG1_O4KUeEPqhnyj5g-1; Tue, 12 Oct 2021 19:21:11 -0400
X-MC-Unique: OQPSzG1_O4KUeEPqhnyj5g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 560A419057A0;
	Tue, 12 Oct 2021 23:21:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD85A5C1B4;
	Tue, 12 Oct 2021 23:21:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CE414E58F;
	Tue, 12 Oct 2021 23:21:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CNKqZ7029070 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 19:20:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7C37E2166B2D; Tue, 12 Oct 2021 23:20:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7714E2166B25
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 23:20:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81882800B29
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 23:20:49 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-257-3amDrGpDNqetYygRD8VPWg-1; Tue, 12 Oct 2021 19:20:47 -0400
X-MC-Unique: 3amDrGpDNqetYygRD8VPWg-1
Received: by mail-qk1-f182.google.com with SMTP id z40so603832qko.7
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 16:20:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=h3QoIpJbNkpoHYZr1B2JCAWvHHsj0vC9yuPvgbjzw7Y=;
	b=m+GiyvEcBQinbMFszbEV3Zdu2/8ZhsFYKzd+aMy2RMoNHqxkLaj+5qgHd3kXIQgnoW
	8pDgy00IQ8/xrE0O5uT4jJ44i+pM65+DxzyawAg7MlzTc9tkGh+tzjp+Soi0Y3ORmKx4
	hbO7zjsvOSlMYcxlMfAb8tlKDpy2fGEQYwIyVArEPu7M9j2mZU57JdYGWAaMCqyuwMnb
	KoSLsm9FS58QzsHKXaXgOzZDn9qN8kw5fDiMsawvazVKQiI9vqi5UjV7NnEXAz5ZDxwV
	OlpXOXJCMjQZOUgLqCyx7prdpc2O+eqIF3o4bNE4xbRxI3L3kTaT2IPFygJplj4qFXKW
	qwGQ==
X-Gm-Message-State: AOAM531jIhZboDuKdP/+tqo8bEOVPNM3ZKAuIfYjkTLkvfDm2Iv3EmpW
	ZXNoksH9VCuN27fJZk10h2Rk4+IvPtU9xQ==
X-Google-Smtp-Source: ABdhPJxdVlsfwZBoYyQtDTrn8APt9l/f7Yd7dPU0FAFcl9aC6q796dsfmGJkl3vJ6sxSZhJSNg2vXA==
X-Received: by 2002:a37:a882:: with SMTP id r124mr14775098qke.86.1634080846830;
	Tue, 12 Oct 2021 16:20:46 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:6cd0:b099:3825:80d4?
	([2601:192:4c80:1420:6cd0:b099:3825:80d4])
	by smtp.gmail.com with ESMTPSA id v7sm6497696qkd.41.2021.10.12.16.20.46
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 Oct 2021 16:20:46 -0700 (PDT)
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: blinux-list@redhat.com
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
	<B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
Message-ID: <f8b8b6b0-9563-4816-3ce2-058e670df4ca@gmail.com>
Date: Tue, 12 Oct 2021 19:20:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIExpbnV4IE1pbnQgKE1hdGUgRWRpdGlvbiksIG9uIG9uZSBvZiBteSBtYWNoaW5lcy4g
VGhpcyBpcyBiYXNlZApvbiBVYnVudHUgMjAuMDQsIHdoaWNoIGlzIGEgbG9uZy10ZXJtIHN0YWJs
ZSB2ZXJzaW9uLiBJIGhlYXIsIGl0IHdpbGwgYmUKc3VwcG9ydGVkIHRpbCAyMDMwP8KgIHdpdGgg
b3JjYSBjb25maWd1cmVkIGZvciBzcGVlY2g7IGNhbid0IHRlc3QgdGhlCmJyYWlsbGUgc2V0dXAs
IEkgaGF2ZSBubyBkaXNwbGF5LsKgIFRyeSBvdXQgdGhlIGxpdmUgc3lzdGVtIGZyb20KaHR0cHM6
Ly9saW51eG1pbnQuY29tLiDCoAoKSFRILAoKCkRhdmUKCgpTZW50IGZyb20gbXkgVGhpbmsgUGVu
Z3VpbiBKNCBsYXB0b3AsIHJ1bm5pbmcgVHJpc3F1ZWwgR05VL0xpbnV4LCB2ZXJzaW9uIDkuCgoK
RGF2ZQoKCk9uIDEwLzEyLzIxIDY6MjkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gVGhpcyB3YXMgZmVkb3JhIDM0IG1hdGUuCj4KPj4gT24gT2N0IDEyLCAy
MDIxLCBhdCA1OjE5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGlu
dXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4KPj4gV2hhdCBkaXN0cmlidXRpb24gaXMgdGhp
cyBvbj8KPj4gRGV2aW4gUHJhdGVyCj4+IHIuZC50LnByYXRlckBnbWFpbC5jb20KPj4gZ2VtaW5p
Oi8vdGlsZGUucGluay9+ZGV2aW5wcmF0ZXIvCj4+Cj4+Cj4+Cj4+IE9uIFR1ZSwgT2N0IDEyLCAy
MDIxIGF0IDQ6MTYgUE0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4+IGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+Pj4gQWZ0ZXIgaW5zdGFsbGluZywgSSBo
ZWFyZCDigJlzY3JlZW4tcmVhZGVyIG9mZuKAmSwgc28gSSB0dXJuZWQgb3JjYSBvbi4KPj4+IFRo
ZW4gSSB3YXMgdG9sZCB0byByZWJvb3QuCj4+PiBBZnRlciByZWJvb3RpbmcsIEkgdHVybmVkIG9y
Y2Egb24sIHRoZW4gbG9nZ2VkIGluLgo+Pj4gVGhlbiwgbm8gc3BlZWNoLgo+Pj4gQ291bGQgbm90
IGdldCBvcmNhIHdvcmtpbmcuCj4+Pgo+Pj4+IE9uIE9jdCAxMiwgMjAyMSwgYXQgNzoxMiBBTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4+PiBibGludXgtbGlzdEByZWRo
YXQuY29tPiB3cm90ZToKPj4+PiBBIGh1Z2UgKzEgZm9yIEZlZG9yYSBNQVRFLiBJIGhhdmUgaXQg
cnVubmluZyBvbiB0d28gY29tcHV0ZXJzIGhlcmUsIG9uZQo+Pj4gaXMgbm90IG1pbmUsIGFuZCBp
dCB3b3JrcyBncmVhdC4gT3JjYSBjb21lcyB3aXRoIGl0LCBhbmQgeW91IGNhbiBydW4gYSBmdWxs
Cj4+PiBpbnN0YWxsIGFmdGVyIHByZXNzaW5nIGFsdCtmMiB0byBvcGVuIHRoZSBydW4gd2luZG93
IGFuZCB0aGVuIGVudGVyaW5nIHRoZQo+Pj4gd29yZCBvcmNhLiBXaWZpIGdlbmVyYWxseSB3b3Jr
cyBvdXQgb2YgdGhlIGJveCwgdGhvdWdoIHRoZSBOZXR3b3JrTWFuYWdlcgo+Pj4gYXBwbGV0IHRo
YXQgY29udHJvbHMgaXQgZG9lc24ndCB0ZWxsIHlvdSB3aGF0IGl0IGlzLiBTdGlsbCwgeW91IGNh
biBqdXN0Cj4+PiBob2xkIHRoZSBhbHQgYW5kIGNvbnRyb2wga2V5cyBhbmQgZG91YmxlIHRhcCB0
aGUgdGFiIGtleSB0byBnZXQgdG8gdGhlIHRvcAo+Pj4gcGFuZWwsIHRoZW4gc2hpZnQgdGFiIHBh
c3QgdGhlIHRvZ2dsZSBidXR0b24gYW5kIHByZXNzIHRoZSBlbnRlciBrZXkgdG8KPj4+IGJyaW5n
IHVwIHRoZSBtZW51IHRoYXQgaGFzIHlvdXIgd2lmaSBjb25uZWN0aW9ucy4gVGhlcmUncyBub3Qg
bXVjaCBtb3JlIHRvCj4+PiB0ZWxsIG90aGVyIHRoYW4gaXQncyBhIGdyZWF0IE9TLCBub3QganVz
dCBmb3IgbGVhcm5pbmcsIGJ1dCBmb3IgZGFpbHkgdXNlLAo+Pj4gYW5kIG9uZSBvZiB0aGUgY29t
cHV0ZXJzIGluIHRoZSBob3VzZSB0aGF0IGlzIHJ1bm5pbmcgaXQgaXMgZXZlbiBiZWluZyB1c2Vk
Cj4+PiBmb3IgZ2FtaW5nIGFuZCBsaXZlIHN0cmVhbWluZy4gSWYgeW91IG5lZWQgdG8gZGlnIGRl
ZXBlciBpbnRvIHRoZSBndXRzIG9mCj4+PiB0aGUgc3lzdGVtLCBpdCBhbGxvd3MgZm9yIHRoYXQg
YXMgd2VsbC4gSSBmb3Igb25lIGhpZ2hseSByZWNvbW1lbmQgdGhlCj4+PiBGZWRvcmEgTUFURSBz
cGluLgo+Pj4+IH5LeWxlCj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

