Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E8B4686CF
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 18:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638640359;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RMY/Lw9abkfrjXnVNwi3RZzn61DuZU16ti8cVwGhnN0=;
	b=UyvamhHBqBLxHI1D5O3GZO4px4x9d0rZNBq1SDrOUUMc+z7FmZQF0eKTkd4MPt/uBq2qgt
	qTxJ7h6JMgvEYsRzlrSsNDKe5v8DxrovJ9BFUpA2b+OWDXFZItMu+HHJhmHRR7fK4zlSrT
	UA96PuX4mCWUmOm9XNhJczzyig23Dvw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-432-CDHuaRwFP3uJSV_RWkPolw-1; Sat, 04 Dec 2021 12:52:35 -0500
X-MC-Unique: CDHuaRwFP3uJSV_RWkPolw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14D5481CCB5;
	Sat,  4 Dec 2021 17:52:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5ABA95C642;
	Sat,  4 Dec 2021 17:52:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7DB151809CB8;
	Sat,  4 Dec 2021 17:52:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4HqNKv016869 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 12:52:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 207AAC202C6; Sat,  4 Dec 2021 17:52:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C32CC08084
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:52:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02CF68022F4
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:52:23 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-477-u_uM785DOZadCnZCoPpR5g-1;
	Sat, 04 Dec 2021 12:52:20 -0500
X-MC-Unique: u_uM785DOZadCnZCoPpR5g-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 36632A3A0F
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 16:51:36 +0100 (CET)
Message-ID: <00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
Date: Sat, 4 Dec 2021 18:52:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: blinux-list@redhat.com
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
In-Reply-To: <d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B4HqNKv016869
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2Ugc2hpcCBwY21hbmZtIGluIFNsaW50LiBJdCBpcyBhY2Nlc3NpYmxlIGFuZCBvbmx5IG5lZWRz
IGxpYmZtIGFzIApzcGVjaWZpYyBkZXBlbmRlbmN5LgoKQ2hlZXJzLApEaWRpZXIKCkxlIDA0LzEy
LzIwMjEgw6AgMTg6MzIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNy
aXTCoDoKPiBXZWxsLCB5b3UgaW5kaWNhdGVkIHlvdSBhbHJlYWR5IGhhdmUgYSB0ZXh0IGVkaXRv
ciwgYW5kIEkgd291bGQgc2F5IAo+IGxlYWZwYWQgaXMgcHJvYmFibHkgdGhlIGxpZ2h0ZXN0IG9u
ZSBhdmFpbGFibGUuIFRoZSBiZXN0IGZpbGUgbWFuYWdlciBJIAo+IGFtIGF3YXJlIG9mIHdvdWxk
IGJlIGNhamEsIGJ1dCB5b3Ugc2F5IHlvdSBkb24ndCB3YW50IGFueSBvZiB0aGUgTUFURSAKPiBz
dHVmZi4gSXQgZG9lcyBwdWxsIGluIHNvbWUgTUFURSBkZXBlbmRlbmNpZXMsIGJ1dCBpdCdzIG9u
ZSBvZiB0aGUgCj4gbGlnaHRlc3QgYW5kIG1vc3Qgc2NyZWVuIHJlYWRlciBhY2Nlc3NpYmxlIGZp
bGUgbWFuYWdlcnMgY3VycmVudGx5IAo+IGF2YWlsYWJsZS4gQ2FqYSBkb2VzIGFsc28gaGF2ZSBk
ZXNrdG9wIGZ1bmN0aW9uYWxpdHksIGJ1dCB5b3UgZG9uJ3QgaGF2ZSAKPiB0byB1c2UgdGhpcyB1
bmxlc3MgeW91IHdhbnQgaXQuCj4gCj4gCj4gU29tZSB0aW1lIGJhY2ssIHNvbWUgcGVvcGxlIGhh
ZCBzYWlkIHRoZXkgd2VyZSBzdWNjZXNzZnVsbHkgdXNpbmcgYSBmaWxlIAo+IG1hbmFnZXIgY2Fs
bGVkIHBjbWFuZm0sIGFuZCBpdCBpcyBxdWl0ZSBhIGJpdCBzbWFsbGVyIGluIHNpemUgdGhhbiBj
YWphLCAKPiBidXQgaXQgYXBwZWFycyB0byBiZSBxdWl0ZSBvbGQsIGFuZCB0aGUgVVJMIGxpc3Rl
ZCBpbiBwYWNrYWdlIHJlcG9zaXRvcmllcwo+IAo+IGh0dHA6Ly9wY21hbmZtLnNvdXJjZWZvcmdl
Lm5ldAo+IAo+IHdoaWNoIHJlZGlyZWN0cyB0bwo+IAo+IGh0dHBzOi8vd2lraS5seGRlLm9yZy9l
bi9QQ01hbkZNCj4gCj4gaW5kaWNhdGVzIHRoYXQgaXQgY2FuJ3QgYWNjZXNzIHRoZSBkYXRhYmFz
ZSwgc28gSSBjYW4ndCBldmVuIGdldCBhbnkgCj4gaW5mb3JtYXRpb24gYWJvdXQgaXQuIEkganVz
dCBpbnN0YWxsZWQgaXQgaGVyZSBhbmQgdHJpZWQgdG8gcnVuIGl0LCBhbmQgCj4gSSBjYW4ndCBl
dmVuIGdldCBpdCB0byBzcGVhayB0byBtZSwgc28gaXQgbG9va3MgbGlrZSBjYWphIGlzIHlvdXIg
YmVzdCAKPiBiZXQsIGV2ZW4gdGhvdWdoIGl0IHRha2VzIHVwIGEgYml0IG1vcmUgZGlzayBzcGFj
ZSBhbmQgcHVsbHMgaW4gYSBiaXQgb2YgCj4gTUFURSBhbG9uZyB3aXRoIGl0Lgo+IAo+IH5LeWxl
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

