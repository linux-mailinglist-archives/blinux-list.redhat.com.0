Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C217B451140
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 20:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637002917;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Jy9/TAHqKRre3eopikkkqI7SAC1rVKPU9TLxtI6os4c=;
	b=SL1vYsPjsOVipwPrmHrQGjPubWho1O1odOirpyN5pZJasLNZ6Ls3Na0JbOa4PBEBQxqEkv
	U8wo71qLPfwB3fNXNpHhiX7e4Ux6v60n5QBgAvimrBZMlgz4mFKedHgsANpBW2jlKACXTj
	aLpmSF6Ip0SB3889rUOCLiSDZVP2n/0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-mS576SclPgCPAaP9EZ-W6A-1; Mon, 15 Nov 2021 14:01:54 -0500
X-MC-Unique: mS576SclPgCPAaP9EZ-W6A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 251E61922960;
	Mon, 15 Nov 2021 19:01:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 917FB19723;
	Mon, 15 Nov 2021 19:01:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 155B31819AC1;
	Mon, 15 Nov 2021 19:01:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFJ1fSn009847 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 14:01:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 347B051E4; Mon, 15 Nov 2021 19:01:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DA8351E1
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 19:01:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6FE74181E060
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 19:01:37 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-5-pBN0QQ9mOHG8PWNj1XcDqg-1;
	Mon, 15 Nov 2021 14:01:35 -0500
X-MC-Unique: pBN0QQ9mOHG8PWNj1XcDqg-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 10044A39AE
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:00:57 +0100 (CET)
Message-ID: <eae09edf-a1e6-60dd-9c93-0ebb688e6748@slint.fr>
Date: Mon, 15 Nov 2021 21:01:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: telegram-cli
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2111150226160.6002@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2111150226160.6002@panix1.panix.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AFJ1fSn009847
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

SGkgd2hvZXZlciBJIGFtIGFuc3dlcmluZyB0bywKCnRlbGVncmFtLWNsaSBpcyBpbmNsdWRlZCAg
YW4gdXAgdG8gZGF0ZSBTbGludCBzeXN0ZW0sIHBsZWFzZSBkbyBub3QgdXNlIApzYm9wa2cKdG8g
YWRkIGl0LCBhcyB0aGlzIGNvdWxkIGxlYWQgdG8gYSBjb25mbGljdCBiZXR3ZWVuIHR3byB2ZXJz
aW9ucyBpbnN0YWxsZWQuCkZ1cnRoZXIsIHRoZSB2ZXJzaW9uIHNoaXBwZWQgaW4gU2xpbnQgaXMg
bmV3ZXIgdGhhdCB0aGUgb25lIGF2YWlsYWJsZSBmcm9tCmh0dHBzOi8vc2xhY2tidWlrZHMub3Jn
CgpTbyBJIHN1Z2dlc3QgeW91IHJlbW92ZSBhbGwgaW5zdGFsbGVkIHZlcnNpb25zLCB0aGVuIHJl
aW5zdGFsbCB3aXRoIHRoaXMKY29tbWFuZCB0eXBlZCBhcyByb290OgpzbGFwdC1nZXQgLWkgdGVs
ZWdyYW0tY2xpCgpBcyBhbiBhc2lkZSwgSSBzdWdnZXN0IHRvIHVzZSBzbGFwdC1zcmMgcmF0aGVy
IHRoYW4gc2JvcGtnLgoKVG8ga25vdyBtb3JlOgpodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9v
ay5odG1sI3NvZnR3YXJlX21hbmFnZW1lbnQKaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2su
aHRtbCNzbGFwdF9zcmMKCkNoZWVycywKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKU2xpbnQgbWFp
bnRhaW5lcgoKTGUgMTUvMTEvMjAyMSDDoCAwODozMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhhdmluZyB1c2VkIHRoZSBwYWNrYWdlIGFuZCBnb3Qg
bG9nZ2VkIGludG8gdGVsZWdyYW0gYW5kIGhhdmluZyBqb2luZWQgYQo+IGdyb3VwIGFuZCBhIGNo
YW5uZWwgZWl0aGVyIHNvbWV0aGluZyBpc24ndCBjb25maWd1cmVkIGNvcnJlY3RseSBvbiBteQo+
IHN5c3RlbSBvciB0aGlzIHBhY2thZ2UgZm9yIGxpbnV4IGlzIGJhZGx5IGNyaXBwbGVkLgo+IFRo
ZSBleHBvcnRfY2FyZCBhbmQgaW1wb3J0X2NhcmQgbWV0aG9kcyB0aHJvdyBlcnJvciA3MSB3aGlj
aCBpcyB1bmtub3duCj4gZXJyb3IgYW5kIHRoYXQncyBhYm91dCBhbGwgdGhpcyBwYWNrYWdlIGNh
biBkby4KPiBIYXMgYW55b25lIGhhZCBiZXR0ZXIgbHVjayB3aXRoIHRoaXMgcGFja2FnZSBhbmQg
aWYgc28sIHdoYXQgYW0gSSBtaXNzaW5nCj4gZnJvbSBzb2Z0d2FyZSBwYWNrYWdlcyBhbmQvb3Ig
Y29uZmlndXJhdGlvbj8gIEkgdXNlZCBzbGludCB0byBpbnN0YWxsIHRoaXMKPiBmcm9tIHRlbGVn
cmFtLWNsaS5zcWYgcGFja2FnZSB3aXRoIHNib3BrZyBhbmQgSSBjcmVhdGVkIHRlbGVncmFtLWNs
aS5zcWYKPiB3aXRoIHNxZyBiZWZvcmUgZG9pbmcgYW4gaW5zdGFsbGF0aW9uLgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

