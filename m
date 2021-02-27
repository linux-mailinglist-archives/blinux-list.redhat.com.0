Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 099A4326FA6
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 00:42:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614469343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+yRc6UGbVbkYUZkktf676eDGRSmBlxxQd6wCK7ULc7w=;
	b=V36gfwSnDyyMshBVqwvUxGCF5rU6aXn3PKTCX5Rt2EKOkka2ao+gb9YLccMJVFZaonZNNP
	y5rUZkIyy+Hmk/4FJ8v7tUweD/BzajHgjuSBTAEORW7NKETqz8gTR+0uDan4splL49fcAZ
	Ns7yGQ11BJwkmQ2uHZE5DKOr2jZZd5A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-WKGOLS4eMX-ieoCZTFLdqQ-1; Sat, 27 Feb 2021 18:42:21 -0500
X-MC-Unique: WKGOLS4eMX-ieoCZTFLdqQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B65E107ACE8;
	Sat, 27 Feb 2021 23:42:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B66277BF2;
	Sat, 27 Feb 2021 23:42:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE5154E58E;
	Sat, 27 Feb 2021 23:42:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RNgDK5026016 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 18:42:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9035B1111C66; Sat, 27 Feb 2021 23:42:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C2A0113051F
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:42:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22F2685A59D
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:42:11 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-177-FhO5T4mvMbuMT9f_OIjlSQ-1;
	Sat, 27 Feb 2021 18:42:08 -0500
X-MC-Unique: FhO5T4mvMbuMT9f_OIjlSQ-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 96E41BE49B
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 23:40:55 +0100 (CET)
Subject: Re: Running Android Voices in Linux?
To: blinux-list@redhat.com
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
Message-ID: <1c8a578d-4c41-955e-e5a3-65e942160797@slint.fr>
Date: Sun, 28 Feb 2021 00:41:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11RNgDK5026016
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBmb3Jnb3QgdGhlIGxpbmsgZm9yIEFyY2g6Cmh0dHBzOi8vYXVyLmFyY2hsaW51eC5vcmcvcGFj
a2FnZXMvbWFnaWMtd29ybWhvbGUvCkRpZGllcgoKTGUgMjgvMDIvMjAyMSDDoCAwMDozOSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFdoeSBub3QgdXNl
IHdvcm1ob2xlLCBpZiBpbnN0YWxsZWQgb24gYm90aCBlbmRzPwo+IERpZGllcgo+IAo+IExlIDI4
LzAyLzIwMjEgw6AgMDA6MjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPj4gV2VsbCwgU0wtYW5kLU90aGVycywgdHVybnMgb3V0IHRoZSBjb21wcmVzc2Vk
IGZpbGUgaXMgMS41R0IuIEkgd291bGQgCj4+IGJlIGhhcHB5IHRvIHVwbG9hZCB0byBhbiBmdHAg
b3Igc29tZXdoZXJlLCBhcyBJIGFtIG1vc3QgY29tZm9ydGFibGUgCj4+IHdpdGggYW4gbmNmdHAg
aW50ZXJmYWNlLiBUaGFua3Mgc28gbXVjaCBpbiBhZHZhbmNlCj4+IENoaW1lCj4gCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

