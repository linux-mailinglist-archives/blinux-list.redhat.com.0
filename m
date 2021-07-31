Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BD6513DC69A
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 17:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627745057;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JnG3jh0WW8YNxlWsHQFp/LnIKut6XKkcDVYUcisDpBU=;
	b=fvo3hbZ1Q07DP0ih2u9U4Ka/WO+dELyc45HN4414s1etakaGDOdUrtNF7qImXX1HTt9vRM
	yaquD5DvhFbhS/eRd88S/llMDfZTC5jrfORg5VsRAOEY9esbotKjZE9fPNI7vAf+QGVWzW
	JQkuX3AaXcpLehoPP7YhgWJiKdJTAmQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-IqPDkwq_Pzuf9hwwqTKXgw-1; Sat, 31 Jul 2021 11:24:16 -0400
X-MC-Unique: IqPDkwq_Pzuf9hwwqTKXgw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAFDC34820;
	Sat, 31 Jul 2021 15:24:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC36F69CB7;
	Sat, 31 Jul 2021 15:24:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84F3A4A7C8;
	Sat, 31 Jul 2021 15:24:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VFICVq028368 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 11:18:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A3D65117C2CD; Sat, 31 Jul 2021 15:18:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F1E8117C2CC
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 15:18:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5ED5866DF4
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 15:18:09 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-433-DG0YRf1APlerVYvs_hoayA-1;
	Sat, 31 Jul 2021 11:18:06 -0400
X-MC-Unique: DG0YRf1APlerVYvs_hoayA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A17C9A39DC
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 15:18:01 +0200 (CEST)
Subject: Re: Interesting issue
To: blinux-list@redhat.com
References: <b5bb7159-46d6-4cc3-9e36-b66ec3b2c195@gmail.com>
Message-ID: <291d66ed-a120-f60b-649b-728ed0790a33@slint.fr>
Date: Sat, 31 Jul 2021 17:18:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <b5bb7159-46d6-4cc3-9e36-b66ec3b2c195@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16VFICVq028368
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKWW91IGFyZSBkb2luZyBzZXZlcmFsIHRoaW5ncyB3cm9uZywgdW5mb3J0dW5h
dGVseToKMS4gUnVubmluZyBTbGludC4gSSBrbm93IHRoYXQgU2xpbnQgaXMgYmFkLCBhcyBJIGFt
IGl0cyBtYWludGFpbmVyIDotKQoyLiBVc2luZyBzdWRvLCB1bmxlc3MgeW91IGRpZCBjb25maWd1
cmUgaXQgeW91cnNlbGYuIEl0IGlzIG5vdCAKY29uZmlndXJlZCBieSBkZWZhdWx0LCBzbyB3aGVu
IHJ1bm5pbmcgc3VkbyB5b3UgZG9uJ3QgaW5jbHVkZSBpbiAkUEFUSCAKdGhlIGRpcmVjdG9yaWVz
IC9zYmluIGFuZCAvdXNyL3NiaW4uCnNlZSBhYm91dCB0aGF0IHRoZSBwYXJhZ3JhcGggMy40LjEg
aW46Cmh0dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRCb29rLmh0bWwjX3RoZV9zaGVsbAphbmQgYWxz
bzoKaHR0cHM6Ly9zbGludC5mci9kb2Mvc2hlbGxfYW5kX2Jhc2hfc2NyaXB0cy5odG1sI3NlYy1u
ZXctYmFzaC1yb290ClNvIHlvdSBjb3VsZCBqdXN0IHR5cGUgaW5zdGVhZDoKc3UgLQpzcGkgLXUK
c3BpIC1VCmV4aXQgIwlvciBDdHJsK2QKClBTIEkgaGF2ZSByZWFkIHlvdSBtZXNzYWdlOgpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9hcmNoaXZlcy9ibGludXgtbGlzdC8yMDIxLUp1bHkvbXNn
MDAxOTEuaHRtbAoKSSBkaWRuJ3QgYW5zd2VyIHlldCBiZWNhdXNlIHRoaXMgbmVlZHMgc29tZSB0
aW1lIHRvIHRyeSB0byByZXByb2R1Y2UgYW5kIApJIGFtCnJhdGhlciBidXN5IHJpZ2h0IG5vdy4K
Ck1heWJlIHBvc3Qgb24gdGhlIFNsaW50IG1haWxpbmcgbGlzdD8gVGhpcyBjb3VsZCBhbHNvIGhl
bHAgb3RoZXIgdXNlcnMuCgpMYXN0IEkgcGxhbiB0byBwcm92aWRlIHNvb24gKG1heWJlIHRvZGF5
KSB1cGRhdGVzIHRoYXQgd2lsbCBhdm9pZCAKZGlzY3JlcGFuY2llcwppbiBwYWNrYWdlcycgbmFt
aW5nIGJldHdlZW4gc2xhY2tidWlsZHMub3JnIGFuZCBTbGludCwgdGh1cyBtYWtpbmcgc2xhcHQt
c3JjCm1vcmUgcmVsaWFibGUuCgpDaGVlcnMsCkRpZGllcgotLQpEaWlkZXIgU3BhaWVyClNsaW50
IG1haW50YWluZXIKCkxlIDMxLzA3LzIwMjEgw6AgMTY6MzIsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBhbGwsCj4gCj4gCj4gSSBhbSB0cnlpbmcg
dG8gcnVuIGFuIHVwZGF0ZSBvbiBteSBTbGludCBzeXN0ZW0sIGJ1dCBJIGdldCB0aGUgZXJyb3Ig
Cj4gdXBncmFkZXBrZyBjb21tYW5kIG5vdCBmb3VuZC4gSSBhbSBydW5uaW5nIHN1ZG8gc3BpIC11
ICYmIHN1ZG8gc3BpIC1VLiAKPiBFdmVyeXRoaW5nIGdvZXMgb2sgdW50aWxsIEkgZ2V0IHRoZSAi
dXBncmFkZXBrZyBjb21tYW5kIG5vdCBmb3VuZCIgZXJyb3IuCj4gCj4gCj4gV2hhdCBhbSBJIGRv
aW5nIHdyb25nPwo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

