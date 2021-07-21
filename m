Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B4D453D0A21
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 09:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626854272;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RZEembgcRVOWu+79DlVXpXOUg68fxI0LPqbL5jaV024=;
	b=Qr/DARDLgkzHHejbUUVNxqQN1jsMaaRcA+nDrqIlm8RnlzQHNp+SNV7MNIvIx+T5PErgKR
	xzbLF/ifIexgCRn68QcFJbLBypDGj670HK0RVWaYRoxuPDpAlz1hH0ah/gSvoQWEooFlb1
	/GsGw/TRjuWW8UaO8ZQ4aVihQFT82hg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-7qlx2Of1P_y00O0CEAmdEw-1; Wed, 21 Jul 2021 03:57:51 -0400
X-MC-Unique: 7qlx2Of1P_y00O0CEAmdEw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6E0D1084F54;
	Wed, 21 Jul 2021 07:57:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D903B5D9DC;
	Wed, 21 Jul 2021 07:57:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 81A294A7C8;
	Wed, 21 Jul 2021 07:57:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16L7vc4R016132 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 03:57:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6FE1221EC5CB; Wed, 21 Jul 2021 07:57:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B7AD200E657
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 07:57:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABCAF802A59
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 07:57:35 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-54-1hQKQLvNNSKPyuUrybO9RQ-1;
	Wed, 21 Jul 2021 03:57:33 -0400
X-MC-Unique: 1hQKQLvNNSKPyuUrybO9RQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 5AFA9A410E
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 07:57:31 +0200 (CEST)
Subject: Re: Thunderbird on Slint
To: blinux-list@redhat.com
References: <ec2eb69c-aade-21c0-bc11-5d462376cd65@gmail.com>
Message-ID: <0a32310f-3412-ea9d-0354-d9f7a94f91fd@slint.fr>
Date: Wed, 21 Jul 2021 09:57:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <ec2eb69c-aade-21c0-bc11-5d462376cd65@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16L7vc4R016132
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKc2hvcnQgYW5zd2VyOgpodHRwOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82
NC9zbGludC0xNC4yLjEvdGVzdGluZy9SRUFETUUKCkRpc2NhcmQgdGhlIGNvbW1lbnQgYWJvdXQg
U3BlZWNoIERpc3BhdGNoZXIsIGEgZmFpcmx5IHJlY2VudApvbmUgaXMgCWFscmVhZHkgaW4gU2xp
bnQuCgpNb3JlOgpodHRwczovL3NsaW50LmZyL2RvYy8KCkNoZWVycywKRGlkaWVyCi0tCkRpZGll
ciBTcGFpZXIKCkxlIDIxLzA3LzIwMjEgw6AgMDg6NTMsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBhbGwsCj4gCj4gCj4gSSBqdXN0IGNoZWNrZWQg
dGhlIHZlcnNpb24gb2YgVGh1bmRlcmJpcmQgaW4gc2xpbnQsIGFuZCBJIHNhdyBpdCBpcyAKPiBh
Ym91dCAxMCB2ZXJzaW9ucyBvdXQgb2YgZGF0ZS4gSXMgdGhlcmUgYSB3YXkgdG8gZ2V0IGEgbmV3
ZXIgdmVyc2lvbiBvZiAKPiB0aGUgc29mdHdhcmU/IEkga25vdywgSSBjYW4gcHJvYmFibHkgZ2V0
IGl0IGZyb20gZ2l0aHViLCBidXQgSSBtdXN0IAo+IGFkbWl0LCBpdCBpcyBub3QgbXkgZmF2b3Jp
dGUgd2F5IG9mIGluc3RhbGxpbmcgc29mdHdhcmUuCj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

