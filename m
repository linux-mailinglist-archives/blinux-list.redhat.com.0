Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0F04AE53E
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 00:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644361777;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oWOSDgTUx5iBOEhlajkR0cNsKvotv5gGyxxNGF2O73M=;
	b=Ene+Z0lcNQeDmSto5c3w5iyrjtX4GfKDImAgxm7fnJZXCLY3fv7BFjRVC6mENte9a71l28
	LD4w8FJXq2NPFPJ00gDwbNglsW9ENX+XT9CLJKHTN8NNDUeGLP3djuX4jCBeXEAULYqo1d
	iIpWDU6YYsBJYxi6YXszhCbWRNidT38=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-183-32159FUIPPajh8T0TWAnWg-1; Tue, 08 Feb 2022 18:09:34 -0500
X-MC-Unique: 32159FUIPPajh8T0TWAnWg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A716193F560;
	Tue,  8 Feb 2022 23:07:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8F424EC64;
	Tue,  8 Feb 2022 23:07:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 491824BB7C;
	Tue,  8 Feb 2022 23:07:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 218N66lF031375 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 18:06:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2C5E540CFD24; Tue,  8 Feb 2022 23:06:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2812340CFD12
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 23:06:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE7E71C05B05
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 23:06:05 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-184-Q-KcXpPcN_6XSS3Z08rELA-1;
	Tue, 08 Feb 2022 18:06:03 -0500
X-MC-Unique: Q-KcXpPcN_6XSS3Z08rELA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id E05AB2047D
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 23:05:51 +0100 (CET)
Message-ID: <1a0a0fe8-f186-ee7c-ea3a-ed31cea5ba20@slint.fr>
Date: Wed, 9 Feb 2022 00:05:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.0
Subject: Re: Novelty TTS Voices and calling TTS programmatically.
To: blinux-list@redhat.com
References: <CAO2sX32WSqGjm_b77ZD57jCmycBaHpL-aXzdSeaRK4ggE=eh+g@mail.gmail.com>
In-Reply-To: <CAO2sX32WSqGjm_b77ZD57jCmycBaHpL-aXzdSeaRK4ggE=eh+g@mail.gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 218N66lF031375
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGlkIHlvdSB0cnkgYWxsIHRoZSB2YXJpYW50cyBzaGlwcGVkIHdpdGggZXNwZWFrLW5nLCBpbmNs
dWRpbmcgdGhlIGtsYXR0IG9uZXM/ClNvbWUgYXJlIHJlYWxseSBmdW5ueS4KCkRpZGllcgoKTGUg
MDcvMDIvMjAyMiDDoCAxODo1OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
IMOpY3JpdMKgOgo+IE9rYXksIHNvIEkgaGF2ZSB0d28gcXVlc3Rpb25zIHRoYXQgcmVhbGx5IGFy
ZW4ndCByZWxhdGVkIGV4Y2VwdCB0aGV5Cj4gYm90aCBkZWFsIHdpdGggVFRTIGFuZCB3ZXJlIGJv
cm4gb3V0IG9mIHRoZSBzYW1lIGlkZWEuCj4gCj4gVGhlIGZpcnN0IGlzIHdoZXRoZXIgdGhlcmUg
ZXhpc3QgYW55LCBmb3IgbGFjayBvZiBhIGJldHRlciB0ZXJtLAo+IG5vdmVsdHkgdm9pY2VzLiBU
aGluZ3MgbGlrZSBwaXJhdGUsIGNvd2JveSwgY29taWNhbGx5IGV4YWdnZXJhdGVkCj4gZm9yZWln
biBvciByZWdpb25hbCBhY2NlbnRzLCB2b2ljZXMgZGVzaWduZWQgdG8gc291bmQgbGlrZSBvbGQg
c2Nob29sCj4gc2NpLWZpIHJvYm90cyBpbnN0ZWFkIG9mIGp1c3QgYmVpbmcgcmVsaWNzIGZyb20g
dGhlIGVhcmx5IGRheXMgb2YKPiB0VFRTLCBldGMuIFByZWZlcmFibHkgZnJlZS10by11c2UgYW5k
IGNvbXBhdGlibGUgd2l0aCBlc3BlYWstbmcgb3IKPiBhbm90aGVyIFRUUyBlbmdpbmUgdGhhdCdz
IHJlYWRpbHkgYXZhaWxhYmxlIGZvciBMaW51eC4KPiAKPiBUaGUgc2Vjb25kIGlzIHdoZXRoZXIg
dGhlcmUncyBhIHdheSB0byBpbnZva2UgYSBUVFMgZW5naW5lIGZyb20gd2l0aGluCj4gYSBwcm9n
cmFtLiBJJ20gYSBvbGQgaGF0IGF0IHdyaXRpbmcgQysrIHRlcm1pbmFsIGFwcGxpY2F0aW9ucyB0
aGF0Cj4gcmVhZCBmcm9tIHRoZSBrZXlib2FyZCBvciBhIHRleHQgZmlsZSBhbmQgd3JpdGUgdG8g
dGhlIHNjcmVlbiBvciBhCj4gdGV4dCBmaWxlLCBidXQgd2hhdCBpZiwgaW5zdGVhZCBvZiBqdXN0
IHdyaXRpbmcgb3V0cHV0IHRvIHRoZSBzY3JlZW4sCj4gSSB3YW50ZWQgdG8gaW52b2tlIGEgVFRT
IGVuZ2luZSBhbmQgaGF2ZSBpdCBzcGVhayB0aGUgb3V0cHV0IGluIGEKPiB2b2ljZSBvZiBteSBj
aG9vc2luZz8gT3IgaW4gb3RoZXIgd29yZHMsIGhvdyBkbyBJIG1ha2UgdGVybWluYWwgYXBwcwo+
IHNlbGYtdm9pY2luZz8gSSBrbm93IHRoZSBiYXNpY3Mgb2YgaW52b2tpbmcgZXNwZWFrLW5nIGZy
b20gdGhlIGNvbW1hbmQKPiBsaW5lLCBwdXR0aW5nIGEgc3RyaW5nIGluIHF1b3RlcyB0byBoYXZl
IGl0IHJlYWQgZGlyZWN0bHksIHVzaW5nIHRoZWUKPiAtdiBvcHRpb24gdG8gc2V0IHRoZSB2b2lj
ZSBhbmQgdGhlIC1mIG9wdGlvbiB0byByZWFkIGZyb20gYSBmaWxlLCBhbmQKPiBJIGtub3cgZW5v
dWdoIGJhc2ggc2NyaXB0aW5nIHRvIGRvIHNpbXBsZSBjb25kaXRpb25hbCBsb2dpYywgYnV0IGJl
aW5nCj4gYWJsZSB0byBpbnZva2UgaXQgZnJvbSB3aXRoaW4gYSBDKysgcHJvZ3JhbSB3b3VsZCBv
ZmZlciBncmVhdGVyCj4gZmxleGliaWxpdHksIGFuZCB3aGlsZSBJIGtub3cgdGhlIHN5c3RlbSBm
dW5jdGlvbiBjYW4gYmUgdXNlZCB0bwo+IGV4ZWN1dGUgZXh0ZXJuYWwgcHJvZ3JhbXMsIEkndmUg
YWx3YXlzIGdvdHRlbiB0aGUgaW1wcmVzc2lvbiB0aGF0Cj4gc2hvdWxkIGJlIGEgbGFzdCByZXNv
cnQpLgo+IAo+IFdoYXQgc3BhcmtlZCB0aGVzZSBxdWVzdGlvbnMgd2FzIHRoZSBpZGVhIG9mIGEg
dGFsa2luZyBwaXJhdGUgc2t1bGwKPiB0aGF0IHNwZWFrcyB0aGUgcm9sbCBvZiBhIGQyMCBhbmQg
YWRkcyBhbiBhcHByb3ByaWF0ZSBxdWlwIGFuZAo+IHRoaW5raW5nIGFib3V0IGhvdyB0byBtYWtl
IGl0IG1vcmUgZmxleGlibGUgd2l0aG91dCBoYXZpbmcgdG8gcmVjb3JkCj4gdm9pY2UgY2xpcHMg
Zm9yIGV2ZXJ5IHNwb2tlbiBwaHJhc2UuLi4gdGhvdWdoIEkgY29uZmVzcyB0byBub3Qga25vd2lu
Zwo+IGhvdyB0byBtYWtlIG15IHByb2dyYW1zIHBsYXkgYXVkaW8gZmlsZXMgZWl0aGVyLgo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

