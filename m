Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4AB2233004B
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 12:30:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615116604;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l31VGZSSCw5vlXUxvNwXggwMe3w72Ob+NWLB5Fq3Df0=;
	b=O+bSi4fnHSmhZoo9kn8MR9okcU7J627lCjBpsVhQz9f9fs+vixjxjWPwvY36/efbDaZWcD
	OUaz1+ES6nTQaPJh6CsOl8ipNNnS387pcxZnK+LTG0+AYoqC4lWGbnQ6Cl5IhDJqEes9bg
	uIQmHuvagfiJIU3eIiSePWE47sYc0UU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-97ZhMYJRNyKd6zjtQck1Fg-1; Sun, 07 Mar 2021 06:30:01 -0500
X-MC-Unique: 97ZhMYJRNyKd6zjtQck1Fg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9013480432E;
	Sun,  7 Mar 2021 11:29:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B2825D6AB;
	Sun,  7 Mar 2021 11:29:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CEAA01809C86;
	Sun,  7 Mar 2021 11:29:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127BTQF4007850 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 06:29:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2220D100321D; Sun,  7 Mar 2021 11:29:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DCA51134CA3
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 11:29:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4179A80A1D1
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 11:29:23 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
	[209.85.218.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-161-7vYaD3qVM7GZkQTjhVnn6w-1; Sun, 07 Mar 2021 06:29:20 -0500
X-MC-Unique: 7vYaD3qVM7GZkQTjhVnn6w-1
Received: by mail-ej1-f45.google.com with SMTP id p8so14189994ejb.10
	for <blinux-list@redhat.com>; Sun, 07 Mar 2021 03:29:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:date:message-id:in-reply-to:references
	:user-agent:subject:mime-version;
	bh=w1uotXCnfWHgilZ/R3TcrPZ6B+hcGRL6b+/kQFauTu4=;
	b=c4jdPy8uwcvLr675uQBZ3s63SNPbT90pCD55SstljVZDyd7LWu8EQZedhqikjfOc1N
	5zm3nwyoRhI8xkiuRzv8G/grCAWiQiS6kyaGo0WEUouvs4UF12hZRkbdd2raopfw5voM
	8+NJtx5Z8w8lViEghYS1rz7Ot6yjQpA/TL1LsKiOSGcOFoWWOZjysiq6vvmHF6y9yIm3
	NeO/vtTEhbt0ljjqBL0/GOq6uW4RGlwCFJQO2Rlyci5ihW4XiI2u1nuubJmmZ27JkcEu
	7sb5B+pNpqZ1BQtSu5XgDE1u5eyZmwbvoPWJllbP6EP+7cIdrgE0+GX92piV2HQAWR25
	4pmQ==
X-Gm-Message-State: AOAM532Z82SuSSWACFiM8NLjFgqJ3wSDJZREQGrT6C1YL4d8utCroLzT
	Ux5Ffqq7ZVuwuM/+e6DriXe/OsiKMWI=
X-Google-Smtp-Source: ABdhPJyWHqoV2dh2XkfEb4BxgDJf7nrnJcCbeo1lXuGMgnFTpIYw9o6GTWK3xutVz2KRqtFUZOxHyw==
X-Received: by 2002:a17:906:1447:: with SMTP id
	q7mr10860972ejc.27.1615116559020; 
	Sun, 07 Mar 2021 03:29:19 -0800 (PST)
Received: from [100.115.92.14] (m83-187-173-225.cust.tele2.se.
	[83.187.173.225]) by smtp.gmail.com with ESMTPSA id
	lk12sm4721516ejb.14.2021.03.07.03.29.17 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 07 Mar 2021 03:29:18 -0800 (PST)
To: <blinux-list@redhat.com>
Date: Sun, 07 Mar 2021 12:29:08 +0100
Message-ID: <1780c72b7a0.276f.afbff0009b353412c733e12e23e6ae2b@gmail.com>
In-Reply-To: <Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
	<Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
User-Agent: AquaMail/1.28.1-1760 (build: 102800003)
Subject: Re: Running Android Voices in Linux?
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

b3IgY2hyb21lYm9va3MKCgoKRGVuIDI4IGZlYnJ1YXJpIDIwMjEgMDQ6MTg6NDUgc2tyZXYgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiAKPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
OgoKPiBOYXVnaHR5IE5hdWdodHksIHN1Z2dlc3RpbmcgIExpbnV4IGNhbm5vdCBzYXZlIHRoZSBk
YXkgZ3Jpbi4KPiBPbmx5IHdpbmRvd3MgYXQgdGhpcyBlbmQgYXJlIG1hZGUgb2YgZ2xhc3MuCj4K
Pgo+Cj4gT24gU3VuLCAyOCBGZWIgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPgo+PiBXaHkgbm90IHVzZSB3b3JtaG9sZSwgaWYgaW5zdGFsbGVkIG9uIGJv
dGggZW5kcz8KPj4gRGlkaWVyCj4+Cj4+IExlIDI4LzAyLzIwMjEgw6AgMDA6MjEsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+ICBXZWxsLCBTTC1hbmQt
T3RoZXJzLCB0dXJucyBvdXQgdGhlIGNvbXByZXNzZWQgZmlsZSBpcyAxLjVHQi4gSSB3b3VsZCBi
ZQo+Pj4gIGhhcHB5IHRvIHVwbG9hZCB0byBhbiBmdHAgb3Igc29tZXdoZXJlLCBhcyBJIGFtIG1v
c3QgY29tZm9ydGFibGUgd2l0aCBhbgo+Pj4gIG5jZnRwIGludGVyZmFjZS4gVGhhbmtzIHNvIG11
Y2ggaW4gYWR2YW5jZQo+Pj4gIENoaW1lCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+Cj4gLS0tLS0tLS0tLQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

