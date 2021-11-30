Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E829464047
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 22:32:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638307973;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uSvrHG9a0HL4f4j+zk5CoSwVnH5GSeIioMh0K5kUhtE=;
	b=DeC0+lqTiUetBRFto26r1gh5MGRFU2o84KDKcFgusy8/n62K1k2paaBQXmFjCZQ8pQZn0A
	u8rBrGcK/5/mAU0mtQhmQS7V8vFBUaBDvMfFg6Fj6+obA3mZVOloF//dz3gmB3xr/wr/kL
	1ufCTsvwAEkndidKVg4oF90hT+CiGfk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-513-3_vSV-R3O6ScF8rnRAAzeQ-1; Tue, 30 Nov 2021 16:32:51 -0500
X-MC-Unique: 3_vSV-R3O6ScF8rnRAAzeQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 99B3C3E74C;
	Tue, 30 Nov 2021 21:32:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85C712B178;
	Tue, 30 Nov 2021 21:32:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4CAF1809C89;
	Tue, 30 Nov 2021 21:32:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AULWgdY002939 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 16:32:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A9A28401E3C; Tue, 30 Nov 2021 21:32:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5B7F401E32
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 21:32:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C574802802
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 21:32:42 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-542-0ixAfW8uPFq465TH--2i9w-1;
	Tue, 30 Nov 2021 16:32:40 -0500
X-MC-Unique: 0ixAfW8uPFq465TH--2i9w-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7DDB6A1CEF
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:31:57 +0100 (CET)
Message-ID: <94b58976-8ccb-5f1a-760d-28642ae574bf@slint.fr>
Date: Tue, 30 Nov 2021 22:32:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: My qemu error
To: blinux-list@redhat.com
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
	<a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
	<478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
	<cc6c7abc-5b3e-5d19-2b20-e50f9409b703@gmail.com>
	<d4606e82-681f-875a-1f78-ff501d38bfcb@slint.fr>
In-Reply-To: <d4606e82-681f-875a-1f78-ff501d38bfcb@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AULWgdY002939
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBtZWFudCAiVGhpcyBkb2VzIG5vdCB0ZWxsLi4uIgoKTGUgMzAvMTEvMjAyMSDDoCAyMjoxMiwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhvIEJyYW5k
dCwKPiAKPiBUaGlzIGRvZXMgdGVsbCBpZiB0aGUgc3VwcG9ydCBmb3IgS1ZNIGlzIHByb3Blcmx5
IGNvbmZpZ3VyZWQgaW4gdGhpcyAKPiBrZXJuZWwuCj4gCj4gdG8gY2hlY2ssIHlvdSBjYW4gZG8g
dGhpczoKPiAKPiBjcCAvcHJvYy9jb25maWcuZ3ogL3RtcAo+IGNkIC90bXAKPiBndW56aXAgY29u
ZmlnLmd6Cj4geW91IHdpbGwgZ2V0IGEgZmlsZSBuYW1lZCBjb25maWcgd2l0aCBjb25maWd1cmF0
aW9uIHNldHRpbmdzIG9mIHRoZSBrZXJuZWwKPiAKPiBZb3UgY2FuIGRvIHRoZSBzYW1lIHdpdGgg
U2xpbnQgYW5kIGNvbXBhcmUuCj4gCj4gQW5kL29yIHVzZSBhIEZlZG9yYSBzdXBwb3J0IGNoYW5u
ZWwuCj4gCj4gQ2hlZXJzLAo+IAo+IERpZGllcgo+IAo+IAo+IExlIDMwLzExLzIwMjEgw6AgMjE6
NDMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gQXMg
SSBzdGF0ZWQsIEknbSBydW5uaW5nIEZlZG9yYSBNYXRlIENvbXBpeiAzNSBhdCB0aGUgbW9tZW50
LCBhbmQKPj4KPj4gJHVuYW1lIC1yCj4+Cj4+IGdpdmVzIG1lIHRoZSBmb2xsb3dpbmcuCj4+Cj4+
IDUuMTUuNS0yMDAuZmMzNS54ODZfNjQKPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+Pgo+PiBCcmFu
ZHQgU3RlZW5rYW1wCj4+Cj4+IFNlbnQgZnJvbSB0aGUgRmVkb3JhIG1hY2hpbmUsIHVzaW5nIFRo
dW5kZXJiaXJkCj4+Cj4+IE9uIDIwMjEvMTEvMzAgMjA6MDMsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBQUyBpbnN0ZWFkIG9mOgo+Pj4gL2Jvb3QvY29uZmln
LWdlbmVyaWMtNS4xNC4xMwo+Pj4gcGxlYXNlIHJlYWQ6Cj4+PiAvYm9vdC9jb25maWctZ2VuZXJp
Yy01LjEzLjEzCj4+Pgo+Pj4gT1QgQm90aCB0aGUgNS4xMyBhbmQgNS4xNCBoYXZlIGJlZW4gZGVj
bGFyZWQgRW5kIG9mIExpZmUsIEkgd2lsbCAKPj4+IHByb3ZpZGUgYQo+Pj4gNS4xNS56IHdoZW4g
SSB3aWxsIHRoaW5rIHRoaXMgYnJhbmNoIGlzIHN0YWJsZSBlbm91Z2guCj4+Pgo+Pj4gRGlkaWVy
Cj4+Pgo+Pj4gTGUgMzAvMTEvMjAyMSDDoCAxODo0OSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4+IEhpIEJyYW5kdCwKPj4+PiBhbnN3ZXJzIGlubGlu
ZQo+Pj4+Cj4+Pj4gTGUgMzAvMTEvMjAyMSDDoCAxMzo1NSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4+PiBxZW11LXN5c3RlbS14ODZfNjQ6IHdhcm5p
bmc6ICctc291bmRodyBoZGEnIGlzIGRlcHJlY2F0ZWQsIHBsZWFzZSAKPj4+Pj4gdXNlICctZGV2
aWNlIGludGVsLWhkYSAtZGV2aWNlIGhkYS1kdXBsZXgnIGluc3RlYWQKPj4+Pj4gYXVkaW86IERl
dmljZSBoZGE6IGF1ZGlvZGV2IGRlZmF1bHQgcGFyYW1ldGVyIGlzIGRlcHJlY2F0ZWQsIHBsZWFz
ZSAKPj4+Pj4gc3BlY2lmeSBhdWRpb2Rldj1wYQo+Pj4+PiBhdWRpbzogRGV2aWNlIGhkYTogYXVk
aW9kZXYgZGVmYXVsdCBwYXJhbWV0ZXIgaXMgZGVwcmVjYXRlZCwgcGxlYXNlIAo+Pj4+PiBzcGVj
aWZ5IGF1ZGlvZGV2PXBhCj4+Pj4+Cj4+Pj4gSW4gdGhlIGNvbW1hbmQgcmVtb3ZlCj4+Pj4gLXNv
dW5kaHcgaGRhCj4+Pj4gd2hpY2ggaXMgcmVkdW5kYW50IHdpdGgKPj4+PiAtZGV2aWNlIGludGVs
LWhkYSAtZGV2aWNlIGhkYS1kdXBsZXgKPj4+PiBhbmQgcHJvYmFseSByZXBjYWNlCj4+Pj4gLS1h
dWRpb2RldiBwYQo+Pj4+IGJ5Ogo+Pj4+IC0tYXVkaW9kZXY9cGFob3dldmVyLCBtYXliZSB0aGlz
IHdob2xlIHN0dWZmIGlzIG5vdCAKPj4+PiBuZWNlc3Nhcnk6LWF1ZGlvZGV2IHBhLGlkPXBhLG91
dC5taXhpbmctZW5naW5lPW9mZixvdXQubGF0ZW5jeT0yMDAwMAo+Pj4+IEkgZG9uJ3QgaGF2ZSBp
dC4KPj4+Pgo+Pj4+IMKgPsKgIGtub3cgaXQgZG9lcyB3b3JrIHVuZGVyIFNsaW50LCBidXQgbm90
IHVuZGVyIEZlZG9yYSwgQXJjaCBvciAKPj4+PiBVYnVudHUuCj4+Pj4KPj4+PiBNYXliZSB0aGUg
a2VybmVsIHlvdSBhcmUgcnVubmluZyBpbiBGZWRvcmEsIEFyY2ggb3IgVWJ1bnR1IGRvZXMgbm90
IAo+Pj4+IGhhdmUgYQo+Pj4+IHByb3BlciBjb25maWd1cmF0aW9uIGZvciBLVk0sIHJlYWQ6Cj4+
Pj4gaHR0cHM6Ly93d3cubGludXgta3ZtLm9yZy9wYWdlL1R1bmluZ19LZXJuZWwKPj4+Pgo+Pj4+
IEluIFNsaW50IHRoZSBrZXJuZWwgY29uZmlndXJhdGlvbiBpcyBmb3VuZCBpbiBvbmUgb2YgdGhl
c2UgZmlsZXM6Cj4+Pj4gL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xNC4xNC54NjQKPj4+PiAvYm9v
dC9jb25maWctZ2VuZXJpYy01LjE0LjEzCj4+Pj4gVGhlc2UgY29tbWFuZHM6Cj4+Pj4gY2F0IC9w
cm9jL2NtZGxpbmUKPj4+PiB1bmFtZSAtcgo+Pj4+IHRlbGwgeW91IHdoaWNoIGtlcm5lbCBpcyBy
dW5uaW5nLCBzbyB5b3Uga25vdyBob3cgaXQgaXMgY29uZmlndXJlZC4KPj4+Pgo+Pj4+IEFsc28s
IHRoZXJlIGNvdWxkIGJlIGFuIGlzc3VlIHdpdGggeW91ciBxZW11IHZlcnNpb24uCj4+Pj4KPj4+
PiBJbiBTbGludCBhdCB0aW1lIG9mIHdyaXRpbmc6Cj4+Pj4gZGFuY2Vbfl0kIHFlbXUtc3lzdGVt
LXg4Nl82NCAtLXZlcnNpb24KPj4+PiBRRU1VIGVtdWxhdG9yIHZlcnNpb24gNi4wLjAKPj4+PiBD
b3B5cmlnaHQgKGMpIDIwMDMtMjAyMSBGYWJyaWNlIEJlbGxhcmQgYW5kIHRoZSBRRU1VIFByb2pl
Y3QgZGV2ZWxvcGVycwo+Pj4+Cj4+Pj4gQ2hlZXJzLAo+Pj4+IERpZGllcgo+Pj4+Cj4+Pj4KPj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

