Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0F4639ADC
	for <lists+blinux-list@lfdr.de>; Sun, 27 Nov 2022 14:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669554658;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WvvxUqE40A2nc3eWUYWYA+Lhfib+ikaEcIbfSuswwTA=;
	b=QrqD4J3HmxidfWpOujkfnq9zgIblej72ePj/gwonazT9zQuN5uCc+jK70V5gzk3pEbAq4q
	PB4BpXZdFD0Tce4b9ndMB/Vhn7hHSO68VqlRG1nzZymVCCjUFEy102UPRyUEcqOumR3xc4
	5G+sSGFq7hW82QGQ0yMHeZ8ZvPLLpqo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-636-smaXu0SWN5Oi7vY84JkRHg-1; Sun, 27 Nov 2022 08:10:53 -0500
X-MC-Unique: smaXu0SWN5Oi7vY84JkRHg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D6A38027EC;
	Sun, 27 Nov 2022 13:10:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 204662024CB7;
	Sun, 27 Nov 2022 13:10:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8BC0519465A3;
	Sun, 27 Nov 2022 13:10:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 27 Nov 2022 14:10:31 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Accessible front ends for Pleroma?
To: blinux-list@redhat.com
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
 <mailman.1917.1669441933.6934.blinux-list@redhat.com>
 <mailman.1960.1669443853.6931.blinux-list@redhat.com>
 <mailman.2025.1669474541.6925.blinux-list@redhat.com>
 <mailman.2084.1669487263.6926.blinux-list@redhat.com>
 <1a36c042-2fbb-5ff6-6e04-8c1e6b50dd2d@slint.fr>
In-Reply-To: <1a36c042-2fbb-5ff6-6e04-8c1e6b50dd2d@slint.fr>
Message-ID: <mailman.2055.1669554646.6931.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8KCkkgd2FzIHdyb25nLCAic3BpIHRvb3QiIHdvcmtzIGJ1dCAic3BpIC1pIHRvbyIgZ2l2
ZXMgYSB3cm9uZyBpbmZvcm1hdGlvbjoKTm8gc3VjaCBwYWNrYWdlIG9yIFNsYWNrQnVpbGQ6IEJl
YXV0aWZ1bFNvdXA0IHB5dGhvbjMtd2N3aWR0aCBweXRob24tdXJ3aWQKCkFzIGFsbCB0aGVzZSBk
ZXBlbmRlbmNpZXMgYXJlIGluc3RhbGxlZCBhbmQgcGFja2FnZXMgZm9yIHRoZW0gYXJlIGF2YWls
YWJsZSwgdGhlCmlzc3VlIGlzIHdpdGggc3BpIGl0c2VsZiwgb3IgdGhlIHdheSBJIHNldCBpdCB1
cC4KCkkgd2lsbCBpbnZlc3RpZ2F0ZSBmdXJ0aGVyIGFuZCBkbyB0aGUgZm9sbG93LXVwIGluIHRo
ZSBTbGludCBsaXN0LCB3aGVyZSBpdCBiZWxvbmdzCgpAQWxsOiBzb3JyeSBmb3IgdGhlIG5vaXNl
LgoKQ2hlZXJzLApEaWRpZXIKCkxlIDI3LzExLzIwMjIgw6AgMTA6MzcsIERpZGllciBTcGFpZXIg
YSDDqWNyaXTCoDoKPiBIZWxsbywKPiAKPiBMZSAyNi8xMS8yMDIyIMOgIDE5OjI3LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEkganVzdCByZWFsaXpl
ZCB0aGF0IHNwaSBuZWVkcyBhIHJlYnVpbGQgZm9yIFNsaW50IDE1LjAsIG1lYW53aGlsZSB5b3Ug
Y2FuIGp1c3QKPj4gdXNlIHNsYXB0LWdldCBhbmQgc2xhcHQtc3JjIGRpcmVjdGx5Lgo+IAo+IHNw
aSBoYXMgYmVlbiBmaXhlZC4gbm93IHRoZSBjb21tYW5kOgo+IHNwaSB0b290Cj4gbGlzdHMgYW1v
bmcgb3RoZXJzOgo+IHRvb3QgW05vdCBpbnN0YWxsZWRdOiB0b290IChhIE1hc3RvZG9uIENMSSBj
bGllbnQpCj4gCj4gQ2hlZXJzLAo+IERpZGllcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo=

