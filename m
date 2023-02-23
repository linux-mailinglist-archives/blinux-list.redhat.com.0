Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB826A011C
	for <lists+blinux-list@lfdr.de>; Thu, 23 Feb 2023 03:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677118586;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V+qo4Zkj8FZhY9GXOL1FVMUydF7QVeHKwpQ3Xh7XeiU=;
	b=G6vr4h33N6lUO6TPwbC3jq6EKd/D63vZa+xg2wjf7jmqLL59f13AKaeaJtmCPTaQjCd0zO
	mhdavBANbfr94y732WnFL6uezdd+YBXtWY//i0eV0ubit9o1MEE5ouAmY/n0gEI9IJ5+7u
	bQsxxDRRjSEE8B0NMoFKaNdSIrG24v0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-266-TeK2dTXOM8uOFyv4pqXczQ-1; Wed, 22 Feb 2023 21:16:22 -0500
X-MC-Unique: TeK2dTXOM8uOFyv4pqXczQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18FD73C02549;
	Thu, 23 Feb 2023 02:16:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 43090140EBF6;
	Thu, 23 Feb 2023 02:16:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9C8D619465B9;
	Thu, 23 Feb 2023 02:16:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.2\))
Subject: Re: What a find! DECTalk!
Date: Wed, 22 Feb 2023 21:16:12 -0500
References: <mailman.886.1677038394.686542.blinux-list@redhat.com>
 <mailman.1848.1677098798.686540.blinux-list@redhat.com>
 <mailman.1792.1677111557.686539.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.1792.1677111557.686539.blinux-list@redhat.com>
Message-ID: <mailman.1914.1677118576.686544.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T0ssCgpJIGNhbuKAmXQgZmluZCB0aGUgL3NyYyBmb2xkZXIuCkkgcmFuIHRoaXMgY29kZSBpbiB0
ZXJtaW5hbCwgdGhlbiBnb3Qgc3R1Y2shCmFwdC1nZXQgaW5zdGFsbCBidWlsZC1lc3NlbnRpYWwg
bGliYXNvdW5kMi1kZXYgbGlicHVsc2UtZGV2IGxpYmd0azIuMC1kZXYgdW56aXAgZ2l0ClBsZWFz
ZSBoZWxwIQpUaGFua3MKCj4gT24gRmViIDIyLCAyMDIzLCBhdCA3OjE5IFBNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
PiAKPiBBbGwgdGhvc2UgY29tbWFuZHMgd29ya2VkIGZvciBtZSB0byBidWlsZCB0aGUgREVDVGFs
ayBzb2Z0d2FyZSBpdHNlbGYsIGJ1dCBpbiBvcmRlciB0byBtYWtlIGR0ay1nZW5lcmljLCB3aGlj
aCBpcyB0aGUgREVDVGFsayBzcGVlY2gtZGlzcGF0Y2hlciBtb2R1bGUsIGFwcGVhciBpbiBPcmNh
J3MgbGlzdCBvZiBzcGVlY2ggc3ludGhlc2l6ZXJzLCBJIGhhZCB0byBydW4gb25lIG1vcmUgY29t
bWFuZCwgYWxzbyBmcm9tIHRoZSBzcmMgZGlyZWN0b3J5Ogo+IAo+IHN1ZG8gbWFrZSBpbnN0YWxs
Cj4gCj4gVGhlbiBJIHJlc3RhcnRlZCBPcmNhIGFuZCB0aGUgZHRrLWdlbmVyaWMgbW9kdWxlIGFw
cGVhcmVkLiBIb3BlIHRoaXMgaGVscHMuCj4gCj4gfkt5bGUKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cg==

