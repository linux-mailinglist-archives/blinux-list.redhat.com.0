Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4601545ACE8
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 20:56:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637697391;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3bAR0wEyiyGn8wwRGFdZJPybeOifGA+WNY5g69hLMDQ=;
	b=iS/rjDZuO1FAXJVed4pP5XI0U3whX7iVFAqVyRy39qapY5U/PthJ7HLXS1BG5+KonkJE8X
	lDq8BSfnyxSlqnU7CJGB5yCWhC1NPaSJ7g3bJ3EpuTNZpyZAS+0YwglcWv/V95P4S9o2ge
	XX7s6cezw7RO/t0A9ZE0aERlTrVuKi8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-43-8hvjcFgyP-mYJJirN2N0yg-1; Tue, 23 Nov 2021 14:56:27 -0500
X-MC-Unique: 8hvjcFgyP-mYJJirN2N0yg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9DE468B5E60;
	Tue, 23 Nov 2021 19:56:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 294EE5F4E0;
	Tue, 23 Nov 2021 19:56:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EDEB24E9F5;
	Tue, 23 Nov 2021 19:56:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANJu5j1005567 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 14:56:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4A81640CFD0D; Tue, 23 Nov 2021 19:56:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44FE740CFD04
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 19:56:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 256AC8001EA
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 19:56:05 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-137-UZuin-93OCyXLJfV49LqDw-1; Tue, 23 Nov 2021 14:56:03 -0500
X-MC-Unique: UZuin-93OCyXLJfV49LqDw-1
Received: by mail-qt1-f177.google.com with SMTP id o17so423598qtk.1
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 11:56:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=Dn2VlrvmkvmtcKopBUiGE/hrnYsnt3GrAxJ8OJjQvq8=;
	b=BRFkwugej9UzRmuDFpgA08v1wiELNnCTvLrNzZUEi1RZIJVhcO/vCoFh1gwC8xz20H
	4ZMssA90trfDA+hoN9rHcC66UWHV4sXFQFetOuKeY0V0dEUFiwzlRrCJMWN5dS0NT7zl
	BOmG5xqg32QbC92l4JoBQYaKNnud6yxRKwF0LVqCDuvNF/qkltFn9QanL/OYf9I6z5eW
	dOVVkGTcW7EaJEn/qZjdBoZD3s9to0hXRrfkvFwOn62qAhjtltrzGBxFra/Ygc4OFGGT
	aY62b+TL0mwIQuzIOJjsg6YSZLdnRGbqZZa0BHRUQVqUbfdVaZjL/l5tO+nRXZNhX/8g
	g2RA==
X-Gm-Message-State: AOAM533Un43ly5uoIPBGPxhpBQr6+1DrVYQZ04Cnsh/XmkUF7C7s1g+E
	PcURSj5DZvP3A59u8ExHF1ZOtsxhqKSZJcqiJzI6OZ+D
X-Google-Smtp-Source: ABdhPJwe0V0x3SxoW1J6GBDMsqp2O7vccdE2z4vUzBxfsaNCQ5mIv90+y9H2wdpXP1myv9s7s6I50HEDIUx5qlrSw+c=
X-Received: by 2002:a05:622a:c8:: with SMTP id p8mr22120qtw.52.1637697363046; 
	Tue, 23 Nov 2021 11:56:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 23 Nov 2021 11:56:02
	-0800 (PST)
In-Reply-To: <E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
References: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
	<E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
Date: Tue, 23 Nov 2021 19:56:02 +0000
Message-ID: <CAO2sX32rX+pa=rWwkCuH2gwUuY2NcrjA3UNZHR5HMQvqhDE+ig@mail.gmail.com>
Subject: Re: looking for two gui accessible applications ClipGrab
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ANJu5j1005567
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXMgSSB1bmRlcnN0YW5kIGl0LCBzbmFwdCBpcyBvbmUgb2YgdGhvc2UgVWJ1bnR1LW9ubHkgdGhp
bmdzIHRoYXQKY29udHJpYnV0ZSB0byBzb21lIGxvbmcgdGltZSBMaW51eCB1c2VycyBkaXNwYXJh
Z2luZyBVYnVudHUgYXMgInRvbwptdWNoIGxpa2UgV2luZG93cyIuCgpTYWRseSwgYmVzdCBJIGNh
biB0ZWxsLCB0aGUgb25seSBvcHRpb25zIHRoZSBjbGlwZ3JhYiB3ZWJzaXRlIHNlZW1zIHRvCm9m
ZmVyIGlzIGEgQmluYXJ5IHRoYXQgcmVxdWlyZXMgYSA2NC1iaXQgVWJ1bnR1IHN5c3RlbSBvciBj
b21waWxpbmcKZnJvbSBzb3VyY2UuLi4gYW5kIGlmIHRoZXJlJ3MgYSBwYWNrYWdlIGF2YWlsYWJs
ZSBmb3IgRGViaWFuLCBpdCBtdXN0CmJlIGluIHRoZSBjb250cmliIG9yIG5vbi1mcmVlIHJlcG9z
aXRvcmllcyh3aGljaCBJIGRvbid0IGhhdmUgZW5hYmxlZCkKc2luY2UgSSBjYW4ndCBmaW5kIGl0
IGluIEFwdGl0dWRlLgoKT24gMTEvMjMvMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IFRoYW5rcyBSb2IsCj4gSSB0
cmllZCB5b3VyIHN1Z2dlc3Rpb24gYW5kIHNlbGVjdGVkIHRoZSBleGVjdXRlIGNoZWNrYm94LCBi
dXQgZXZlbiBhZnRlcgo+IGRvaW5nIHRoYXQgaXQgZGlkIG5vdCBydW4uIEkgdGhpbmsgaXQgaXMg
YmVjYXVzZSBJIGRvIG5vdCBoYXZlIHNuYXBwZWQKPiBpbnN0YWxsZWQgb24gbXkgU2xpbnQgYXMg
RGlkaWVyIHN1Z2dlc3RlZC4KPiBDaGVlcnMsCj4gSWJyYWhpbQo+Cj4gU2VudCBmcm9tIG15IGlQ
aG9uZQo+Cj4+IE9uIE5vdiAyMywgMjAyMSwgYXQgMTI6NDcgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24KPj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+
PiDvu79IaSwKPj4KPj4gWW91IG5lZWQgdG8gZ2l2ZSBpdCBleGVjdXRlIHBlcm1pc3Npb24uCj4+
Cj4+IHByZXNzIGFsdCBwbHVzIGVudGVyCj4+Cj4+IGNob29zZSB0aGUgcGVybWlzc2lvbnMgdGFi
Cj4+Cj4+IGNoZWNrIHRoZSBleGVjdXRlIGNoZWNrYm94Lgo+Pgo+Pgo+PiBUaGFua3MsCj4+Cj4+
IFJvYgo+Pgo+Pj4gT24gMTEvMjMvMjEgMTE6MzEgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+PiB0aGFua3MgYSBtaWxsaW9uIGZvciBzdWdnZXN0aW5nIHRo
aXMgYXBwbGljYXRpb24uIEZyb20gdGhlIGRlc2NyaXB0aW9uLAo+Pj4gdGhpcyBhcHBsaWNhdGlv
biBzb3VuZHMgc2ltaWxhciB0byBQb250ZSdzIE1lZGlhIGRvd25sb2FkZXIuCj4+Pgo+Pj4gVW5m
b3J0dW5hdGVseSwgSSBjb3VsZCBub3QgcnVuIHRoaXMgZXhlY3V0YWJsZSBpbWFnZSBvbiBteSBz
bGludCBkZXNrdG9wLgo+Pj4gRXZlcnl0aW1lIEkgdHJ5IHRvIG9wZW4gaXQsIEkgZ2V0IGEgbWVz
c2FnZSB0aGF0IHNheXMgdGhlcmUgaXMgbm8KPj4+IGFwcGxpY2F0aW9uIGluc3RhbGxlZCB0byBv
cGVuIGV4ZWN1dGFibGUgZmlsZXMsIG9yIHN1Y2ggdGhpbmcuIEl0IGdpdmVzCj4+PiBtZSB0aGUg
b3B0aW9uIHRvIHNlYXJjaCBmb3Igb25lIHdpdGggeWVzIG9yIG5vLCBidXQgdGhlIGRlZmF1bHQg
Y2hvaWNlIGlzCj4+PiBuby4KPj4+Cj4+PiBTaW5jZSBJIGFtIGEgYmVnaW5uZXIsIEkgZG8gbm90
IHVuZGVyc3RhbmQgdGhpcyBtZXNzYWdlLiBJIGhpdCBlbnRlciBvbgo+Pj4geWVzLCBidXQgbm90
aGluZyBoYXBwZW5lZC4KPj4+Cj4+PiBIb29wZWZ1bGx5IHNvbWVvbmUgd2hvIGhhcyBleHBlcmll
bmNlIHdpdGggb3BlbmluZyBzdWNoIGZpbGVzIHdvdWxkIGhlbHAKPj4+IG1lIGZpZ3VyZSBpdCBv
dXQuCj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4KPj4+IElicmFoaW0KPj4+Cj4+Pj4gT24gMTEvMjIvMjEg
MTo0NSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBJ
IHVzZSBDbGlwR3JhYiBvbiBteSBNYWMgYW5kIFdpbmRvd3MuCj4+Pj4KPj4+PiBTbyBJIGNoZWNr
ZWQgYW5kIGl0IGlzIG9uIExpbnV4IGFzIHdlbGwuCj4+Pj4KPj4+PiB3d3cuY2xpcGdyYWIub3Jn
Cj4+Pj4KPj4+PiBJdHMgYSBhcHAgaW1hZ2UsIG5vIGluc3RhbGxhdGlvbiBuZWVkZWQuCj4+Pj4K
Pj4+Pgo+Pj4+IFVzZSB0aGUgZmxhdCByZXZpZXcgdG8gY2xpY2sgdGhlIGRvd25sb2FkIHRhYi4K
Pj4+Pgo+Pj4+IHBhc3RlIHRoZSB5b3V0dWJlIGxpbmsgaW4gdGhlIGVkaXQgZmllbGQuCj4+Pj4K
Pj4+PiB0YWIgdG8gdGhlIGNvbWJvIGJveCB0byBjaG9vc2Ugb3JpZ29uYWwsIG9yIG1wMyBhdWRp
byAuCj4+Pj4KPj4+PiBwcmVzc2luZyB0aGUgZG93biBhcnJvdyBpbiB0aGlzIGNvbWJvIGJveCBo
YWQgbm8gc3BlZWNoLCBzbyBhZnRlcgo+Pj4+IHByZXNzaW5nIGRvd24gYXJyb3csIHByZXNzIHRh
YiwgdGhlbiBzaGlmdCB0YWIgdG8gaGF2ZSB0aGUgc2VsZWN0aW9uCj4+Pj4gc3Bva2VuLgo+Pj4+
Cj4+Pj4gRG8gdGhlIHNhbWUgZm9yIHRoZSBxdWFsaXR5IGNvbWJvIGJveC4KPj4+Pgo+Pj4+IHRo
ZW4gdGFiIHRvIHRoZSBncmFiIHRoaXMgY2xpcCBidXR0b24gYW5kIHByZXNzIHRoZSBzcGFjZSBi
YXIuCj4+Pj4KPj4+Pgo+Pj4+IEkgaG9wZSB0aGlzIGhlbHBzLgo+Pj4+Cj4+Pj4gVGhhbmtzLAo+
Pj4+Cj4+Pj4gUm9iCj4+Pj4KPj4+PiBPbiAxMS8yMi8yMSAxMTo1OSBBTSwgUm9iZXJ0IENvbGUg
d3JvdGU6Cj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBJIGRvbnQga25vdyBvZiBhbnkgZ3VpIHByb2dy
YW1zLAo+Pj4+Pgo+Pj4+PiBidXQgeW91IGNhbiB0cnkKPj4+Pj4KPj4+Pj4gd3d3Lm1wMy1ub3cu
Y29tCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoYW5rcywKPj4+Pj4KPj4+Pj4gUm9iCj4+Pj4+Cj4+Pj4+
Cj4+Pj4+IE9uIDExLzIyLzIxIDEwOjUwIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+Pj4gSGVsbG8gZnJpZW5kcywKPj4+Pj4+Cj4+Pj4+PiBJIGFtIHdv
bmRlcmluZyBpZiB0aGVyZSBhcmUgZ29vZCBhcHBsaWNhdGlvbnMgZm9yIGRvd25sb2FkaW5nIGZy
b20KPj4+Pj4+IHlvdXR1YmUgdGhhdCB3b3JrcyB3ZWxsIHdpdGggbGludXghIEkgYW0gbG9va2lu
ZyBmb3Igc29tZXRoaW5nIHNpbWlsYXIKPj4+Pj4+IHRvIFBvbnRlJ3MgbWVkaWEgZG93bmxvYWRl
ciB3aGljaCB3b3JrcyB3ZWxsIHdpdGggd2luZG93cyBzY3JlZW4KPj4+Pj4+IHJlYWRlcnMuIElz
IHRoZXJlIHN1Y2ggYW4gYXBwPwo+Pj4+Pj4KPj4+Pj4+IFRoZSBzZWNvbmQgYXBwbGljYXRpb24g
SSBhbSBob3BpbmcgdG8gZmluZCBpcyBhIGdvb2Qgd2VhdGhlciBhcHAuIEkKPj4+Pj4+IHRyaWVk
IHRvIHRoZSB3ZWF0aGVyIG9uIHRoZSB0ZXJtaW5hbCBhbmQgZGlkIG5vdCBsaWtlIGl0IGF0IGFs
bC4gU28sIEkKPj4+Pj4+IGFtIGhvcGluZyB0byBmaW5kIGEgYmV0dGVyIGFsdGVybmF0aXZlIHRo
YXQgd29ya3Mgb24gdGhlIGd1aS4KPj4+Pj4+Cj4+Pj4+PiBDaGVlcnMsCj4+Pj4+Pgo+Pj4+Pj4g
SWJyYWhpbQo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+Cj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

