Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4B9593D4833
	for <lists+blinux-list@lfdr.de>; Sat, 24 Jul 2021 16:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627138410;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YtYhQuxoovvv7AeMQazTXqJs8DfPyB4NlG8OPgJW2u8=;
	b=NlXZ4l0bo7ftRPxUXcvNml5utlcGrvDsnAtMeTgbUzGQKuZjKSZpXIlNaxwkMlPKrkP9fy
	SOWcqKlIpkyYrY1kvORTQ9aOketlmuvPIDdtSW89pNsMNq8P9BLW8+SCDLxo/UoPFEdDQb
	P9JN363Luxj46sj/TrgnXSotiA21GKo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-499-eb8rt-3WM3eb1rAuFCjJNw-1; Sat, 24 Jul 2021 10:53:28 -0400
X-MC-Unique: eb8rt-3WM3eb1rAuFCjJNw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BAA8E69737;
	Sat, 24 Jul 2021 14:53:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E288910074E1;
	Sat, 24 Jul 2021 14:53:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2EE02180BAB1;
	Sat, 24 Jul 2021 14:53:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16OErBDV024434 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Jul 2021 10:53:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 63100215CDC3; Sat, 24 Jul 2021 14:53:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E0B2215CDB7
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 14:53:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 787A7804BDD
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 14:53:08 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-297-xtwrsZKxNJulRcyGL5_O8A-1;
	Sat, 24 Jul 2021 10:53:05 -0400
X-MC-Unique: xtwrsZKxNJulRcyGL5_O8A-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 49774A399A
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 14:53:02 +0200 (CEST)
Subject: Re: Flatpak on Slint
To: blinux-list@redhat.com
References: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
Message-ID: <2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
Date: Sat, 24 Jul 2021 16:53:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16OErBDV024434
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKSSBuZXZlciB1c2VkIGZsYXRwYWsgb3IgdHdpdHRlciwgaG93ZXZlci4uLgoK
bWF5YmUgYSBwb3N0IGluc3RhbGxhdGlvbiBjb25maWd1cmF0aW9uIGlzIG5lZWRlZCwgYXMgaW5k
aWNhdGVkIGluOgpodHRwczovL3NsYWNrYnVpbGRzLm9yZy9zbGFja2J1aWxkcy8xNC4yL2Rlc2t0
b3AvZmxhdHBhay9SRUFETUUKCklmIHRoaXMgZG9lc24ndCBoZWxwLCBwbGVhc2UgcG9zdCB0aGUg
ZXhhY3Qgc3RlcHMgeW91IHRvb2sgdG8gaW5zdGFsbCAKZmxhdHBhawp0aGVuIGNhd2JpcmQgYW5k
IHN0YXJ0IGNhd2JpcmQuCgpUaGVuIEknbGwgdHJ5IHRvIHJlcHJvZHVjZXMgbGF0ZXIgdG9kYXku
CgpDaGVlcnMsCgpEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgoKCkxlIDI0LzA3LzIwMjEgw6AgMTY6
MjcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBh
bGwsCj4gCj4gCj4gSSBpbnN0YWxsZWQgZmxhdHBhayBvbiBteSBTbGludCBpbnN0YWxsYXRpb24s
IGZvciB0aGUgc2ltcGxlIHJlYXNvbiwgCj4gdGhlcmUgYXJlIG5vIHVwIHRvIGRhdGUgVHdpdHRl
ciBjbGllbnRzIHRoYXQgSSBjYW4gZmluZC4KPiAKPiAKPiBJIGxvb2tlZCBhdCB0aGUgU2xhY2ti
dWlsZHMsIGJ1dCBub3RoaW5nLiBDYXdiaXJkLCBteSBmYXZvcml0ZSBMaW51eCAKPiBjbGllbnQs
IGZvciBub3csIGlzIGF2YWlsYWJsZSBhcyBhIGZsYXRwYWssIGJ1dCB3aGVuIEkgdHJ5IGFuZCBy
dW4gaXQsIEkgCj4gZ2V0IGEgYnJva2VuIFBpcGUgZXJyb3IuIENhbiBhbnlvbmUgaGVscCB3aXRo
IHRoaXMgaXNzdWU/Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

