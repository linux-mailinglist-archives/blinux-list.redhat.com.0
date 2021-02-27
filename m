Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E5B7C326F16
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 22:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614462471;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=19/F/P2q5nX8qmkwSbi1dJYlKrBsRn3mOEqaRGiWzw8=;
	b=A4/B6brOvFRJHSQLr5eh1eABOHOqz/ZmP4VL4FVac+visGr7mvQZLxlL2fx37pIUSO+AJP
	bzg5IGKdzHRZuBo98D6MF/VOVwDGvDmCKY4XwpPoHTrVyXt3oxRatLjUYdYGIiuqXdrqPV
	bieYTL1kRSLm0rHoUiXef51xiwRQ1hE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-vU2qtuYzMU-x8hH1HPxp5w-1; Sat, 27 Feb 2021 16:47:48 -0500
X-MC-Unique: vU2qtuYzMU-x8hH1HPxp5w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 130D7C285;
	Sat, 27 Feb 2021 21:47:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 481451F463;
	Sat, 27 Feb 2021 21:47:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1958B4E9E2;
	Sat, 27 Feb 2021 21:47:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RLlbM4012366 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 16:47:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F05B06B585; Sat, 27 Feb 2021 21:47:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA1336B5B1
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 21:47:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C20B29988E2
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 21:47:34 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-458-E8K0oXUoP8enxS3pB6Fq5Q-1;
	Sat, 27 Feb 2021 16:47:32 -0500
X-MC-Unique: E8K0oXUoP8enxS3pB6Fq5Q-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id F324ABE2FB
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 21:46:18 +0100 (CET)
Subject: Re: Running Android Voices in Linux?
To: blinux-list@redhat.com
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
Message-ID: <d55a63be-a65d-baf3-7caa-ea9f8fd1da0e@slint.fr>
Date: Sat, 27 Feb 2021 22:46:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11RLlbM4012366
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

QXMgYW4gYXNpZGUsIGNsb25lIGl0IGxpa2UgdGhpczoKCmdpdCBjbG9uZSAtLXJlY3Vyc2l2ZSBo
dHRwczovL2dpdGh1Yi5jb20vUkhWb2ljZS9SSFZvaWNlLmdpdAoKU29tZSBwYXJ0cyBhcmUgcHJv
dmlkZWQgYXMgc3ViLW1vZHVsZXMgc28gZWxzZSB0aGV5IHdpbGwgbWlzcyB3aGVuIGJ1aWxkaW5n
LAppbmNsdWRpbmcgdGhlIG5ldyBWaWN0b3JpYSBSdXNzaWFuIHZvaWNlLCBhbmQgdGhlIHdob2xl
IGJ1aWxkIHdpbGwgZmFpbC4KClNwZWFraW5nIGZyb20gKGJhZCkgZXhwZXJpZW5jZS4uLgoKQmVz
dCwKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKU2xpbnQgbWFpbnRhaW5lcgpodHRwczovL3NsaW50
LnIKCkxlIDI3LzAyLzIwMjEgw6AgMjI6MjksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gYSDDqWNyaXTCoDoKPiBJIGtub3cgdGhhdCBzYW1wbGVzIGFyZSBhdmFpbGFibGUgZm9y
IFJIVm9pY2UgaW4gdGhlIEFuZHJvaWQgYXBwLCBidXQgCj4gSSdtIG5vdCBpbW1lZGlhdGVseSBm
aW5kaW5nIHNhbXBsZXMgb24gYSB3ZWJzaXRlIG9yIGFueXRoaW5nIGN1cnJlbnRseS4gCj4gVGhl
IFJIVm9pY2UgTGludXggc29mdHdhcmUgY2FuIGJlIGNsb25lZCBmcm9tCj4gCj4gaHR0cHM6Ly9n
aXRodWIuY29tL3Jodm9pY2Uvcmh2b2ljZS5naXQKPiAKPiBhbmQgb2YgY291cnNlIGhhdmUgYSBs
b29rIGF0IHRoZSBtYWluIHJlcG9zaXRvcnkgcGFnZS4KPiAKPiBodHRwczovL2dpdGh1Yi5jb20v
cmh2b2ljZS9yaHZvaWNlCj4gCj4gSG9wZSBpdCBoZWxwcy4KPiAKPiB+S3lsZQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

