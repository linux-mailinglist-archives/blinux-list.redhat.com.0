Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E5A45AC01
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 20:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637694429;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eKOQPClSgc0lBEP8Zab4tYSsm4gGtMXR4sIhH97lxIw=;
	b=X10kbjGbeT1+yNgU+c4RDNcgLyBgdYoATXIrUtk8gVZqTwDbmlZHeXv9UJpcvvLWNyJp2y
	x3jspqkJQLuybQLSKUvlM77L+CTLD+5cv9Bs+K70TWGs61m9Wwq1PD53bpJuElUcOucoFd
	rdEwO0GEAO1uhav8A1tP1IjtJXE0t0M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-202-Hlzohh8yNZizptyAgV7W_g-1; Tue, 23 Nov 2021 14:07:06 -0500
X-MC-Unique: Hlzohh8yNZizptyAgV7W_g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C3AC4236B;
	Tue, 23 Nov 2021 19:07:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E763794A5;
	Tue, 23 Nov 2021 19:07:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2CFD64A703;
	Tue, 23 Nov 2021 19:07:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANJ6wMA001933 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 14:06:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 08EE92026D67; Tue, 23 Nov 2021 19:06:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 045992026D69
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 19:06:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D5E2811E7F
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 19:06:55 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-229-3Kse5p7CPiKr1wrL9ImktQ-1; Tue, 23 Nov 2021 14:06:51 -0500
X-MC-Unique: 3Kse5p7CPiKr1wrL9ImktQ-1
Received: by mail-qk1-f180.google.com with SMTP id g28so162837qkk.9
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 11:06:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=khwyPAmuwEcj9mhD4rqUyKt3EhMufREWCbBzcmC5vJs=;
	b=kbiV7Pu4KOsHiMrSGc+pwn72z6L/H7t3e75F4BsU2E6GMeCa8rbx8W4/ku2CyJSBo2
	jzbYjc6Mil6szwz4sQby96xs3TmN6feNd8pDS0CyRo8DCwaqZjtTb01qN3BXmQwITsfs
	w1XdtjmmElRRsqAq3dMzQSYGIuIBJzrp9NDHher6xktADeTV742d5jh6b58Kj5taZsEu
	mdU96d+0CSgICE3Hi1lVGdbbF8A/HmR22dY2Ue6KRFSUli8SDE9NeYRJRRcHor+F48er
	jqbNVVaGJ8bPouKeorGz2p8ttu78E+iiRtXqZUYdAM1rUK0Ssw/ItB4J9Nm1riy6QVWT
	xsXg==
X-Gm-Message-State: AOAM530GTNyTpB3Y+lIkCMBtVEMLg9WJSI9xJH1aNOk0Ax1vpsUb3TP/
	pkINNwNqmJ7+sGrvdsjbPUim7MtC1RrXE25+
X-Google-Smtp-Source: ABdhPJwSqkzlERx2KoZwrJojfA6A1jzJIbIJB4OLmfK7Rm5Sx4YwCv7QFAx8d+8LdPsmCMhLakdvSQ==
X-Received: by 2002:a05:620a:1335:: with SMTP id
	p21mr7004265qkj.182.1637694410641; 
	Tue, 23 Nov 2021 11:06:50 -0800 (PST)
Received: from smtpclient.apple ([2601:152:4000:330:cc46:a484:a2fd:7aa5])
	by smtp.gmail.com with ESMTPSA id
	a16sm6592593qta.94.2021.11.23.11.06.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 11:06:50 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: looking for two gui accessible applications ClipGrab
Date: Tue, 23 Nov 2021 14:06:48 -0500
Message-Id: <E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
References: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
In-Reply-To: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ANJ6wMA001933
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIFJvYiwKSSB0cmllZCB5b3VyIHN1Z2dlc3Rpb24gYW5kIHNlbGVjdGVkIHRoZSBleGVj
dXRlIGNoZWNrYm94LCBidXQgZXZlbiBhZnRlciBkb2luZyB0aGF0IGl0IGRpZCBub3QgcnVuLiBJ
IHRoaW5rIGl0IGlzIGJlY2F1c2UgSSBkbyBub3QgaGF2ZSBzbmFwcGVkIGluc3RhbGxlZCBvbiBt
eSBTbGludCBhcyBEaWRpZXIgc3VnZ2VzdGVkLgpDaGVlcnMsCklicmFoaW0KClNlbnQgZnJvbSBt
eSBpUGhvbmUKCj4gT24gTm92IDIzLCAyMDIxLCBhdCAxMjo0NyBQTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4g
77u/SGksCj4gCj4gWW91IG5lZWQgdG8gZ2l2ZSBpdCBleGVjdXRlIHBlcm1pc3Npb24uCj4gCj4g
cHJlc3MgYWx0IHBsdXMgZW50ZXIKPiAKPiBjaG9vc2UgdGhlIHBlcm1pc3Npb25zIHRhYgo+IAo+
IGNoZWNrIHRoZSBleGVjdXRlIGNoZWNrYm94Lgo+IAo+IAo+IFRoYW5rcywKPiAKPiBSb2IKPiAK
Pj4gT24gMTEvMjMvMjEgMTE6MzEgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+IHRoYW5rcyBhIG1pbGxpb24gZm9yIHN1Z2dlc3RpbmcgdGhpcyBhcHBsaWNh
dGlvbi4gRnJvbSB0aGUgZGVzY3JpcHRpb24sIHRoaXMgYXBwbGljYXRpb24gc291bmRzIHNpbWls
YXIgdG8gUG9udGUncyBNZWRpYSBkb3dubG9hZGVyLgo+PiAKPj4gVW5mb3J0dW5hdGVseSwgSSBj
b3VsZCBub3QgcnVuIHRoaXMgZXhlY3V0YWJsZSBpbWFnZSBvbiBteSBzbGludCBkZXNrdG9wLiBF
dmVyeXRpbWUgSSB0cnkgdG8gb3BlbiBpdCwgSSBnZXQgYSBtZXNzYWdlIHRoYXQgc2F5cyB0aGVy
ZSBpcyBubyBhcHBsaWNhdGlvbiBpbnN0YWxsZWQgdG8gb3BlbiBleGVjdXRhYmxlIGZpbGVzLCBv
ciBzdWNoIHRoaW5nLiBJdCBnaXZlcyBtZSB0aGUgb3B0aW9uIHRvIHNlYXJjaCBmb3Igb25lIHdp
dGggeWVzIG9yIG5vLCBidXQgdGhlIGRlZmF1bHQgY2hvaWNlIGlzIG5vLgo+PiAKPj4gU2luY2Ug
SSBhbSBhIGJlZ2lubmVyLCBJIGRvIG5vdCB1bmRlcnN0YW5kIHRoaXMgbWVzc2FnZS4gSSBoaXQg
ZW50ZXIgb24geWVzLCBidXQgbm90aGluZyBoYXBwZW5lZC4KPj4gCj4+IEhvb3BlZnVsbHkgc29t
ZW9uZSB3aG8gaGFzIGV4cGVyaWVuY2Ugd2l0aCBvcGVuaW5nIHN1Y2ggZmlsZXMgd291bGQgaGVs
cCBtZSBmaWd1cmUgaXQgb3V0Lgo+PiAKPj4gQ2hlZXJzLAo+PiAKPj4gSWJyYWhpbQo+PiAKPj4+
IE9uIDExLzIyLzIxIDE6NDUgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+PiBJIHVzZSBDbGlwR3JhYiBvbiBteSBNYWMgYW5kIFdpbmRvd3MuCj4+PiAKPj4+
IFNvIEkgY2hlY2tlZCBhbmQgaXQgaXMgb24gTGludXggYXMgd2VsbC4KPj4+IAo+Pj4gd3d3LmNs
aXBncmFiLm9yZwo+Pj4gCj4+PiBJdHMgYSBhcHAgaW1hZ2UsIG5vIGluc3RhbGxhdGlvbiBuZWVk
ZWQuCj4+PiAKPj4+IAo+Pj4gVXNlIHRoZSBmbGF0IHJldmlldyB0byBjbGljayB0aGUgZG93bmxv
YWQgdGFiLgo+Pj4gCj4+PiBwYXN0ZSB0aGUgeW91dHViZSBsaW5rIGluIHRoZSBlZGl0IGZpZWxk
Lgo+Pj4gCj4+PiB0YWIgdG8gdGhlIGNvbWJvIGJveCB0byBjaG9vc2Ugb3JpZ29uYWwsIG9yIG1w
MyBhdWRpbyAuCj4+PiAKPj4+IHByZXNzaW5nIHRoZSBkb3duIGFycm93IGluIHRoaXMgY29tYm8g
Ym94IGhhZCBubyBzcGVlY2gsIHNvIGFmdGVyIHByZXNzaW5nIGRvd24gYXJyb3csIHByZXNzIHRh
YiwgdGhlbiBzaGlmdCB0YWIgdG8gaGF2ZSB0aGUgc2VsZWN0aW9uIHNwb2tlbi4KPj4+IAo+Pj4g
RG8gdGhlIHNhbWUgZm9yIHRoZSBxdWFsaXR5IGNvbWJvIGJveC4KPj4+IAo+Pj4gdGhlbiB0YWIg
dG8gdGhlIGdyYWIgdGhpcyBjbGlwIGJ1dHRvbiBhbmQgcHJlc3MgdGhlIHNwYWNlIGJhci4KPj4+
IAo+Pj4gCj4+PiBJIGhvcGUgdGhpcyBoZWxwcy4KPj4+IAo+Pj4gVGhhbmtzLAo+Pj4gCj4+PiBS
b2IKPj4+IAo+Pj4gT24gMTEvMjIvMjEgMTE6NTkgQU0sIFJvYmVydCBDb2xlIHdyb3RlOgo+Pj4+
IEhpLAo+Pj4+IAo+Pj4+IEkgZG9udCBrbm93IG9mIGFueSBndWkgcHJvZ3JhbXMsCj4+Pj4gCj4+
Pj4gYnV0IHlvdSBjYW4gdHJ5Cj4+Pj4gCj4+Pj4gd3d3Lm1wMy1ub3cuY29tCj4+Pj4gCj4+Pj4g
Cj4+Pj4gVGhhbmtzLAo+Pj4+IAo+Pj4+IFJvYgo+Pj4+IAo+Pj4+IAo+Pj4+IE9uIDExLzIyLzIx
IDEwOjUwIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+
PiBIZWxsbyBmcmllbmRzLAo+Pj4+PiAKPj4+Pj4gSSBhbSB3b25kZXJpbmcgaWYgdGhlcmUgYXJl
IGdvb2QgYXBwbGljYXRpb25zIGZvciBkb3dubG9hZGluZyBmcm9tIHlvdXR1YmUgdGhhdCB3b3Jr
cyB3ZWxsIHdpdGggbGludXghIEkgYW0gbG9va2luZyBmb3Igc29tZXRoaW5nIHNpbWlsYXIgdG8g
UG9udGUncyBtZWRpYSBkb3dubG9hZGVyIHdoaWNoIHdvcmtzIHdlbGwgd2l0aCB3aW5kb3dzIHNj
cmVlbiByZWFkZXJzLiBJcyB0aGVyZSBzdWNoIGFuIGFwcD8KPj4+Pj4gCj4+Pj4+IFRoZSBzZWNv
bmQgYXBwbGljYXRpb24gSSBhbSBob3BpbmcgdG8gZmluZCBpcyBhIGdvb2Qgd2VhdGhlciBhcHAu
IEkgdHJpZWQgdG8gdGhlIHdlYXRoZXIgb24gdGhlIHRlcm1pbmFsIGFuZCBkaWQgbm90IGxpa2Ug
aXQgYXQgYWxsLiBTbywgSSBhbSBob3BpbmcgdG8gZmluZCBhIGJldHRlciBhbHRlcm5hdGl2ZSB0
aGF0IHdvcmtzIG9uIHRoZSBndWkuCj4+Pj4+IAo+Pj4+PiBDaGVlcnMsCj4+Pj4+IAo+Pj4+PiBJ
YnJhaGltCj4+Pj4+IAo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+IAo+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAKPj4gCj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

