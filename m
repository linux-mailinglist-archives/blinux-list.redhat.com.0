Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 60A053E9422
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 16:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628693957;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bBIa52fEig7St7rREc704NdoRWjusYWRE6R3yf9lVd4=;
	b=h33Tc4lQbw9TnkVIy6ub/aa6OPofbnxDtE0cyF0yWXCfnzaA5MHdSk7eRETJsBzDzH8LVW
	JbFoUfa0fcKDHMkIE772DacBQ244Cju/yGB7qaXSncmCMVfzynMATLmRgQZWPYKlcUKp5/
	VBw+acxgfwhtEqvcuHrhrCL0/Zi+OII=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-E9Nih92ENsaAb5p-1COw2w-1; Wed, 11 Aug 2021 10:59:15 -0400
X-MC-Unique: E9Nih92ENsaAb5p-1COw2w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAE32100CF74;
	Wed, 11 Aug 2021 14:59:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A70C28564;
	Wed, 11 Aug 2021 14:59:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 18E4D181A0F8;
	Wed, 11 Aug 2021 14:59:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17BEqDrg003805 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Aug 2021 10:52:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 39030207A6D6; Wed, 11 Aug 2021 14:52:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33A01207A691
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 14:52:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9533E8CA942
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 14:52:10 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
	[209.85.216.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-191-RbjqOjFpPJGlXxwTCyJm-Q-1; Wed, 11 Aug 2021 10:52:07 -0400
X-MC-Unique: RbjqOjFpPJGlXxwTCyJm-Q-1
Received: by mail-pj1-f45.google.com with SMTP id
	g12-20020a17090a7d0cb0290178f80de3d8so5223377pjl.2
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 07:52:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Z8h7qFJ+1uc7u3uewk9Hcb33bcC1/aCZmVDgt3heKbU=;
	b=eA73fHT8LSOj745AEMxBQH0vDNJUSKKj7eQrSXxsE1WomDu6IBnyRigBNy1ha6RK+I
	a/QXdkwwh4CTxVQ69AN0ZLJBc3EcT3y+eAmdVE1cHXnQ/pe1UC7sT8SdApaH7q8itxws
	FlBcMIn6GxSUt6YrXrz5RY1seJ3sCxP0ORVBWHLn43W6Vk9myaZbArCmNvwPzbXbQNqV
	PY62r6ESH64arD93I8ONFgpl2bbXPfRb883+OWc1XxjNHFRLHNvlpdczJO1HoTbsHSMx
	4EBxAXdSbhNis9Jxu5kCYZHrd6R/prT9Iq/u1PcwLXsgGIoCPS8SJiaDsyWbAY1nsbkb
	wqQg==
X-Gm-Message-State: AOAM530D6WSOqAFLddubyC3B6Hl6qmNnCMFj08BDW/dpEcsDtnOMWWgM
	q/YkD8MihGx8fh/scoquAhBf7/0lKfLOkw==
X-Google-Smtp-Source: ABdhPJwzBVZblQqUkzhSwzU85DaM3ubcGfPAb6L1ITUSeO5htm5vgZ8V5eHYfVPAHiL8lcCuhoL8Ig==
X-Received: by 2002:a17:90a:450e:: with SMTP id
	u14mr11112574pjg.164.1628693526444; 
	Wed, 11 Aug 2021 07:52:06 -0700 (PDT)
Received: from ?IPv6:2601:501:100:cb70:481:eb50:d4b5:9983?
	([2601:501:100:cb70:481:eb50:d4b5:9983])
	by smtp.gmail.com with ESMTPSA id
	c206sm28110717pfb.160.2021.08.11.07.52.05
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 11 Aug 2021 07:52:06 -0700 (PDT)
Subject: Re: I can't answer to someone anonymous (was: Re: Help, I need a
	Windows VM for my work)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
	<f791451d-27c3-b6df-2294-4346caed0107@gmail.com>
	<6016bdff-564b-90a3-836b-b2d82a124f0b@slint.fr>
	<6cc6f82b-c166-59b0-506c-51a75e805ecc@gmail.com>
	<7eb5aa75-e8b3-06b2-0785-f3b0fb365cc9@slint.fr>
Message-ID: <44b41db0-eeee-af57-ada2-1ff10f24a75a@gmail.com>
Date: Wed, 11 Aug 2021 07:52:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <7eb5aa75-e8b3-06b2-0785-f3b0fb365cc9@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

bm90aGluZyBjYW1lIHRocmV3CgpubyBhdHRhY2htZW50CgpIYW5rCgoKT24gOC8xMS8yMDIxIDY6
MTggQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgS2Fu
aywKPgo+IHBsZWFzZSBmaW5kIHRoamUgZmlsZSBhdHRhY2hlZC4KPgo+IENoZWVycywKPgo+IERp
ZGllcgo+Cj4gTGUgMTEvMDgvMjAyMSDDoCAwODoyNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBpdHMKPj4KPj4gSGFuayBTbWl0aAo+Pgo+PiBoYW5r
LnNtaXRoOTY2QGdtYWlsLmNvbQo+Pgo+Pgo+PiBPbiA4LzEwLzIwMjEgMTE6MDQgUE0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIZWxsbywKPj4+Cj4+PiBT
ZXZlcmFsIG1lc3NhZ2VzIGhhdmUgYmVlbiBzZW50IHRvIHRoZSBsaXN0LCBxdW90ZWQgYmVsb3cs
IGJ1dCBJIAo+Pj4gZG9uJ3Qga25vdyBieQo+Pj4gd2hvbSBhcyB0aGlzIGxpc3QgaGlkZXMgdGhl
IHNlbmRlcidzIG5hbWUgYW5kIGVtYWlsIGFkZHJlc3MuCj4+Pgo+Pj4gU28sIGlmIHlvdSB3YW50
IGFuIGFuc3dlciBmcm9tIG1lLCBwbGVhc2UgaW5kaWNhdGUgeW91ciBuYW1lIGFuZCAKPj4+IGVt
YWlsIGFkZHJlc3MKPj4+IGluIHRoZSBib2R5IG9mIHlvdXIgbWVzc2FnZSwgYXMgSSBhbSBkb2lu
ZyBpbiB0aGlzIG9uZSBrbm93aW5nIHRoYXQgCj4+PiAoZG90KSBpcyB0bwo+Pj4gYmUgcmVwbGFj
ZWQgYnkgLiBhbmQgKGF0KSBieSBAIGFuZC9vciBzZW5kIGFsc28geW91ciBtZXNzYWdlcyB0byBt
eSAKPj4+IGVtYWlsCj4+PiBhZGRyZXNzIEkgYmVsb3cuCj4+Pgo+Pj4gSSBjYW4ndCBzZW5kIHBy
aXZhdGVseSBzb21ldGhpbmcgdG8gc29tZW9uZSB3aG9zZSBJIGRvbid0IGtub3cgdGhlIAo+Pj4g
ZW1haWwKPj4+IGFkZHJlc3MhCj4+Pgo+Pj4gRGlkaWVyCj4+PiBEaWRpZXIgU3BhaWVyCj4+PiBT
bGludCBtYWludGFpbmVyCj4+PiBkaWRpZXIgKGF0KSBzbGludCAoZG90KSBmcgo+Pj4KPj4+IExl
IDExLzA4LzIwMjEgw6AgMDU6MDEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPj4+PiBob3cgZG8geW91IGdldCBjb250cm9sIHRvIHRoZSB2bSBmcm9tIHRo
ZSBob3N0Pwo+Pj4KPj4+ID4gYWxzbyBJIGRpZG4ndCBzZWUgdGhlIHNjcmlwdCBhdHRhY2hlZCBj
YW4geW91IHJlc2VuZCBpdCB0byBtZSBwbGVhc2U/Cj4+PiA+IE9uIDgvMTAvMjAyMSA2OjU5IEFN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4KPj4+ID4gY2Fu
IHlvdSBzZW5kIHByaXZhdGVseSBwbGVhc2UgaXQgZGlkbid0IGF0dGFjaAo+Pj4KPj4+Cj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

