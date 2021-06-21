Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1DF6C3AF6E8
	for <lists+blinux-list@lfdr.de>; Mon, 21 Jun 2021 22:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624308151;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gM0BCcEJeOk90KLsXFgihBR11Wo3nytGIfbHycOyVEg=;
	b=BTw8pRcijOyzfaByq4BWqTSBU5/DzdneVKOmamQi047Ej5LIDyy1uFv4Yihq1Ww4iv0m0F
	8hsYhn+s8tUZ3TbP/jtygdQg2HsIyBM2+Idlq1n7zOMbVppPgDSNAa9SgAmsBblJdHQxks
	ETiC7SRi+6hiOh/Pv+SQgDy2SQkUxi4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-ir20lVMjMNyu81phmmoBlg-1; Mon, 21 Jun 2021 16:42:29 -0400
X-MC-Unique: ir20lVMjMNyu81phmmoBlg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17EE9804142;
	Mon, 21 Jun 2021 20:42:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F36F560C13;
	Mon, 21 Jun 2021 20:42:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 623711809C99;
	Mon, 21 Jun 2021 20:42:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15LKg9vm025445 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 21 Jun 2021 16:42:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8421B63F91; Mon, 21 Jun 2021 20:42:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A8B963F8A
	for <blinux-list@redhat.com>; Mon, 21 Jun 2021 20:42:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3E7F1064C96
	for <blinux-list@redhat.com>; Mon, 21 Jun 2021 20:42:01 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-310-ja2jxvUlPB-AvquXLxdHMQ-1;
	Mon, 21 Jun 2021 16:41:58 -0400
X-MC-Unique: ja2jxvUlPB-AvquXLxdHMQ-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0097AA3EB7
	for <blinux-list@redhat.com>; Mon, 21 Jun 2021 21:41:32 +0200 (CEST)
Subject: Re: making an accessible version of Nushell
To: blinux-list@redhat.com
References: <39E7FC5D-C61C-4EE2-8199-F0D94711EF71@cfcl.com>
Message-ID: <55e60ad8-2298-90c0-9936-91f289bd0c07@slint.fr>
Date: Mon, 21 Jun 2021 22:41:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <39E7FC5D-C61C-4EE2-8199-F0D94711EF71@cfcl.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 15LKg9vm025445
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgUmljaCwKCkkgaGFkIGEgcXVpY2sgbG9vayBhdCBudXNoZWxsLCBhbmQgSSB3b24ndCBzcGVu
ZCB0aW1lIG9uIHRoYXQuCgpXZSBoYXZlIGFscmVhZHkgbWFueSBzaGVsbHMsIG5vIG5lZWQgZm9y
IG9uZSBtb3JlLiBJIHRoaW5rIHRoYXQgYSBQT1NJWApjb21wbGlhbnQgc2hlbGwgaXMgZ29vZCBl
bm91Z2ggYW5kIGl0cyBvdXRwdXQgaXMgYWxyZWFkeSBzY3JlZW4gcmVhZGVyIApmcmllbmRseQph
dCBsZWFzdCBvbiBhIHBsYWluIExpbnV4IGNvbnNvbGUKCkp1c3QgbXkgb3Bpbmlvbiwgb2YgY291
cnNlCgpDaGVlcnMsCkRpZGllcgoKTGUgMjEvMDYvMjAyMSDDoCAyMjoyNCwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IE51c2hlbGwgKGh0dHBzOi8vd3d3
Lm51c2hlbGwuc2gpIGlzIGEgcmUtaW1hZ2luZWQgc2hlbGwgZm9yIExpbnV4IChldGMpIHN5c3Rl
bXMuICBUaGVyZSBhcmUgYSBudW1iZXIgb2YgdGhpbmdzIHRvIGxpa2UgYWJvdXQgaXQsIElNSE8u
ICBGaXJzdCwgaXQgYXR0ZW1wdHMgdG8gaGFuZGxlIHByb2dyYW0gb3V0cHV0IGFzIHN0cnVjdHVy
ZWQgZGF0YS4gIFRoaXMgbWVhbnMgdGhhdCwgZm9yIGV4YW1wbGUsIHRhYnVsYXIgb3V0cHV0IGNh
biBiZSBmaWx0ZXJlZCwgc29ydGVkLCBldGMuICBJdCBpcyBhbHNvIGJlaW5nIHdyaXR0ZW4gaW4g
UnVzdCwgd2hpY2ggc2hvdWxkIGhlbHAgdG8gcHJldmVudCBhIGxhcmdlIGNsYXNzIG9mIHNlY3Vy
aXR5IGlzc3Vlcy4KPiAKPiBIb3dldmVyLCB0aGUgdXNlIG9mIHRleHQtYmFzZWQgbGF5b3V0IGZv
ciB0YWJ1bGFyIG91dHB1dCBpc24ndCB3ZWxsIHN1aXRlZCBmb3IgdXNlIHdpdGggc2NyZWVuIHJl
YWRlcnMsIGV0Yy4gIFNvLCBJIHBvc3RlZCBhbiBpc3N1ZSBvbiB0aGUgTnVzaGVsbCBHaXQgcmVw
b3NpdG9yeSwgc3VnZ2VzdGluZyB0aGF0IHNvbWVvbmUgbG9vayBpbnRvIHRoZSBub3Rpb24gb2Yg
Y3JlYXRpbmcgYSB3ZWItYmFzZWQgdmVyc2lvbi4gIEhhcHBpbHksIHNvbWUgd29yayBoYXMgYWxy
ZWFkeSBiZWVuIGRvbmUgb24gdGhpcywgbW9zdGx5IHRvIHN1cHBvcnQgYW4gb25saW5lIGRlbW8u
Cj4gCj4gSWYgeW91IGZpbmQgdGhpcyB0byBiZSBpbnRlcmVzdGluZywgeW91IG1pZ2h0IHdhbnQg
dG8gYnJvd3NlIG92ZXIgdG8gdGhlaXIgc2l0ZXMgYW5kIGNoZWNrIG91dCB3aGF0IHRoZXkgaGF2
ZSBzbyBmYXIuICBTcGVjaWZpYyBzdWdnZXN0aW9ucyBvbiB3YXlzIHRvIG1ha2UgdGhlIGludGVy
ZmFjZSB3b3JrIGJldHRlciB3aXRoIHNjcmVlbiByZWFkZXJzIChldGMpIHdvdWxkIGJlIHZlcnkg
dmFsdWFibGUuICBIZXJlIGFyZSBzb21lIGxpbmtzOgo+IAo+IGh0dHBzOi8vd3d3Lm51c2hlbGwu
c2gKPiBodHRwczovL3d3dy5udXNoZWxsLnNoL2RlbW8KPiAKPiBodHRwczovL2dpdGh1Yi5jb20v
bnVzaGVsbC9udXNoZWxsCj4gaHR0cHM6Ly9naXRodWIuY29tL251c2hlbGwvbnVzaGVsbC9pc3N1
ZXMvMzY2Mwo+IAo+IC1yIChSaWNoIE1vcmluKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

