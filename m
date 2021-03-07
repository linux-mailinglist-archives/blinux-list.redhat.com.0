Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E03CA3303DB
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 19:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615141149;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tVoLkN4yZuZJWkCzp8hQooizEad0c8P45VgkOonQKVQ=;
	b=FDR/iTlzcfWrozIAA1nGqZb/HIAM/eo5D9yqrGQzzLKPSLx/OqJ1G2IclQ8dH3bsTVJpDW
	WdG5/7kbzMbc2N/9OEYjBxv9u3ghrf751T/RIi3ZaeIAHiq8a1CKW6bLCI8GhuENH4vWhD
	D/xgl3CNY6a1cLXXEfS0fu4l6AJnjv0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-206-eCOOL3owMjm-3L4TGve8SA-1; Sun, 07 Mar 2021 13:19:06 -0500
X-MC-Unique: eCOOL3owMjm-3L4TGve8SA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01049108BD08;
	Sun,  7 Mar 2021 18:19:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F2D92BFE8;
	Sun,  7 Mar 2021 18:19:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E3B151809C86;
	Sun,  7 Mar 2021 18:19:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127IIKi0013642 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 13:18:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 538792166BA2; Sun,  7 Mar 2021 18:18:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E35E2166B2D
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:18:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0108800B21
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:18:17 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-334-x6zhmpf4Pj-9zkJ2bZPDdg-1;
	Sun, 07 Mar 2021 13:18:15 -0500
X-MC-Unique: x6zhmpf4Pj-9zkJ2bZPDdg-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D7034BE497
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:17:00 +0100 (CET)
Subject: Re: Running Android Voices in Linux?
To: blinux-list@redhat.com
References: <e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
	<Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
	<161511660705.7.9147299505595485066.4503426@simplelogin.co>
	<161513159250.7.551543312534109967.4507622@slmail.me>
	<161513379264.7.3425024273159773823.4508247@simplelogin.co>
	<161513774886.7.2076841472683858930.4509753@slmail.me>
	<8b45ab0e-2199-96f6-58f1-72b7c14aa680@slint.fr>
	<ec4c2a3-3c6-79e4-bf4-cfdf16e45095@hubert-humphrey.com>
	<20210307.200214.512.2@[0.0.0.0]>
Message-ID: <fcbef57b-9d55-234f-d53c-56d7310de87c@slint.fr>
Date: Sun, 7 Mar 2021 19:17:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210307.200214.512.2@[0.0.0.0]>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 127IIKi0013642
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

SXQncyBiZXN0IHRvIHVzZSBpdCBpbiBhIChwb3NzaWJseSBwcml2YXRlKSBjaGF0LCBvciB0aGUg
c2VuZGVyCmNvbW11bmljYXRpbmcgdGhlIGNvZGUgdG8gdHlwZSBieSB0aGUgcmVjZWl2ZXIgYnkg
cGhvbmUuCkRpZGllcgoKTGUgMDcvMDMvMjAyMSDDoCAyMTowMiwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IGFwdC1nZXQgaW5zdGFsbCBtYWdpYy13b3Jt
aG9sZQo+IEJlIGF3YXJlIHRoaXMgcHJvdG9jb2wgZG9lcyBub3QgYWxsb3cgcmVzdW1pbmcsIGFu
ZCBpdCdzIGEgb25lIHVzZSB0aGluZy4KPiAtLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4g
RnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4KPiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4KPiBEYXRlOiBTdW4sIDcgTWFyIDIwMjEgMDk6NDg6MTMgLTA4MDAg
KFBTVCkKPiBTdWJqZWN0OiBSZTogUnVubmluZyBBbmRyb2lkIFZvaWNlcyBpbiBMaW51eD8KPiAK
Pj4gSGkgRGlkaWVyOiBUaGFuayB5b3UsIHdoaWxlIHlvdSBtZW50aW9uZWQgdGhpcyBsYXN0IHRp
bWUgSSBicm91Z2h0IHRoaXMgdXAsIEkKPj4gYW0gb25seSBpbiBjb25zb2xlLCBleGFjdGx5IHdo
YXQgd2lsbCBJIHJ1biBhbiBhcHQgZ2V0IGZvcj8gVGhhbmtzIGFnYWluLCB3b3VsZAo+PiBsb3Zl
IHRvIHRyeSB0aGlzLgo+PiBDaGltZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

