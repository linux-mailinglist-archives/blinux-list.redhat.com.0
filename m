Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF9145CF70
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 22:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637790389;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rhwkWgxaZNs7+jb0UXj2H+q0KU4RKnAFhLys8Igr69Y=;
	b=VAebXJabD49kghWKC1NXnI7kogWdj+hY0O+u6N12OIGRp62kT6ogJiJD4RP03PPS9YUdgw
	0yIXMJb38bvUX7fm3tqhaT0VCYbL84fwRGnOHbWp66+698vdhLGuMP4BWary15Aih7fVmP
	nl+umY2fHdWZwmJmUJF/Z3UyrP07BfE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-581-7RFLhLK0PJqqBr6V-BSUbQ-1; Wed, 24 Nov 2021 16:46:25 -0500
X-MC-Unique: 7RFLhLK0PJqqBr6V-BSUbQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 16AFC81CCB6;
	Wed, 24 Nov 2021 21:46:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C118B100EBBF;
	Wed, 24 Nov 2021 21:46:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E17B54BB7C;
	Wed, 24 Nov 2021 21:46:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOLkECE024464 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 16:46:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 22BC2404727A; Wed, 24 Nov 2021 21:46:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DF79404727C
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 21:46:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0664B181E060
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 21:46:14 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-102-FBn8uxjFNYec8vcr8czliQ-1; Wed, 24 Nov 2021 16:46:10 -0500
X-MC-Unique: FBn8uxjFNYec8vcr8czliQ-1
Received: by mail-wr1-f45.google.com with SMTP id a9so6940298wrr.8
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 13:46:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=rXbDDnZUfuw34IYKU6DgN8Gl37fZnrqKuoWBQzgkVBI=;
	b=ZV7FrWHC5bt0cjWgq7iEmbE5446LOHw7ec90045ZvJQimZutMpiLRoSVzC5eMwJKN7
	Trgvn0ko5ZoTNnZStJLgBI56CndeuTHSac+X8bFMiz+uYI/UfJ6Yb9d077Dk3kwbDYsz
	7mcqBl8xZm/WuThPipz7PiDsQs3ZrEJRm/+UqIBJYJtyXuS3y84ir8rISQbGHHHC/F26
	AfMuLkXbB1Xbo54V6Ch/CoTZWN9Kd1BWRSfrJA05/OuWuMmcxSHUKZPp6qYy7g2o+ub/
	Bin7VBadS5AXobHNn2S8Vns9Dg6flaYTI8fqnHcx+W0M1JrYAoJk6HuH5K4CJTZkTPI2
	pMeQ==
X-Gm-Message-State: AOAM530ZeE6OTfF+p9KdqTlt5GQ+Sqn0G8h+pqyTK/OYEQiDwnTVdfdZ
	GKoPTtfuUrs1wXb/1VVdjwJy6YioVZXlcw==
X-Google-Smtp-Source: ABdhPJzF42lpIvJHXalu8OCIqywLWPrIxt6pOx3Rpes4qrpMcin8uygHC24UOPUUQW6koqUucttKxg==
X-Received: by 2002:a05:6000:92:: with SMTP id
	m18mr244791wrx.617.1637790367440; 
	Wed, 24 Nov 2021 13:46:07 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id z15sm907157wrr.65.2021.11.24.13.46.06
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 13:46:07 -0800 (PST)
Message-ID: <3c50f683-26bd-4bcd-9903-19e4b23f401f@gmail.com>
Date: Wed, 24 Nov 2021 21:46:15 +0000
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSdtIHN0YXJ0aW5nIHRvIHN1c3BlY3QgaXQgaXMgdGhlIHNwaW4gbm90IGxpa2luZyBiZWluZyBy
dW4gaW4gYSBWTSwgCnNpbmNlIGl0IGRvZXMgdGhlIGV4YWN0IHNhbWUgdGhpbmcgaW4gVmlydHVh
bGJveCBhcyB3ZWxsIGhvd2V2ZXIuCgpUaGF0IGJlaW5nIHNhaWQgSSd2ZSBub3QgaGVhcmQgb2Yg
dmlydHVhbGJveCBsb3NpbmcgcHJvdmlzaW9uaW5nIGF0IGFsbCAKdGhvdWdoIHNvIEkndmUgbm8g
aWRlYSBvbiB0aGF0IG9uZS4gSSdtIG5vdCBzdXJlIGlmIEZlZG9yYSdzIGRldnMgZGlkIApzb21l
dGhpbmcgb3IgaWYgVmlydHVhbGJveC9RZW11IGRpZCBzb21ldGhpbmcgaG93ZXZlcgoKT24gMTEv
MjQvMjEgMjE6MjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
SGksCj4KPgo+IEkgaGF2ZSB0aGlzIHNhbWUgcHJvYmxlbSB3aXRoIHZtd2FyZSBpbiBtYWMgb3Mg
c28geW91IGFyZSBub3QgYWxvbmUuwqAgCj4gSSBoYXZlIHRyaWVkIHZpcnR1YWwgYm94LCBidXQg
ZXZlcnl0aW1lIEkgdHJ5IHRvIGZpeCB0aGUgcHJvYmxlbSBvZiAKPiB0aGUgdmJveCBleHRlbnRp
b24gbm90IHdvcmtpbmcgaXQgb25seSB3b3JrcyBmb3IgYSBzaG9ydCB0aW1lIGFuZCBzbyBJIAo+
IGp1c3QgZ2F2ZSB1cCBvbiBpdC4KPgo+Cj4gTWF0dGhldwo+Cj4KPgo+IE9uIDExLzI0LzIxIDEw
OjI1IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBTby4u
LmRlY2lkZWQgdG8gZ2l2ZSBGZWRvcmEgYSBzaG90IGluIGEgVk0uCj4+Cj4+IEknbSB1c2luZyB0
aGUgcXVpY2tlbXUvcWVtdSBzZXR1cCBhbmQgZ290IHRoZSBNYXRlIHNwaW4uCj4+Cj4+IE15IGlz
c3VlPyBJdCBzdGFydHMgdXAgZmluZSwgYnV0IGRvZXNuJ3QgYnJpbmcgT3JjYSB1cCBhdCBhbGwu
Cj4+Cj4+IEFsdCtGMiBhbmQgdHlwaW5nIG9yY2EgZG9lc24ndCB3b3JrCj4+IEFsdCtzdXBlcitT
IGRvZXNuJ3Qgd29yawo+Pgo+PiBTbywgZGlkIEkgbWlzY29uZmlnIHRoZSBxZW11IHNldHRpaW5n
cyBzb21laG93IG9yPwo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

