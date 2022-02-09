Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3604AEF8E
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 11:53:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644404024;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EJdgNvRE+cyOMgaT9Y4ICKnf7kKCQar16J9gSV3QTDc=;
	b=PgCR0DbYTt83vznVCIuD55RjZg4cyYikUdCJwFvRH8EjvH7raQT7jWT7pjq4WXNGUYfBC2
	/oMXL4Ym0fJv1YJXP23wwh7aCqrythMjL5YEoIvqsoYL+8CEgyyXBIi45oGpd1TUzLhPUZ
	b4Argy3I/T/ftIOTKmNvzuVVHhE849M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-618-ocZZF7OYMq2Mobt-CdjdPw-1; Wed, 09 Feb 2022 05:53:41 -0500
X-MC-Unique: ocZZF7OYMq2Mobt-CdjdPw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 97EB28710FF;
	Wed,  9 Feb 2022 10:53:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D1467316C;
	Wed,  9 Feb 2022 10:53:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E6A944BB7C;
	Wed,  9 Feb 2022 10:53:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219AmccF030955 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 05:48:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 96520740A; Wed,  9 Feb 2022 10:48:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 915B253AB
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:48:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A6E93C11A0E
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 10:48:31 +0000 (UTC)
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de
	[134.119.228.98]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-367-158EYRfHPBaUHeli0p4kEA-1; Wed, 09 Feb 2022 05:48:29 -0500
X-MC-Unique: 158EYRfHPBaUHeli0p4kEA-1
Received: from [37.4.229.93] (helo=[192.168.178.110])
	by smtprelay08.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1nHkWQ-00009C-G2
	for blinux-list@redhat.com; Wed, 09 Feb 2022 11:48:26 +0100
Message-ID: <ef4109e0-e0a7-738a-a389-627329b6bac0@linux-a11y.org>
Date: Wed, 9 Feb 2022 11:48:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<95b092c6-91fa-5c95-5ae5-f2418892d8e8@linux-a11y.org>
In-Reply-To: <95b092c6-91fa-5c95-5ae5-f2418892d8e8@linux-a11y.org>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgpqdXN0IHdhbnQgdG8gdHJ5IGNvcXVpIGFnYWluIChhZnRlciBhIHdoaWxlKSBhbmQg
anVzdCBnb3QgdGhpczoKJCBwaXAzIGluc3RhbGwgVFRTCkRlZmF1bHRpbmcgdG8gdXNlciBpbnN0
YWxsYXRpb24gYmVjYXVzZSBub3JtYWwgc2l0ZS1wYWNrYWdlcyBpcyBub3QgCndyaXRlYWJsZQpF
UlJPUjogQ291bGQgbm90IGZpbmQgYSB2ZXJzaW9uIHRoYXQgc2F0aXNmaWVzIHRoZSByZXF1aXJl
bWVudCBUVFMKRVJST1I6IE5vIG1hdGNoaW5nIGRpc3RyaWJ1dGlvbiBmb3VuZCBmb3IgVFRTCgph
bnkgaWRlYXM/CgpjaGVlcnMgY2hyeXMKCkFtIDA5LjAyLjIyIHVtIDExOjQwIHNjaHJpZWIgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiBIb3dkeSBSYXN0aXNsYXYsCj4KPiB5
ZWEgQ29xdWkgaXMgYXdzb21lLiBpdCB3YXMgaW5pdGlhbCBwYXJ0IG9mIG1vemlsbGFzIFRUUyBh
bmQgU1RUIGVmZm9ydHMuCj4gd2UgcmVhbGx5IHNob3VsZCBoYXZlwqAgYW4gc3BlZWNoLWRpc3Bh
dGNoZXIgZHJpdmVyIGZvciB0aGF0IDopLgo+Cj4gYnkgdGhlIHdheSwga2VlcCB1cCB5b3VyIGdy
ZWF0IHdvcmshIEp1c3QgdGFrZSBhIGxvb2sgYXQgdGhlIEMjIAo+IHNwZWVjaC1kaXNwYXRjaGVy
IGJpbmRpbmdzLgo+Cj4gY2hlZXJzIGNocnlzCj4KPiBBbSAwOS4wMi4yMiB1bSAxMToyNSBzY2hy
aWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+IEhlbGxvIGV2ZXJ5b25l
LAo+Pgo+PiBtYXkgYmUgSSd2ZSBkaXNjb3ZlcmVkIEFtZXJpY2EsIGJ1dCB5ZXN0ZXJkYXkgSSBt
b3N0bHkgcmFuZG9tbHkgY2FtZSAKPj4gYWNyb3NzOgo+Pgo+PiBodHRwczovL2Vyb2dvbC5naXRo
dWIuaW8vZGRjLXNhbXBsZXMvCj4+Cj4+Cj4+IEFuZCB0aGUgdm9pY2UgaGFzIGNvbXBsZXRlbHkg
YmxldyBteSBtaW5kIQo+Pgo+PiBMaWtlLCBJIGtuZXcgdGhlIFRUUyBhcmVhIGhhcyBhZHZhbmNl
ZCBzaWduaWZpY2FudGx5IGluIHRoZSByZWNlbnQKPj4geWVhcnMsIGJ1dCBJIHRob3VnaHQgdGhl
IG5ldyBuZXVyYWwgdm9pY2VzIGFyZSBtb3N0bHkgY2xvc2VkIGZlYXR1cmVzIG9mCj4+IGNvbXBh
bmllcyBsaWtlIEdvb2dsZSBvciBNaWNyb3NvZnQuCj4+Cj4+IEkgaGFkIG5vIGlkZWEgd2UgaGFk
IHNvbWV0aGluZyBzbyBiZWF1dGlmdWwgb24gbGludXggYW5kIGNvbXBsZXRlbHkKPj4gb3Blbi1z
b3VyY2UhCj4+Cj4+Cj4+IFBsdXMsIGl0J3Mgbm90IGp1c3QgdGhlIGxpY2Vuc2UgdGhhdCBtYWtl
cyB0aGlzIHNvIGludGVyZXN0aW5nLCBidXQgYWxzbwo+PiB0aGUgdXNhYmlsaXR5Lgo+Pgo+PiBU
aGVyZSB3ZXJlIHRoZSBEZWVwbWluZCBwYXBlcnMgZXZlbiBiZWZvcmUgYW5kIHNvbWUgb3BlbiBw
cm9qZWN0cyB0cnlpbmcKPj4gdG8gaW1wbGVtZW50IHRoZW0sIGJ1dCB0aGUgbGV2ZWwgb2YgY29t
cGxldGVuZXNzIGFuZCB1c2FiaWxpdHkgdmFyaWVkCj4+IHNpZ25pZmljYW50bHksIGV2ZW4gaWYg
YSBwcm9qZWN0IHdhcyB1c2FibGUsIGdldHRpbmcgaXQgdG8gd29yayByZXF1aXJlZAo+PiBzb21l
IGVmZm9ydCAoYXQgbGVhc3QgdGhlIHByb2plY3RzIEkgc2F3KS4KPj4KPj4KPj4gV2l0aCBDb3F1
aSwgdGhlIHNpdHVhdGlvbiBpcyBjb21wbGV0ZWx5IGRpZmZlcnJlbnQuCj4+Cj4+IEFzIHRoZSBh
Ym92ZSBtZW50aW9uZWQgYmxvZyBzYXlzLCBhbGwgeW91IG5lZWQgdG8gZG8gaXM6Cj4+Cj4+Cj4+
ICQgcGlwMyBpbnN0YWxsIFRUUwo+Pgo+PiAkIHR0cyAtLXRleHQgIkhlbGxvLCB0aGlzIGlzIGFu
IGV4cGVyaW1lbnRhbCBzZW50ZW5jZS4iCj4+Cj4+Cj4+IEFuZCB5b3UgaGF2ZSBhIHN5bnRoZXNp
emVkIHJlc3VsdCEKPj4KPj4KPj4gT3IgeW91IGNhbiBsYXVuY2ggdGhlIHNlcnZlcjoKPj4KPj4g
JCB0dHMtc2VydmVyCj4+Cj4+Cj4+IEFuZCBwbGF5IGluIHRoZSB3ZWIgYnJvd3Nlci4gTm90ZSB0
aGF0IHRoZSBhdWRpbyBpcyBzZW50IG9ubHkgYWZ0ZXIgaXQncwo+PiBmdWxseSBzeW50aGVzaXpl
ZCwgc28geW91J2xsIG5lZWQgdG8gd2FpdCBhIGJpdCB0byBsaXN0ZW4gaXQuCj4+Cj4+Cj4+IFRo
ZSBvbmx5IHByb2JsZW1hdGljIHBhcnQgaXMgdGhlIGxpbWl0IG9mIGRlY29kZXIgc3RlcHMsIHdo
aWNoIGlzIHNldCB0bwo+PiA1MDAgYnkgZGVmYXVsdC4KPj4KPj4gSSdtIG5vdCBzdXJlIHdoeSBk
aWQgdGhleSBwdXQgaXQgc28gbG93LCB3aXRoIHRoaXMgdmFsdWUsIHRoZSBUVFMgaXMKPj4gdW5h
YmxlIHRvIHNwZWFrIGxvbmdlciBzZW50ZW5jZXMuCj4+Cj4+Cj4+IEZvcnR1bmF0ZWx5LCB0aGUg
Zml4IGlzIHZlcnkgZWFzeS4gQWxsIEkgbmVlZGVkIHRvIGRvIHdhcyB0byBvcGVuCj4+IH4vLmxv
Y2FsL2xpYi9weXRob24zLjgvc2l0ZS1wYWNrYWdlcy9UVFMvdHRzL2NvbmZpZ3MvdGFjb3Ryb25f
Y29uZmlnLnB5Cj4+Cj4+IGFuZCBtb2RpZnkgdGhlIGxpbmU6Cj4+Cj4+IMKgIMKgwqDCoCBtYXhf
ZGVjb2Rlcl9zdGVwczogaW50ID0gNTAwCj4+Cj4+IHRvCj4+Cj4+IMKgIMKgwqDCoCBtYXhfZGVj
b2Rlcl9zdGVwczogaW50ID0gMAo+Pgo+Pgo+PiB3aGljaCBzZWVtcyB0byBkaXNhYmxlIHRoZSBs
aW1pdC4KPj4KPj4KPj4gQWZ0ZXIgdGhpcyBzdGVwLCBJIGNhbiBzeW50aGVzaXplIHZlcnkgbG9u
ZyBzZW50ZW5jZXMsIGFuZCB0aGUgcXVhbGl0eQo+PiBpcyBhYnNvbHV0ZWx5IGdsYW1vcm91cyEK
Pj4KPj4KPj4gU28gSSB3YW50ZWQgdG8gc2hhcmUuIEkgbWF5IGJlIGFjdHVhbGx5IHRoZSBsYXN0
IHBlcnNvbiBkaXNjb3ZlcnlpbmcgaXQKPj4gaGVyZSwgdGhvdWdoIEkgZGlkIG5vdCBzZWUgaXQg
bWVudGlvbmVkIGluIFRUUyBkaXNjdXNzaW9ucyBvbiB0aGlzIGxpc3QuCj4+Cj4+Cj4+IEkndmUg
ZXZlbiB0aG91Z2h0IGFib3V0IGNyZWF0aW5nIGEgc3BlZWNoIGRpc3BhdGNoZXIgdmVyc2lvbiBv
ZiB0aGlzLiBJdAo+PiB3b3VsZCBjZXJ0YWlubHkgYmUgZG9hYmxlLCB0aG91Z2ggSSdtIGFmcmFp
ZCB3aGF0IHdvdWxkIHRoZSBzeW50aGVzaXMKPj4gc291bmQgbGlrZSB3aXRoIHRoZSBpcnJlZ3Vs
YXJpdGllcyBvZiBuYXZpZ2F0aW9uIHdpdGggYSBzY3JlZW5yZWFkZXIuCj4+IFRoZXNlIHZvaWNl
cyBhcmUgaW50ZW5kZWQgZm9yIHJlYWRpbmcgbG9uZ2VyIHRleHRzIGFuZCBjb25zaXN0ZW50Cj4+
IHBocmFzZXMsIHdpdGggcHVuY3R1YXRpb24sIGNvbXBsZXRlIGluZm9ybWF0aW9uIGV0Yy4KPj4K
Pj4gVGhlIGludG9uYXRpb24gd291bGQgcHJvYmFibHkgZ2V0IGEgYml0IHdlaXJkIHdpdGggZm9y
IGV4YW1wbGUganVzdCBhCj4+IGhhbGYgc2VudGVuY2UsIGFzIGhhcHBlbnMgd2hlbiBuYXZpZ2F0
aW5nIGEgZG9jdW1lbnQgb3Igd2VicGFnZSBsaW5lIGJ5Cj4+IGxpbmUuCj4+Cj4+Cj4+IEFub3Ro
ZXIgbGltaXRhdGlvbiB3b3VsZCBiZSB0aGUgb25lIG9mIHNwZWVkLiBPbiBteSBsYXB0b3AsIHRo
ZSByZWFsdGltZQo+PiBmYWN0b3IgKHByb2Nlc3NpbmcgZHVyYXRpb24gLyBhdWRpbyBsZW5ndGgp
IGlzIGFyb3VuZCAwLjgsIHdoYXQgbWVhbnMgaXQKPj4gY291bGQgaGFuZGxlIHJlYWwtdGltZSBz
eW50aGVzaXMgYXQgdGhlIGRlZmF1bHQgc3BlZWQgd2l0aG91dCBkZWxheXMuCj4+Cj4+Cj4+IFRo
ZSBzaXR1YXRpb24gd291bGQgZ2V0IG1vcmUgY29tcGxpY2F0ZWQgd2l0aCBoaWdoZXIgc3BlZWRz
LCB0aG91Z2guCj4+Cj4+IEl0IHdvdWxkbid0IGJlIGltcG9zc2libGUsIGJ1dCBvbmUgd291bGQg
bmVlZCBhIEdQVSB0byBoYW5kbGUKPj4gc2lnbmlmaWNhbnRseSBoaWdoZXIgc3BlZWNoIHJhdGVz
Lgo+Pgo+Pgo+PiBTbyBJIHdvbmRlci4KPj4KPj4KPj4gQnV0IGFueXdheSwgdGhpcyBkZWZpbml0
ZWx5IG1hZGUgbXkgZGF5LiA6KQo+Pgo+Pgo+PiBCZXN0IHJlZ2FyZHMKPj4KPj4KPj4gUmFzdGlz
bGF2Cj4+Cj4+Cj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

