Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A796EA7BF
	for <lists+blinux-list@lfdr.de>; Fri, 21 Apr 2023 12:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682071247;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aENEvcHe/fnxrcCAY192HAmGCkx+o2hiZsPrj5lAXtE=;
	b=U7DreGaM3nhi8tGTYgmmLw44vA3NetEbha+zlYOwEZm01sAMvendbnoUCkJlScTzHVY5my
	4IguZa6Keq7YOkht+SHMOUSNXULCpbOd12+RCdG/y5gnW3q/LV/fHv2J1F9+jwxiJnNEer
	UpiOYLFzs7B1EySlGyeftKWHXk0yuuI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-D-wZ9mi7OViuOCE8uOsefA-1; Fri, 21 Apr 2023 06:00:43 -0400
X-MC-Unique: D-wZ9mi7OViuOCE8uOsefA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EBB66185A78F;
	Fri, 21 Apr 2023 10:00:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7AB6D492C3E;
	Fri, 21 Apr 2023 10:00:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 276C31946A4A;
	Fri, 21 Apr 2023 10:00:39 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 21 Apr 2023 12:00:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: OT: Could someone from outside South Africa try to install
 iSinkwe?
To: blinux-list@redhat.com
References: <mailman.2160.1682070035.283959.blinux-list@redhat.com>
In-Reply-To: <mailman.2160.1682070035.283959.blinux-list@redhat.com>
Message-ID: <mailman.2253.1682071239.283955.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgV2lsbGVtLAoKbm90IGZvdW5kIGZyb20gUGFyaXMsIEZyYW5jZSBpbiB0aGUgUGxheSBTdG9y
ZS4KCmFib3V0IHRoZSBuYW1lLCBmb3VuZCB0aGlzOiAiVGhlIHdvcmQgIklTSU5LV0UiIChwcm9u
b3VuY2VkICJJIiAtICJzaW5rIiAtCiJ3ZSIpLCBpcyB0aGUgWnVsdSB0cmFuc2xhdGlvbiBvZiB0
aGUgVGhpY2sgVGFpbGVkIEJ1c2hiYWJ5LiBUaGVzZSBzdHJhbmdlCm5vY3R1cm5hbCBhbmltYWxz
IGFyZSBjbGFzc2lmaWVkIHVuZGVyIHRoZSBwcmltYXRlIGZhbWlseSBhbmQgZnJlcXVlbnQgdGhl
IGxvZGdlCmF0IG5pZ2h0LiBUaGVpciBkaXN0aW5jdGl2ZSBhbmQgdGhyaWxsaW5nIG5pZ2h0LXRp
bWUgY3JpZXMgYXJlIHBhcnQgb2YgdGhlCmV2ZW5pbmcgYnVzaCBzb3VuZHMuIgoKVG8gcmVjZWl2
ZSBhbnN3ZXJzIG9mZiBsaXN0IHlvdSBuZWVkIHRvIGluZGljYXRlIHlvdXIgZW1haWwgYWRkcmVz
cywgYXMgaXQgaXMKcmVtb3ZlZCBmcm9tIHRoZSAiRnJvbSIgaGVhZGVycyBieSB0aGlzIGxpc3Qu
IEkga25vdyBpdCBhbmQgZ3Vlc3NlZCB5b3UgYXJlCldpbGxlbSB2YW4gZGVyIFdhbHQsIGJ1dCB0
aGF0J3MgYmVjYXVzZSB3ZSBoYXZlIGNvbW11bmljYXRlZCBiZWZvcmUuCgpDaGVlcnMsCkRpZGll
cgotLSAKRGlkaWVyIFNwYWllcgpkaWRpZXJhdHNsaW50ZG90ZnIKCkxlIDIxLzA0LzIwMjMgw6Ag
MTE6MzUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBH
b29kIGRheSwKPiBXZSBhdCB0aGUgVm9pY2UgQ29tcHV0aW5nIHJlc2VhcmNoIGdyb3VwIGF0IHRo
ZSBDU0lSIGhhdmUgcmVsZWFzZWQgYW4gQW5kcm9pZAo+IGFwcCBjYWxsZWQgaXNpbmt3ZS4KPiBJ
dCBpcyBhbiBlcHViMyByZWFkZXIgc3VwcG9ydGluZyBtZWRpYSBvdmVybGF5cy4KPiAKPiBJIHdv
dWxkIGxpa2UgdG8gdmVyaWZ5IHRoYXQgaXQgaXMgaW5zdGFsbGFibGUgZnJvbSBhbm90aGVyIGNv
dW50cnkgdGhhbiBTb3V0aAo+IEFmcmljYS4KPiBJdCBpcyBhIGZyZWUgaW5zdGFsbC4KPiBKdXN0
IHNlYXJjaCBmb3IgaXNpbmt3ZSBpbiB0aGUgcGxheXN0b3JlLgo+IEl0IHdvcmtzLCBidXQgaXMg
c3RpbGwgYmV0YSBzb2Z0d2FyZS4KPiBJdCB3aWxsIGxpa2VseSBiZSBkaXNjdXNzZWQgYXQgYSBj
b25mZXJlbmNlIGluIHRoZSBOZXRoZXJsYW5kcyBpZiB0aGUgcGFwZXIgaXMKPiBhY2NlcHRlZC4K
PiBQZW9wbGUgY2FuIGFuc3dlciBtZSBvZmYtbGlzdCBpZiB0aGV5IGxpa2UuCj4gVElBLCBXaWxs
ZW0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

