Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5815B5162
	for <lists+blinux-list@lfdr.de>; Sun, 11 Sep 2022 23:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1662933318;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lQRjX6l1oaKGbk1tN5KRo1E9cJn4dlM+q096B1WY1pk=;
	b=KW4f5SGiY5oT5BFS0v/TsCMmR1ucyUhuMZRD25zi8hDhN2Mkdspet4sGfy+dzu0SotF5er
	ot0T+IBgfDtga1FWRGjaOMWVgXlq1JDHG16G2Xg3viMH9A098gxFxO1Efk+srlJDXHDT6S
	UxW6HPRtU2ocH4NMhezcklgbOwisejk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-144-OXzBKcfVNwi8pbWn78REpg-1; Sun, 11 Sep 2022 17:55:15 -0400
X-MC-Unique: OXzBKcfVNwi8pbWn78REpg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5711811E76;
	Sun, 11 Sep 2022 21:55:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0D50A1121315;
	Sun, 11 Sep 2022 21:55:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7DDD41946A47;
	Sun, 11 Sep 2022 21:55:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 11 Sep 2022 23:54:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: Daisy-player
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.8282.1662926405.10503.blinux-list@redhat.com>
In-Reply-To: <mailman.8282.1662926405.10503.blinux-list@redhat.com>
Message-ID: <mailman.7882.1662933308.10505.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpObyBjbHVlLCBzb3JyeSwgYnV0IGZvciB5b3VyIGluZm9ybWF0aW9uIHRoZSBuZXcgcmVw
b3NpdG9yeSBpczoKaHR0cHM6Ly9naXRodWIuY29tL2Jvb2stcmVhZGVycy9kYWlzeS1wbGF5ZXIK
CkRpZGllciBTcGFpZXIKCkxlIDExLzA5LzIwMjIgw6AgMTk6NTQsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSwgYWxsIQo+IAo+IEkgZG93bmxvYWRl
ZCBkYWlzeS1wbGF5ZXIgdi4xMy4wIGZyb20gaHR0cDovL2psZW1tZW5zLm5sLywgZGlyZWN0IGxp
bms6Cj4gPGh0dHA6Ly90YS50d2kudHVkZWxmdC5ubC9kdi9zdGFmZi9sZW1tZW5zL2psZW1tZW5z
Lm5sL2RhaXN5LXBsYXllci0xMy4wLnRhci5nej4KPiAKPiBXaGVuIHRyeWluZyB0byBjb21waWxl
IGZyb20gYSBGZWRvcmEgMzUgc3lzdGVtLCBJIGdldCBhIGZhdGFsIGVycm9yOgo+IAo+IEluIGZp
bGUgaW5jbHVkZWQgZnJvbSBhbHNhX2N0bC5jOjIxOgo+IGRhaXN5Lmg6Mzg6MTA6IGZhdGFsIGVy
cm9yOiBzb3guaDogbm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+ICAgIDM4IHwgI2luY2x1ZGUg
PHNveC5oPgo+ICAgICAgICAgIHwgICAgICAgICAgXn5+fn5+fgo+IAo+IEkndmUgaW5zdGFsbGVk
IHRoZSBzb3gtZGV2ZWwgcGFja2FnZS4gQW55IGlkZWEgb24gaG93IEkgY2FuIGZpeCB0aGlzPwo+
IAo+IFRoYW5rcyBpbiBhZHZhbmNlLCBMYXJzIEJqw7hybmRhbAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QK

