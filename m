Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AEE983DC69B
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 17:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627745058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pAvizI8tEfeFHcT6IBpubZsNCNQRCKVO/2RF9N2OceM=;
	b=NvZa/QnbRQr1Ky6c39t8XR5cBZbKagfY/dt2S6GnSEKn+WyZP4K6neObSEbtvN/fMOSFmF
	uYAeQwU1mfx15e6AMKOu9DrcotiKLyE/nogw/Ag8fetXqIu9f+OZSvRDxuaJDdHMlBP8NB
	apUP/s5/ANLcehfZEv6AgDgqq6XZmKo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-lVS9npjrNN-GFlItk3hamA-1; Sat, 31 Jul 2021 11:24:17 -0400
X-MC-Unique: lVS9npjrNN-GFlItk3hamA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB529871803;
	Sat, 31 Jul 2021 15:24:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C54CE5D9F0;
	Sat, 31 Jul 2021 15:24:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8E628180B7A2;
	Sat, 31 Jul 2021 15:24:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VFIx2A028441 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 11:18:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5CEC8202E4C7; Sat, 31 Jul 2021 15:18:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 580BD202E4C2
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 15:18:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8346B101A529
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 15:18:56 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-149-iDuum0jQOLmnk9mnSP1mxQ-1; Sat, 31 Jul 2021 11:18:54 -0400
X-MC-Unique: iDuum0jQOLmnk9mnSP1mxQ-1
Received: by mail-qk1-f182.google.com with SMTP id z24so12437866qkz.7
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 08:18:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=8OaP4a0/QPO8RBGqJCiJRLi0C5gFmo1crH435UGMNOI=;
	b=GOpSCLB4DA9LkVbwciu/H1zfq1Q2PCp/e696+/005wjG+BF0c+Gs0iuqtiwPfFZUhq
	KKG1isPmq6nKevdtBoAyRZxe7T6ofMNL777Kkn+dhalMy87+/7+CMBtQ26ifkyMSIjCW
	vRXENQjyODv8XaQ2ReSJH7GUuO+XhIc2Zk1sGdAg7njVob6ckV6wnyJrZ+tweIMRAtDf
	0m45j3PAbKhkoJ5MwwZQ3wPK4f0HfRlNPgL1j31Di/QOelbnrrrps95Q59p3ppXMBzyJ
	7lLeVJGBqfeofjlfNaqELHToelHBUaBS0YyC3v0s3sU+pa4FmjukjUVmeyWo9VgX+OqA
	UOHw==
X-Gm-Message-State: AOAM531z1v4c1hpS3zCT3LdIcCqc6uYRw89fpBjn/wBdncYIEwBK5+VL
	6R4QAaAYpmF565P+zPKGVwDt6tNdi2KCDA==
X-Google-Smtp-Source: ABdhPJzserQMFRvV2PAk+rb6fLAhJ4HBtp7VUn7h9gd5PrClvtSgAlWmnwPgyLKblflNSAAWDKyZXg==
X-Received: by 2002:ae9:e60a:: with SMTP id z10mr7377621qkf.258.1627744733811; 
	Sat, 31 Jul 2021 08:18:53 -0700 (PDT)
Received: from smtpclient.apple ([2601:192:4c80:1420:b994:621a:b616:f45a])
	by smtp.gmail.com with ESMTPSA id
	f13sm2690099qkk.29.2021.07.31.08.18.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 31 Jul 2021 08:18:53 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Solus and Broken Speech
Date: Sat, 31 Jul 2021 11:18:52 -0400
Message-Id: <3B5735C6-9D0B-4A77-B5CA-7A9B240A5645@gmail.com>
References: <e05aa6fd-c296-33f8-94b5-5f42321a69b9@gmail.com>
In-Reply-To: <e05aa6fd-c296-33f8-94b5-5f42321a69b9@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16VFIx2A028441
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCgpUaGFua3MgZm9yIGdldHRpbmcgYmFjayB0byBtZS4gIAoKRGlkIHlvdSBoYXZlIHRoZSBj
aG9wcGluZXNzIG9uIHRoZSBsaXZlIHN5c3RlbT8gIEknbSBwbGF5aW5nIHdpdGggdGhlIGxpdmUs
IHNvLCBkb24ndCBrbm93IHdoZXRoZXIgSSdsbCBoYXZlIGl0IG9uIHRoZSBpbnN0YWxsZWQuICBD
YW4gdHJ5IHRoZSBCdWRnaWUgb3IgR05PTUU7IHNlZSBpZiB0aGUgc3BlZWNoIGlzIHNtb290aGUu
CgpDaGVlcnMsCgpEYXZlIEguCgoKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gSnVsIDMxLCAy
MDIxLCBhdCA1OjExIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGlu
dXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79PZGRseSBlbm91Z2ggSSd2ZSBub3Qg
bm90aWNlZCB0aGUgY2hvcHBpbmVzcyB3aXRoIHRoZSBCdWRnaWUgZGVza3RvcCwgc28gSSdtIHdv
bmRlcmluZyBpZiBpdCdzIHNvbWV0aGluZyBNYXRlIHNwaW4gc3BlY2lmaWMgd2l0aCBob3cgU29s
dXMgZG9lcyB0aGluZ3MgdGhvdWdoPwo+IAo+PiBPbiA3LzMxLzIxIDM6MjUgQU0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEknbSBub3cgcnVubmluZyBTb2x1
cyBhbmQgZmluZCB0aGF0IGJvdGggcHVsc2VhdWRpbyBhbmQgcGlwZXdpcmUgYXJlIGFjdHVhbAo+
PiBleGVjdXRhYmxlIGZpbGVzLiAgRnVydGhlcm1vcmUsIHBpcGV3aXJlIGlzIG5vdCBydW5uaW5n
LCBhcyBpbmRpY2F0ZWQgYnkKPj4gdHlwaW5nOgo+PiAKPj4gcHMgYXV4IHxncmVwIHBpcGV3aXJl
Cj4+IAo+PiBPbmx5IHJldHVybiBpcyBteSBjb21tYW5kLgo+PiAKPj4gV2hlbiBJIGRvIHRoZSBz
YW1lIHRoaW5nLCBidXQgd2l0aCBwdWxzZWF1ZGlvLCBJIGdldCBzZXZlcmFsIGxpbmVzLiAgSSdt
Cj4+IGdvaW5nIHRvIGFzc3VtZSB0aGlzIG1lYW5zIHRoYXQgcHVsc2VhdWRpbyBpcyBydW5uaW5n
LiAgV2hhdCwgbmV4dCwgdG8gdHJ5LAo+PiB0byBzbW9vdGhlIHRoaXMgc3BlZWNoIG91dD8KPj4g
Cj4+IAo+PiBUaGFua3MsCj4+IAo+PiAKPj4gRGF2ZSAgSC4KPj4gCj4+IAo+PiAKPj4gCj4+IE9u
IFNhdCwgSnVsIDMxLCAyMDIxIGF0IDE6NTYgQU0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiA8Cj4+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+PiAKPj4+IFllcy4g
SWYgUGlwZXdpcmUgaXMgaW5zdGFsbGVkLCBwdWxzZWF1ZGlvIHdvdWxkIGJlIGEgc3ltbGluay4g
VHJ5Cj4+PiBydW5uaW5nIGZpbGUgbGlrZSBzbzoKPj4+IAo+Pj4gZmlsZSAvdXNyL2Jpbi9wdWxz
ZWF1Y2lvCj4+PiAKPj4+IFRoaXMgc2hvdWxkIHRlbGwgeW91IGV4YWN0bHkgd2hhdCB5b3UncmUg
ZGVhbGluZyB3aXRoLiBJdCBkb2VzIGFwcGVhcgo+Pj4geW91IHdpbGwgd2FudCB0byBjaGFuZ2Ug
eW91ciBBdWRpb091dHB1dE1ldGhvZCB0byAiYWxzYSIgaW4KPj4+IC9ldGMvc3BlZWNoLWRpc3Bh
dGNoZXIvc3BlZWNoZC5jb25mLiBUaGF0IHdpbGwgYmUgdGhlIGVhc2llc3Qgd2F5IHRvCj4+PiBz
b2x2ZSB0aGUgY2hvcHB5IHNwZWVjaCBwcm9ibGVtIEkgdGhpbmsuCj4+PiAKPj4+IH5LeWxlCj4+
PiAKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4+IAo+Pj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

