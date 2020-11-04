Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F050B2A6631
	for <lists+blinux-list@lfdr.de>; Wed,  4 Nov 2020 15:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604499395;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pFXvWs+s1WUOCYeOduwLTNimj1L7jjS5dcmPZpVjJ+0=;
	b=VCAsYZ6y5RJQdaYGUyqHThUihdr8q0t/JpUp2G9JEClL0+uqUB/srEczaAcmaHlnjDXDAK
	SI0zMnP+ygTYJQTk8Cm25tqhcKBGyhfpFM6zD+Yzq+ooXURpaKDh196ry8RzhlW/LVuMUE
	9l2LbHkhuumFunIz0x8GAcvyNlXNp8Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-V-6bLndSPtKY2-byJ149ZQ-1; Wed, 04 Nov 2020 09:16:32 -0500
X-MC-Unique: V-6bLndSPtKY2-byJ149ZQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BADAC1882FCC;
	Wed,  4 Nov 2020 14:16:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C75BD6266E;
	Wed,  4 Nov 2020 14:16:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4E3C181A870;
	Wed,  4 Nov 2020 14:16:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A4EDlY3011711 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Nov 2020 09:13:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 236281016D7E; Wed,  4 Nov 2020 14:13:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EEC610F8E18
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 14:13:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6254590E428
	for <blinux-list@redhat.com>; Wed,  4 Nov 2020 14:13:42 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-468-VsxYBxgqPdey1SS-Hhy4AQ-1; Wed, 04 Nov 2020 09:13:38 -0500
X-MC-Unique: VsxYBxgqPdey1SS-Hhy4AQ-1
Received: by mail-oi1-f175.google.com with SMTP id c80so10780113oib.2
	for <blinux-list@redhat.com>; Wed, 04 Nov 2020 06:13:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=4ML4Ds3cickdBZIxN8QgYYBwPGaCYI7Y78DYQTjVYnc=;
	b=jn6ecPrWc8IFbDQetVCqBlE3T1pNW97lce3sWNCYlDP3xwIVg9EEvazwN3FkdznjVs
	WADiAq3PM+4JVYyTXC+7OKO6/7vfv6qqhYO2+RkKJYx8fMsv3nEHURZYcx7KJZ0B1TxV
	cnLPTNpXQAaFztRfCgpqqyoSqHlze2Eg/ZNt/NF3eSdUxyA0mtOON4F60x8lv/Rqwasw
	xTETbCNAyoqZmfBJvsf2c8OooKyhGXWObU7qyHHBKPrS2jB2d7zSdO48eZLFGQUMIAy1
	ffUD6A7G/esQD594oJDgnK+PKfeE5HE1MBfRbPLUMsdE1hoX2sJmCyflrd3imBXFZ3YC
	SnhQ==
X-Gm-Message-State: AOAM531HSnHp428/BHBAse9BeEmYGLFq74kHtfhUoB+vyiJ2sPv1P0uJ
	Bgwxg2GKBPRMdG17mtlIaHC3wxHmGP8xZw==
X-Google-Smtp-Source: ABdhPJx6DtbfKE0JaF6JpbSPbeLqY/xlqA4VVAJgd1tN5SgDLNDCZiGsLjHOWOmJztZSIBSEqlN5Ug==
X-Received: by 2002:aca:a8d4:: with SMTP id r203mr2527469oie.3.1604499217251; 
	Wed, 04 Nov 2020 06:13:37 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:919d:7fa5:b267:2231?
	([2601:3c2:8200:9360:919d:7fa5:b267:2231])
	by smtp.gmail.com with ESMTPSA id q23sm501016ota.7.2020.11.04.06.13.35
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Nov 2020 06:13:36 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: arch linux and broadcom
Date: Wed, 4 Nov 2020 08:13:35 -0600
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
	<3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
	<45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
Message-Id: <81F35FE2-70DA-49E6-ADC9-3FBE0ECE0811@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A4EDlY3011711
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93IG1pZ2h0IHRoaXMgYmUgZG9uZT8KCj4gT24gTm92IDQsIDIwMjAsIGF0IDQ6MTEgQU0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+IAo+IHllcyB5b3UgY2FuIGRvIHRoYXQuCj4gCj4gMDQuMTEuMjAyMCAzOjQ2LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/0LjRiNC10YI6Cj4+IEkgaGF2ZSB5
ZXQgYW5vdGhlciBpZGVhLgo+PiBTaW5jZSB0aGlzIG1hY2hpbmUgb24gd2hpY2ggSSB3YW50IHRv
IHB1dCBhcmNoIHJ1bnMgdWJ1bnR1LCBjb3VsZCBJIHVzZSB1YnVudHUgdG8gZmluZCB3aGF0IGhh
cmR3YXJlIGFuZC9vciBkcml2ZXIgSSB3b3VsZCBuZWVkIHdpdGggYXJjaD8KPj4gCj4+PiBPbiBO
b3YgMywgMjAyMCwgYXQgMjo0MiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+PiAKPj4+IHRvIHNlZSwgd2hldGhl
ciB5b3UgbmVlZCBkcml2ZXJzIG9yIG5vdCBpIG5lZWQgdG8gbG9vayBhdCB5b3VyIGxzLXBjaSBv
dXRwdXQuCj4+PiBvciB5b3UgY2FuIHByb3ZpZGUgeW91ciBtb2RlbCBpZiBpdCdzIGEgbGFwdG9w
Lgo+Pj4gCj4+PiAwMy4xMS4yMDIwIDIzOjA0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uINC/0LjRiNC10YI6Cj4+Pj4gSSB3ZW50IHRoZXJlLCBidXQgZmFpbGVkIHRvIHVuZGVy
c3RhbmQgbXVjaC4gIEl0IHdhcyBzdWdnZXN0ZWQgb25lIGNvdWxkIGdvIGdldCBkcml2ZXJzLCBi
dXQgaG93IG1pZ2h0IHRoaXMgYmUgZG9uZSBpZiB0aGUgbWFjaGluZSBjYW5ub3QgZ2V0IG9uIHRo
ZSBuZXQ/Cj4+Pj4gCj4+Pj4+IE9uIE5vdiAzLCAyMDIwLCBhdCAyOjAyIFBNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
Pj4+Pj4gCj4+Pj4+IGhlbGxvIGNhbiB5b3UgcHJvdmlkZSBscy1wY2kgb3V0cHV0Lgo+Pj4+PiBk
aWQgeW91IGxvb2sgb24gdGhlIGFyY2h3aWtpPwo+Pj4+PiAKPj4+Pj4gMDMuMTEuMjAyMCAyMjo1
MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+Pj4+Pj4g
SSBnb3QgYXJjaCBvbiBhIHVzYiBzdGljay4KPj4+Pj4+IEFmdGVyIGJvb3RpbmcgYW5kIHVzaW5n
IGFycm93IGRvd24sIHRoZW4gZW50ZXIsIGFyY2ggY2FtZSB1cCB0YWxraW5nLgo+Pj4+Pj4gQnV0
IGV2ZW4gdGhvdWdoIHRoZXJlIGlzIGFuIGV0aGVybmV0IGNhYmxlLCBJIGNhbm5vdCBnZXQgb24g
dGhlIG5ldC4KPj4+Pj4+IE5ldmVyIGlzIHRoaXMgYSBwcm9ibGVtIHdpdGggdWJ1bnR1IG9yIHBv
cCBvcyBvciB3aXRoIGZlZG9yYS4KPj4+Pj4+IEFueW9uZSBhd2FyZSBvZiBhIHdheSBvZiBnZXR0
aW5nIG9uIHRoZSBuZXQ/Cj4+Pj4+PiBJIGFsc28gaGF2ZSBhIHUgcyBiIHdpcmVsZXNzIHdpZmkg
YWRhcHRvciwgYnV0IHdpdGggYXJjaCwgbm90IHN1cmUgd2hhdCB0byBkby4KPj4+Pj4+IAo+Pj4+
Pj4gCj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+Pj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4+Pj4+IAo+Pj4+PiAtLSAKPj4+Pj4gU2luY2VyZWx5LCBBbGV4YW5kZXIuCj4+
Pj4+IAo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+Pj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+IC0tIAo+Pj4gU2luY2VyZWx5LCBBbGV4YW5kZXIuCj4+PiAKPj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gLS0gCj4gU2luY2VyZWx5LCBBbGV4YW5k
ZXIuCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

