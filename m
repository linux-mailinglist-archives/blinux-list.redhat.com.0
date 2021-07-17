Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D5C1B3CC586
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 20:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626547071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jpgzbnzziL8yQym/NHr1wzM5LcQJ5bG0MxnL3CkN5HE=;
	b=hazAbIfFtBJ4mNRV+53s+VIx/L425BDLyNDYjjwiEGcQjbFXLrcRzTBOHkoAiUdLw5+Sof
	uhDNJAIqYUfUotD9FUnf4FQxBv79zmNHJLSD5Lr6k11lGBXGUmHxKvnCpErOEo75RzMScy
	gfcu3YjjGvYCjogtmLezzjXcb/2lyqE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-507-55tO7tPGMV60mI2QDIBHZA-1; Sat, 17 Jul 2021 14:37:50 -0400
X-MC-Unique: 55tO7tPGMV60mI2QDIBHZA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F081A100B3AE;
	Sat, 17 Jul 2021 18:37:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AC4427063;
	Sat, 17 Jul 2021 18:37:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CC0F84EA29;
	Sat, 17 Jul 2021 18:37:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16HIbcVT023496 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Jul 2021 14:37:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1D378100321D; Sat, 17 Jul 2021 18:37:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 187361003332
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 18:37:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 934F38556F2
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 18:37:33 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-531-TGpr0hz6O0ekiiP7rTOOew-1;
	Sat, 17 Jul 2021 14:37:30 -0400
X-MC-Unique: TGpr0hz6O0ekiiP7rTOOew-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6924BA404A
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 19:36:57 +0200 (CEST)
Subject: Re: recommended OCR solutions on Arch Linux
To: blinux-list@redhat.com
References: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
Message-ID: <0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
Date: Sat, 17 Jul 2021 20:37:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16HIbcVT023496
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9saW9zLWdpdC8KCkRpZGllcgotLQpE
aWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKaHR0cHM6Ly9zbGludC5mcgpkaWRpZXJhdHNs
aW50ZG90ZnIKCkxlIDE3LzA3LzIwMjEgw6AgMjI6MjUsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIZWxsbyBldmVyeW9uZSwKPiAKPiBJIGRvIG5vdCBr
bm93IGlmIHRoaXMgcXVlc3Rpb24gaGFzIGJlZW4gYXNrZWQgaW4gdGhlIHBhc3QsIHNvIEkgYW0g
c29ycnkgaWYKPiBJIG1pZ2h0IGJlIGJyaW5naW5nIHVwIHNvbWV0aGluZyB0aGF0IG1pZ2h0IGhh
dmUgYWxyZWFkeSBiZWVuIGRpc2N1c3NlZC4KPiBNeSBxdWVzdGlvbiBpcywgd2hhdCBHVUkgdGVz
c2VyYWN0IG9yIGN1bmVpZm9ybSBmcm9udCBlbmRzIHdvdWxkIHlvdQo+IHJlY29tbWVuZCB0byBh
IGZhaXJseSBuZXcgYXJjaCB1c2VyLCB3aG8gd2FudHMgc29tZXRoaW5nIHJlY29nbml6ZWQgaW4K
PiBkaWZmZXJlbnQgbGFuZ3VhZ2VzLCBhbmQgbmVlZHMgdGhlIGFiaWxpdHkgdG8gdXNlIGEgc2Nh
bm5lcj8KPiBUaGFua3MgZm9yIGFueSBhbnN3ZXIuCj4gQmVzdCByZWdhcmRzLgo+IEZyYW5jaXNj
by4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

