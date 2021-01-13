Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1F2882F52BA
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 19:53:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610564023;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MjeR7VkLm1z0fEesiolsXssysUn500yH7Sk8exQpT7s=;
	b=IUcNF8NwzhTn6A3u7gWOxvIfNLNFgCHKh9W7qxxoe2TG0goIBHjMfbjg6QWIkDn/r4MMyD
	XIAlQ4uXzOGTu+nBvXJ5pjFDaxGA1nE0aJWVhvQBo0pCP5Ny11wmhYBCJABQCatBum866U
	JpKfaq3/LuOEc4TFoc3n2t3LvyQNKiQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-OwcZsgIPMhGrh4x6R2s9qg-1; Wed, 13 Jan 2021 13:53:40 -0500
X-MC-Unique: OwcZsgIPMhGrh4x6R2s9qg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EFC29107ACFA;
	Wed, 13 Jan 2021 18:53:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6641E5F708;
	Wed, 13 Jan 2021 18:53:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 553761809C9F;
	Wed, 13 Jan 2021 18:53:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10DIrLvM014654 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 13:53:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D74A02166B2A; Wed, 13 Jan 2021 18:53:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1FF82166B2C
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 18:53:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CEC02800140
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 18:53:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-382-fQ3cFXTaN62tUmGhpNnSnA-1; Wed, 13 Jan 2021 13:53:17 -0500
X-MC-Unique: fQ3cFXTaN62tUmGhpNnSnA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DGGmY2SDSzJWP
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 13:53:17 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DGGmY1qSqzcbc; Wed, 13 Jan 2021 13:53:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DGGmY1YsqzcbV
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 13:53:17 -0500 (EST)
Date: Wed, 13 Jan 2021 13:53:17 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Fwd: Does anyone on here read code in braille?
In-Reply-To: <007b01d6e9ce$0a27e5d0$1e77b170$@yahoo.com>
Message-ID: <alpine.NEB.2.23.451.2101131351380.25393@panix1.panix.com>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>
	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
	<alpine.DEB.2.22.394.2101130842170.2197@precision-M2800>
	<007b01d6e9ce$0a27e5d0$1e77b170$@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10DIrLvM014654
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SWYgeW91J3JlIGRvaW5nIGl0IGZvciBjb2RpbmcgY29uY2VudHJhdGUgb24gdGhlIGNvbXB1dGVy
IGJyYWlsbGUgYW5kIApsZWF2ZSBjb250cmFjdGVkIGJyYWlsbGUgYWxvbmUuICBUaGUgcmVhc29u
IGZvciB0aGlzIGlzIHRoYXQgeW91IGFzIGEgbmV3IApzdHVkZW50IHdpbGwgZ2V0IHRoZSB0d28g
Y29kZXMgbWl4ZWQgdXAgc2luY2UgYm90aCB1c2Ugc2ltaWxhciBzeW1ib2xzIGZvciAKZGlmZmVy
ZW50IHB1cnBvc2VzLgoKCgpPbiBXZWQsIDEzIEphbiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBJJ20gc3RpbGwgbGVhcm5pbmcgYnJhaWxsZSBqdXN0
IGZvciB0aGlzIHB1cnBvc2UuICBJIGhhdmUgYW4gb2xkIFBhYyBNYXRlIDQwIGNlbGwgLgo+Cj4g
QXMgSSdtIHN0aWxsIHdvcmtpbmcgb24gZ3JhZGUgMSBVUywgY2FuIGFueW9uZSBzdWdnZXN0cyB3
aGF0IG91dHB1dCBmb3JtYXQgd29ya3MgYmV0dGVyPyAgSSBhc3N1bWUgImNvbXB1dGVyIGJyYWls
bGUiIGJ1dCBJIGFtIHdvbmRlcmluZyBpZiBjb250cmFjdGVkIGJyYWlsbGUgd291bGQgaGVscCB3
aXRoIHRoZSBsb25nZXIgbGluZXMgb2YgY29kZS4uLiAgQW55IHRpcHMgb24gaG93IHRvIGRldmVs
b3AgYmV0dGVyIGJyYWlsbGUgc2tpbGxzIHdvdWxkIGJlIGFwcHJlY2lhdGVkIHRvbyBhcyBJJ20g
c2VsZi10ZWFjaGluZy4KPgo+IAlEYW4KPgo+Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0K
PiBGcm9tOiBibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20gPGJsaW51eC1saXN0LWJvdW5j
ZXNAcmVkaGF0LmNvbT4gT24gQmVoYWxmIE9mIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24KPiBTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgMTMsIDIwMjEgOTo0NSBBTQo+IFRvOiBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
Pgo+IFN1YmplY3Q6IFJlOiBGd2Q6IERvZXMgYW55b25lIG9uIGhlcmUgcmVhZCBjb2RlIGluIGJy
YWlsbGU/Cj4KPiBJIHVzZSBicmFpbGxlIGV4Y2x1c2l2ZWx5IChvciB0cnkgdG8gYW55d2F5KSBv
biBsaW51eCBhbmQgd2luZG93cy4gIEkgdXNlIGVpdGhlciBhbiA0MCBvciA4MCBjZWxsIG9uZSBs
aW5lIGRpc3BsYXkgZGVwZW5kaW5nIG9uIGRlc2sgc3BhY2UuICBZZXMgdGhleSBhcmUgZXhwZW5z
aXZlIGJ1dCBmb3IgY29kZSBJIGZpbmQgdGhlbSBpbmRpc3BlbnNpYmxlLiAgRXNwZWNpYWxseSBp
ZiB5b3UgYXJlIHdvcmtpbmcgd2l0aCBjb2RlIHRoYXQgdXNlcyBsb3RzIG9mIHNob3J0IG5hbWVz
Lgo+Cj4gVG9tCj4KPgo+IE9uIFdlZCwgMTMgSmFuIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4KPj4KPj4gQXNobGV5Cj4+Cj4+IEJlZ2luIGZvcndh
cmRlZCBtZXNzYWdlOgo+Pgo+Pj4gRnJvbTogQXNobGV5IEJyZWdlciA8YWJyZWdlckBpdnl0ZWNo
LmVkdT4KPj4+IERhdGU6IEphbnVhcnkgMTMsIDIwMjEgYXQgMTI6MzU6MTkgQU0gQ1NUCj4+PiBU
bzogQXNobGV5IEJyZWdlciA8YXNoYnJlZ2VyQHlhaG9vLmNvbT4KPj4+IFN1YmplY3Q6IEZ3ZDog
RG9lcyBhbnlvbmUgb24gaGVyZSByZWFkIGNvZGUgaW4gYnJhaWxsZT8KPj4+IAo+Pj4g77u/Cj4+
PiAKPj4+IEFzaGxleQo+Pj4gCj4+PiBCZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKPj4+IAo+Pj4+
IEZyb206IEFzaGxleSBCcmVnZXIgPGFicmVnZXJAaXZ5dGVjaC5lZHU+Cj4+Pj4gRGF0ZTogSmFu
dWFyeSAxMywgMjAyMSBhdCAxMjoyNToxMSBBTSBDU1QKPj4+PiBUbzogTGludXggPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+Cj4+Pj4gU3ViamVjdDogRG9lcyBhbnlvbmUgb24gaGVyZSByZWFkIGNv
ZGUgaW4gYnJhaWxsZT8KPj4+PiAKPj4+PiDvu79IaSBndXlzIEkgd2FzIHdvbmRlcmluZyBpZiBh
bnlvbmUgb24gaGVyZSByZWFkcyBjb2RlIGluIGJyYWlsbGU/IElmIHNvIGRvIHlvdSByZWFkIGl0
IGxpbmUgYnkgbGluZSBvciBhcmUgeW91IGFibGUgdG8gcmVhZCBtdWx0aXBsZSBsaW5lcyBhdCBv
bmNlPyBBbmQgd2hhdCBkaXNwbGF5cyBkbyB5b3UgdXNlIGZvciByZWFkaW5nIGNvZGU/Cj4+Pj4g
Cj4+Pj4gCj4+Pj4gQXNobGV5Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

