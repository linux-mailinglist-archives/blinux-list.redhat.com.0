Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 277473D221D
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 12:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626949859;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WI0ukrLOA+YLXSbBvLcElj0WzqjFFVFUh9oo3TVfDUI=;
	b=H1o7Fuzg+9FyiSBgUEY4VDTSJAppNx742VvXV+uA66ML1+LaDbzmALTfdIJ18L/TXRuG11
	I2N1H42cCInFnqtEF/kGlbe7YucK/1BVyYTcouWZU6IlqCeSEf1h4IzgpYgqRzPOgpI5Xh
	auAYa85oOMpAWlHbp2S6xsNU5SvQSs8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-SWRVcilJOcWHkXt2xOysBQ-1; Thu, 22 Jul 2021 06:30:52 -0400
X-MC-Unique: SWRVcilJOcWHkXt2xOysBQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 060411009608;
	Thu, 22 Jul 2021 10:30:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77C0760CA1;
	Thu, 22 Jul 2021 10:30:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8638180BAB1;
	Thu, 22 Jul 2021 10:30:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MAUgs5024593 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 06:30:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9EAE4208BDF8; Thu, 22 Jul 2021 10:30:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A2FD2089A00
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:30:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 56111800FFB
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:30:39 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-425-h4c1pMhMMneykzYjOJ409g-1;
	Thu, 22 Jul 2021 06:30:37 -0400
X-MC-Unique: h4c1pMhMMneykzYjOJ409g-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D2ED8A39D0
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:30:34 +0200 (CEST)
Subject: Re: A question on speakup
To: blinux-list@redhat.com
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
Message-ID: <5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
Date: Thu, 22 Jul 2021 12:30:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16MAUgs5024593
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

SGkgQnJhbmR0LAoKZm9yIFNsaW50OgoKaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRt
bCNfY29uZmlndXJlX2FfY29uc29sZV9zY3JlZW5fcmVhZGVyCgpJIGRvbid0IGtub3cgYSBzcGVj
aWZpYyBzb2Z0d2FyZSBzeW50aGVzaXplciBmb3IgRGVjdGFsaywgYnV0IGp1c3QgdHlwZSAKYXMg
cm9vdDoKc3BlYWstd2l0aAoKVG8ga25vdyBtb3JlOgpodHRwczovL3NsaW50LmZyL2RvYy9IYW5k
Qm9vay5odG1sI19jaG9vc2VfYV9jb25zb2xlX3NjcmVlbl9yZWFkZXIKCkNoZWVycywKRGlkaWVy
Ci0tCkRpZGllciBTcGFpZXIKCkxlIDIyLzA3LzIwMjEgw6AgMTI6MDksIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBhbGwsCj4gCj4gCj4gSSB1c2Ug
dG8ga25vdyBob3cgdG8gc3RvcmUgYW5kIHRoZW4gcmVzdG9yZSBteSBzcGVha3VwIHNldHRpbmdz
LCAKPiBob3dldmVyLCB0byBteSB1dHRlciBzaGFtZSwgSSBmb3Jnb3QgaG93IHRvIGRvIHRoaXMu
Cj4gCj4gCj4gSSBhbHNvIHJlYWQgc29tZXdoZXJlIHRoYXQgdGhlcmUgaXMgYSBzb2Z0d2FyZSBE
ZWN0YWxrIHN5bnRoZXNpemVyIAo+IGF2YWlsYWJsZS4gSWYgYW55b25lIGtub3dzIGhvdyB0byBp
bnN0YWxsIGFuZCBjb25maWd1cmUgdGhpcyB0byB3b3JrIAo+IHdpdGggc3BlYWt1cCwgaXQgd291
bGQgcmVhbGx5IGJlIGFwcHJlY2lhdGVkLgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

