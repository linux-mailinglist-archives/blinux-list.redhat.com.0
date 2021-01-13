Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 319F42F52DF
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 19:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610564360;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=smjEJvHvjt2h9TlWMzoVvLX11+mIZOfY/yee/30ZJ1w=;
	b=DaHQyxXcpWQHWwgcMurn8sNVZb1c8T1Ve47T/dpstxJhkvgbxuDx4zWn5Sa+6aPg9JuFtA
	02RaVKF76ldbIdEKTZ+QApbqXXHzlAKRNOB09kXPp8vUN6TNlhJ9WeWy3Tm0DgCCqD7WO+
	EGAsrMVMCn/RpfWF7FAbiT9qkKGEbVI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-268-C-6r_AB2NIK76NKhKvtQ_Q-1; Wed, 13 Jan 2021 13:59:18 -0500
X-MC-Unique: C-6r_AB2NIK76NKhKvtQ_Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0EBC51034B20;
	Wed, 13 Jan 2021 18:59:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3B5860BF1;
	Wed, 13 Jan 2021 18:59:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6537F4A7C6;
	Wed, 13 Jan 2021 18:59:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DIvRNc014857 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 13:57:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A5845AE7C9; Wed, 13 Jan 2021 18:57:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A05ADAE7D9
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 18:57:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63BAE805B01
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 18:57:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-215-PJwZ_vnlNjGd0vQNRFdPNQ-1; Wed, 13 Jan 2021 13:57:23 -0500
X-MC-Unique: PJwZ_vnlNjGd0vQNRFdPNQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DGGsH01RCzJnY
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 13:57:22 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DGGsG758Pzcbc; Wed, 13 Jan 2021 13:57:22 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DGGsG73WSzcbV
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 13:57:22 -0500 (EST)
Date: Wed, 13 Jan 2021 13:57:22 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Does anyone on here read code in braille?
In-Reply-To: <108A8E49-CA6F-4343-A117-892A84702025@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2101131355400.25393@panix1.panix.com>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>
	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
	<alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>
	<108A8E49-CA6F-4343-A117-892A84702025@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10DIvRNc014857
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QSBxdWVzdGlvbiBhYm91dCB0aGUgT3JiaXQgYW5kIExpbnV4IHBsZWFzZS4gIFVzaW5nIHlvdXIg
b3JiaXQsIGNhbiB5b3UgCnJ1biB5b3VyIGNvbXB1dGVyIHdpdGggaXQgc3VjaCB0aGF0IHRoZSBj
b21wdXRlciB1bmRlcnN0YW5kcyB5b3VyIG9yYml0IGlzIApib3RoIHRoZSBrZXlib2FyZCBhbmQg
dGhlIHNjcmVlbj8KCgoKT24gV2VkLCAxMyBKYW4gMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSSBoYXZlIGFuIG9yYml0Lgo+IFdoYXQgSSBkbyBpcyBw
dXQgdGV4dCBmaWxlcyBhYm91dCBsaW51eCBpbiB0byB0aGUgb3JiaXQsIGFuZCByZWFkIHRoZW0g
dGhlcmUuCj4KPj4gT24gSmFuIDEzLCAyMDIxLCBhdCAxMDo0NSBBTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IAo+
PiBJIHVzZSBicmFpbGxlIGV4Y2x1c2l2ZWx5IChvciB0cnkgdG8gYW55d2F5KSBvbiBsaW51eCBh
bmQgd2luZG93cy4gIEkgdXNlIGVpdGhlciBhbiA0MCBvciA4MCBjZWxsIG9uZSBsaW5lIGRpc3Bs
YXkgZGVwZW5kaW5nIG9uIGRlc2sgc3BhY2UuICBZZXMgdGhleSBhcmUgZXhwZW5zaXZlIGJ1dCBm
b3IgY29kZSBJIGZpbmQgdGhlbSBpbmRpc3BlbnNpYmxlLiAgRXNwZWNpYWxseSBpZiB5b3UgYXJl
IHdvcmtpbmcgd2l0aCBjb2RlIHRoYXQgdXNlcyBsb3RzIG9mIHNob3J0IG5hbWVzLgo+PiAKPj4g
VG9tCj4+IAo+PiAKPj4gT24gV2VkLCAxMyBKYW4gMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gCj4+PiAKPj4+IAo+Pj4gQXNobGV5Cj4+PiAKPj4+IEJl
Z2luIGZvcndhcmRlZCBtZXNzYWdlOgo+Pj4gCj4+Pj4gRnJvbTogQXNobGV5IEJyZWdlciA8YWJy
ZWdlckBpdnl0ZWNoLmVkdT4KPj4+PiBEYXRlOiBKYW51YXJ5IDEzLCAyMDIxIGF0IDEyOjM1OjE5
IEFNIENTVAo+Pj4+IFRvOiBBc2hsZXkgQnJlZ2VyIDxhc2hicmVnZXJAeWFob28uY29tPgo+Pj4+
IFN1YmplY3Q6IEZ3ZDogRG9lcyBhbnlvbmUgb24gaGVyZSByZWFkIGNvZGUgaW4gYnJhaWxsZT8K
Pj4+PiDvu78KPj4+PiBBc2hsZXkKPj4+PiBCZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKPj4+Pj4g
RnJvbTogQXNobGV5IEJyZWdlciA8YWJyZWdlckBpdnl0ZWNoLmVkdT4KPj4+Pj4gRGF0ZTogSmFu
dWFyeSAxMywgMjAyMSBhdCAxMjoyNToxMSBBTSBDU1QKPj4+Pj4gVG86IExpbnV4IDxibGludXgt
bGlzdEByZWRoYXQuY29tPgo+Pj4+PiBTdWJqZWN0OiBEb2VzIGFueW9uZSBvbiBoZXJlIHJlYWQg
Y29kZSBpbiBicmFpbGxlPwo+Pj4+PiDvu79IaSBndXlzIEkgd2FzIHdvbmRlcmluZyBpZiBhbnlv
bmUgb24gaGVyZSByZWFkcyBjb2RlIGluIGJyYWlsbGU/IElmIHNvIGRvIHlvdSByZWFkIGl0IGxp
bmUgYnkgbGluZSBvciBhcmUgeW91IGFibGUgdG8gcmVhZCBtdWx0aXBsZSBsaW5lcyBhdCBvbmNl
PyBBbmQgd2hhdCBkaXNwbGF5cyBkbyB5b3UgdXNlIGZvciByZWFkaW5nIGNvZGU/Cj4+Pj4+IEFz
aGxleQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

