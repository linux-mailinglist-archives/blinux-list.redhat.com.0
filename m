Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 865BD45CFF3
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 23:17:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637792232;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LyDABZVCrmsnoHwD1J7mWaKADkj8ooiWLGSwVzp3N8A=;
	b=N+PynozP9NkbGjJDtwNguF2Rc+Hh29u+hQT0zs47gMMgYlMhWf37SlcR3cZPihIQvJgNue
	S9RonxC/M+ir3RLLxYEXDPPJQ3lPZAr8w/uHfJZ4seTG7xzj9p/LHf3EDzjXDAOYPyt+ha
	5ikXXuHk3tk5hMjmpg7P8MZ5iTp373I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-523-eXMG8GLnP-a_4fg3GlfUmQ-1; Wed, 24 Nov 2021 17:17:11 -0500
X-MC-Unique: eXMG8GLnP-a_4fg3GlfUmQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 381A3801AAB;
	Wed, 24 Nov 2021 22:17:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CA451835B;
	Wed, 24 Nov 2021 22:17:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C815B4BB7C;
	Wed, 24 Nov 2021 22:17:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOMGvH4026053 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 17:16:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 23326404727A; Wed, 24 Nov 2021 22:16:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ED2D4047272
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 22:16:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03DF8185A7BA
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 22:16:57 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-23-ewUFH2fLM2Cp0SBzm-2f7A-1; Wed, 24 Nov 2021 17:16:55 -0500
X-MC-Unique: ewUFH2fLM2Cp0SBzm-2f7A-1
Received: by mail-wr1-f44.google.com with SMTP id u1so7023474wru.13
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 14:16:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Fqio7+9u+yu2NP4s+tdQIrrZJq7xdg7njCam/8QXbeU=;
	b=jQHblCpSjDiy3kTDd7w6d9QQXlTFs0DW1JMZzmJ+Ube/ZDO7RNQYDoxrwwElwp3bHi
	tafdhUIXEUMDTbNLJiO8/dwJqITk5v7YUlzEL6G8GGJF7Xm0UKxoZAIC7KsYJhL5K41g
	KXGum1nXavnY7GbSXPq0/mc8L+brzrfrKbt0mZfGan05qD6fxmxRboNE2gEthkRnarP4
	ufxUSbJhAXwilZajcuv7R0TGgrEdpmZW/nybljEdNSru4sdTmgkijVpxAM/cbU83YYBG
	5sgmOTsVGR9WU3AbUjxDL9Zv6wjXvMXD0RLuhHr1F7hSzyX7ccqBaeYBXj/Kj1DauNHz
	7eRw==
X-Gm-Message-State: AOAM531QSLnfY84C8MPxfqka1Rkp7mlu5XDZCU/LrAJjV/BZFGDArFs/
	/Rrx7zvjRunutJFe3Y72ZXNxQYguM08YeQ==
X-Google-Smtp-Source: ABdhPJwfTmPbXFIzToCw/PSh5uG1WTrE9jwuOtkdd9VPhhO3pznoigcLsLf6OkRgTSPE234pQKJt5g==
X-Received: by 2002:a5d:5984:: with SMTP id n4mr568166wri.23.1637792214117;
	Wed, 24 Nov 2021 14:16:54 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	ay29sm859294wmb.44.2021.11.24.14.16.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 14:16:53 -0800 (PST)
Message-ID: <521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
Date: Wed, 24 Nov 2021 22:17:02 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
In-Reply-To: <7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

QXMgYW4gdXBkYXRlLCBJIGp1c3QgdHJpZWQgdGhlIG9mZmljaWFsIFJhd2hpZGUvMzUgSVNPcyBh
bmQgaGFkIHRoZSAKZXhhY3Qgc2FtZSBiZWhhdmlvciB3aXRoIGl0IG5vdCBzdGFydGluZyBib3Ro
IG9uIHFlbXUgYW5kIHZpcnR1YWxib3ggYXMgCndlbGwuCgpTbyBpcyB0aGVyZSBzb21ldGhpbmcg
Z29pbmcgb24gd2l0aCBSYXdoaWRlIGFuZCB2aXJ0dWFsaXphdGlvbj8gVGhpcyBpcyAKdGhlIG9u
bHkgZGlzdHJvIFF1aWNrZW11IGZhbGxzIG92ZXIgb24gaG93ZXZlcgoKT24gMTEvMjQvMjEgMjE6
MjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGksCj4KPgo+
IEkgaGF2ZSB0aGlzIHNhbWUgcHJvYmxlbSB3aXRoIHZtd2FyZSBpbiBtYWMgb3Mgc28geW91IGFy
ZSBub3QgYWxvbmUuwqAgCj4gSSBoYXZlIHRyaWVkIHZpcnR1YWwgYm94LCBidXQgZXZlcnl0aW1l
IEkgdHJ5IHRvIGZpeCB0aGUgcHJvYmxlbSBvZiAKPiB0aGUgdmJveCBleHRlbnRpb24gbm90IHdv
cmtpbmcgaXQgb25seSB3b3JrcyBmb3IgYSBzaG9ydCB0aW1lIGFuZCBzbyBJIAo+IGp1c3QgZ2F2
ZSB1cCBvbiBpdC4KPgo+Cj4gTWF0dGhldwo+Cj4KPgo+IE9uIDExLzI0LzIxIDEwOjI1IEFNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBTby4uLmRlY2lkZWQg
dG8gZ2l2ZSBGZWRvcmEgYSBzaG90IGluIGEgVk0uCj4+Cj4+IEknbSB1c2luZyB0aGUgcXVpY2tl
bXUvcWVtdSBzZXR1cCBhbmQgZ290IHRoZSBNYXRlIHNwaW4uCj4+Cj4+IE15IGlzc3VlPyBJdCBz
dGFydHMgdXAgZmluZSwgYnV0IGRvZXNuJ3QgYnJpbmcgT3JjYSB1cCBhdCBhbGwuCj4+Cj4+IEFs
dCtGMiBhbmQgdHlwaW5nIG9yY2EgZG9lc24ndCB3b3JrCj4+IEFsdCtzdXBlcitTIGRvZXNuJ3Qg
d29yawo+Pgo+PiBTbywgZGlkIEkgbWlzY29uZmlnIHRoZSBxZW11IHNldHRpaW5ncyBzb21laG93
IG9yPwo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

