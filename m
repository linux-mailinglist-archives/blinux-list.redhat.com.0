Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E6408330368
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 18:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615138873;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mAp3ynxAZMygPi8wQHYuP5U4E3GZaGezQ1jWduZqtLw=;
	b=Aix3DWpy9ZS/EIZ2Wo8yp91vO35iuIG7df3Lo23I9FQ9nPkugrPXEa66p+fKD9Cmg1qwej
	gtOGrwzZYbZiInDPOHCZ2KSbwINAvWxh02k4Oaprshwyc255KSjfS7RNYRRgRpZcbM23Ay
	ifg8rlpQl3AzR+2bQZ8Laarnl0g1PDA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-fCkEwpDsMWaxJg6cJr5ChQ-1; Sun, 07 Mar 2021 12:41:10 -0500
X-MC-Unique: fCkEwpDsMWaxJg6cJr5ChQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B5D92F7A0;
	Sun,  7 Mar 2021 17:41:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03C365C1CF;
	Sun,  7 Mar 2021 17:41:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 605014EA30;
	Sun,  7 Mar 2021 17:41:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127Hf2TX010790 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 12:41:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 282C1200E264; Sun,  7 Mar 2021 17:41:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23148200E263
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 17:41:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA486800296
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 17:40:59 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-316-AqsdTvw7NsWvLbuM-DNR5g-1;
	Sun, 07 Mar 2021 12:40:57 -0500
X-MC-Unique: AqsdTvw7NsWvLbuM-DNR5g-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6B693BE497
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 17:39:43 +0100 (CET)
Subject: Re: Running Android Voices in Linux?
To: blinux-list@redhat.com
References: <e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
	<Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
	<161511660705.7.9147299505595485066.4503426@simplelogin.co>
	<161513159250.7.551543312534109967.4507622@slmail.me>
	<161513379264.7.3425024273159773823.4508247@simplelogin.co>
	<161513774886.7.2076841472683858930.4509753@slmail.me>
Message-ID: <8b45ab0e-2199-96f6-58f1-72b7c14aa680@slint.fr>
Date: Sun, 7 Mar 2021 18:39:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <161513774886.7.2076841472683858930.4509753@slmail.me>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 127Hf2TX010790
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWFnaWMgV29ybWhvbGUgaXMgY29tZXMgaGFuZHkgZm9yIHRoYXQuCk5vIG5lZWQgb2YgYW4gZW1h
aWwgYWRkcmVzcyBvciBvZiBhIHN0b3JhZ2Ugc3BhY2Ugb24gdGhlIHdlYgp0byBzZW5kIG9yIHJl
Y2VpdmUgZmlsZXMuCgpEaWRpZXIKCkxlIDA3LzAzLzIwMjEgw6AgMTg6MjIsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBDaGltZSwKPiBJIHRoaW5r
IHlvdSBwb3N0ZWQgeW91ciBlbWFpbCBhZGRyZXNzIGluIGEgcHJldmlvdXMgbWVzc2FnZSBmb3Ig
bWUgdG8gY29udGFjdCB5b3UuCj4gSSdsbCBsb29rIGJhY2sgdGhyb3VnaCB0aGUgbWVzc2FnZXMg
YW5kIHRyeSB0byBmaW5kIGl0Lgo+IFVuZm9ydHVuYXRlbHkgSSBkb24ndCBoYXZlIGFueSBhY2Nv
dW50cyB3aXRoIGZpbGUgc2hhcmluZyBzb2Z0d2FyZSBidXQgcGVyaGFwcyB5b3UgY291bGQgZW1h
aWwgdGhlbSB0byBtZSBkaXJlY3RseSBkZXBlbmRpbmcgb24gaWYgeW91ciBlbWFpbCBjbGllbnQg
Y2FuIHNlbmQgZmlsZXMgdGhhdCBsYXJnZS4KPiBJJ2xsIGxvb2sgdGhyb3VnaCB0aGUgcHJldmlv
dXMgbWVzc2FnZXMsIEkgdGhpbmsgeW91IHBvc3RlZCB5b3VyIGVtYWlsIHRoZXJlLgo+IFRoYW5r
cywKPiBTTAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

