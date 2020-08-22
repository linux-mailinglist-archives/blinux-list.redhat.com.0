Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 0B54924E9DA
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 22:50:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598129411;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HGL0bagGJRCTOh1/riwJUF3doWfQlPeyjtHNCbD21Pg=;
	b=c9/Q1pJwKJpDyXff/Lv3YfHfxXI3m9o7Kz4lkfHSqWb/zAfzpPA7aL7eXOThumxbUt/0z/
	QfDOup3ZikJvnhK47Skn6WCaQgVNOkVfMeAYn4fuWZE/lPXVKku0ME1Z8dtuy/oPFggE/8
	VpwITuJf+mVbLLK4ITXeDhAt2spsegE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-57-hveDz8T5PpGtUl4vdLmdkw-1; Sat, 22 Aug 2020 16:50:08 -0400
X-MC-Unique: hveDz8T5PpGtUl4vdLmdkw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30C1A425CD;
	Sat, 22 Aug 2020 20:50:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D5697C5E3;
	Sat, 22 Aug 2020 20:50:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B1261832FC2;
	Sat, 22 Aug 2020 20:50:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07MKnvRl011631 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Aug 2020 16:49:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AD6252166BA3; Sat, 22 Aug 2020 20:49:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A92562166B27
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 20:49:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97FC6101A53F
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 20:49:55 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-556-_u2e-fygPwOsWJaZCc9peg-1;
	Sat, 22 Aug 2020 16:49:53 -0400
X-MC-Unique: _u2e-fygPwOsWJaZCc9peg-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 244E8BE7E3
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 21:49:13 +0200 (CEST)
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
Message-ID: <f03d577f-f905-d7cc-78db-d7e125fe1cde@slint.fr>
Date: Sat, 22 Aug 2020 22:49:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <MFMbMot--3-2@tutanota.com>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07MKnvRl011631
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpJIGFuc3dlciBpbmxpbmUgdG8gdGhlIHBhcnRzIG9mIHlvdXIgbWVzc2FnZSBxdW90
ZWQgYmVsb3c6IAoKTGUgMjIvMDgvMjAyMCDDoCAyMToyMCwgU0wgIGEgw6ljcml0wqA6Cj4gSSBk
b24ndCBrbm93IGlmIEkgd291bGQgYWxzbyBuZWVkIHRvIGNvbXBpbGUgc291cmNlIGZpbGVzIGZv
ciBTbGludCB3aGVuIEknbSBnZXR0aW5nIHN0YXJ0ZWQgd2l0aCB0aGUgT1M/CgpObyBuZWVkIHRv
IGRvIHRoYXQuIFlvdSBnZXQgYSBsb3Qgb2Ygc29mdHdhcmUgb3V0IG9mIHRoZSBib3hlcywgYW5k
IGNhbiBnZXQgbW9yZSBqdXN0IHR5cGluZyBhIGZldyBjb21tYW5kcywgYXMgd2l0aCBtYW55IG90
aGVyIExpbnV4IGRpc3RyaWJ1dGlvbnMsIGVpdGhlciBwcmUtYnVpbHQgb3IgY29tcGlsZWQgYW5k
IGluc3RhbGxlZCB0eXBpbmcganVzdCBvbmUgY29tbWFuZC4gCgo+IEJ1dCBpZiBTbGludCBzdGFy
dHMgc3BlYWtpbmcgb3V0IG9mIHRoZSBib3ggbW9yZSBvciBsZXNzLCBtYXliZSBJIHdvdWxkIHN0
YXJ0IHdpdGggdGhhdC4KU2xpbnQgc3RhcnRzIHNwZWFraW5nIGZyb20gdGhlIHZlcnkgYmVnaW5u
aW5nIG9mIGluc3RhbGxhdGlvbiBhbmQgc3BlYWtzIGluIGFsbCBjb250ZXh0czsgY29uc29sZSBh
cyBncmFwaGljYWwgZW52aXJvbm1lbnRzIGluY2x1ZGluZyBNYXRlLCB0aGUgZGVmYXVsdC4KCklm
IHlvdSBoYXZlIGEgaGFyZCBzeW50aGVzaXplciB5b3UgY2FuIHVzZSBpdCBhcyB3ZWxsLiBTbGlu
dCBjYW4gcHJlc2VydmUgYW5kIHJlc3RvcmUgc3BlY2lmaWMgc2V0dGluZ3MgZm9yIGVhY2ggc3lu
dGhlc2l6ZXIgaWYgeW91IHVzZSBzZXZlcmFsLgoKT3JjYSBpcyBpbmRlZWQgYXZhaWxhYmxlIGlu
IGdyYXBoaWNhbCBlbnZpcm9ubWVudHMgYW5kIHlvdSBjYW4gdXNlIChhbmQgc3dpdGNoIGJldHdl
ZW4pIGNvbnNvbGUgc2NyZWVuIHJlYWRlcnM6IGVzcGVha3VwLCBzcGVlY2hkLXVwIGFuZCBmZW5y
aXIuIAoKSW5kZWVkIGJyYWlsbGUgaXMgZW5hYmxlZCBhcyB3ZWxsIGZyb20gdGhlIHZlcnkgYmVn
aW5uaW5nIG9mIGluc3RhbGxhdGlvbi4KCj4gSSBsaWtlIGhvdyBtYW55IGFjY2Vzc2liaWxpdHkg
ZmVhdHVyZXMgU2xpbnQgaGFzLgpXZSB0cnkgaGFyZCB0byBwcm92aWRlIGFzIG1hbnkgYXMgcG9z
c2libGUuCgo+IEFuZCBpZiBJIHdvdWxkbid0IG5lZWQgdG8gY29tcGlsZSBhIGxvdCBvZiBzb3Vy
Y2UgZmlsZXMsIG1heWJlIFNsaW50IHdvdWxkIGJlIGEgZ29vZCBjaG9pY2UuCkluZGVlZCA8c21p
bGU+CgpBYm91dCBzdXBwb3J0OiB3ZSBhbnN3ZXIgYWxsIHF1ZXN0aW9ucyBpbiB0aGUgU2xpbnQg
bWFpbGluZyBsaXN0LCBhbmQgYmVnaW5uZXJzIGFyZSB3ZWxjb21lIHRoZXJlLgoKU28gSSB0aGlu
ayB0aGF0IFNsaW50IGlzIGEgZ29vZCBjaG9pY2UgZm9yIGEgbGFwdG9wIGluIHlvdXIgc2l0dWF0
aW9uLgoKU2xpbnQgZG9uJ3Qgc3VwcG9ydCByYXNwYmVycnkgUGksIGJ1dCBmb3IgdGhhdCBTdG9y
bXV4IGlzIGEgZ29vZCBjaG9pY2UuCgpTdG9ybSBEcmFnb24sIGl0cyBtYWludGFpbmVyLCBpcyBh
IGZyaWVuZCBhbmQgd2UgZG8gY29vcGVyYXRlIGZvciB0aGUgYmVuZWZpdCBvZiBvdXIgdXNlcnMu
IAoKRGlkaWVyCmRpZGllckBzbGludC5mcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

