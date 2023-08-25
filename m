Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B106788834
	for <lists+blinux-list@lfdr.de>; Fri, 25 Aug 2023 15:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692969360;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hW/96mbuWqWJIb9ejKwEcKYo7PNhpT3O7vHGQRkQUNU=;
	b=Oy1zO4xXYgeqpgTUa5Lqw0gfhPrtlBYTFkjl+fFP/niYfQdwtoMupZyGmJMYgojoCO2Kv+
	xYsy8NFThLIe2C7xhsgDJZ0YS97T6qUPQDz3m5oDPdWkELB/n/wMrVJjV7qO4NK6yZORiV
	/ZlzssegAfTvZqpSsXAbpmnSqT0Mv1M=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-635-2xRMfDAzNy-Tl3mK457VTQ-1; Fri, 25 Aug 2023 09:15:56 -0400
X-MC-Unique: 2xRMfDAzNy-Tl3mK457VTQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4D5429AA2E7;
	Fri, 25 Aug 2023 13:15:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C432C492C14;
	Fri, 25 Aug 2023 13:15:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3845319465B7;
	Fri, 25 Aug 2023 13:15:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 25 Aug 2023 09:15:45 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: microknoppix download
In-Reply-To: <mailman.1703.1692957281.18731.blinux-list@redhat.com>
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
 <mailman.1702.1692956975.18731.blinux-list@redhat.com>
 <mailman.1703.1692957281.18731.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1788.1692969348.18730.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBnb3QgZXJyb3IgNDA0IHdoZW4gdXNpbmcgdGhhdCB1cmwgaW4gbGZ0cCBhbmQgdHJhbnNtaXNz
aW9uLWNsaSBzaW1wbHkKZmFpbGVkIHRvIGRvd25sb2FkLiAgV2hhdCBJJ20gZ29pbmcgdG8gZG8g
bmV4dCB0byBoZWxwIG15IGxlYXJuaW5nIGlzIHRvCnJ1biBpdCBpbiBsZnRwIG9uIGEgc2luZ2xl
IGxpbmUgYW5kIHRoZW4gY2FwdHVyZSB0aGUgZXJyb3IgdmFsdWUgdGhhdApyZXR1cm5zIHdpdGgg
JD8uICBUaGlzIHdheSBJIGNhbiBpbXByb3ZlIG15IG93biBzY3JpcHQgd3JpdGluZy4KCgotLSAK
SnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4KIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRv
IGJlIHVzZWQgaW4gZGVmZW5zZSBvZiBsaWJlcnR5Ogpzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBh
bW1vLgpQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgpFZCBIb3dkZXJzaGVsdCAxOTQwLgoKT24g
RnJpLCAyNSBBdWcgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKCj4gQW5kIHRoZSB0b3JyZW50IGZvciB0aGUgQ0QgaW1hZ2UgKDY2OCBtZWdhYnl0ZXMgb25s
eSB2ZXJzdXMgYWJvdmUgRFZEIGltYWdlIG9mCj4gNC4zNyBHQikgaXMgaGVyZToKPiBodHRwOi8v
dG9ycmVudC51bml4LWFnLnVuaS1rbC5kZS90b3JyZW50cy9LTk9QUElYX1Y5LjFDRC0yMDIxLTAx
LTI1LUVOLnRvcnJlbnQKPgo+ID4+IEFtIDI1LjA4LjIzIHVtIDEwOjU3IHNjaHJpZWIgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiA+Pj4gSGFzIGFueW9uZSBnb3QgYSBkb3du
bG9hZCB0aGF0IGNhbiBkb3dubG9hZCB0aGUgbGF0ZXN0IGVuZ2xpc2ggdmVyc2lvbiBvZgo+ID4+
PiBtaWNyb2tub3BwaXg/wqAgRXZlcnlvbmUgb2YgdGhlIG1pcnJvcnMgb25seSBoYXMgZ2VybWFu
IHRleHQgb24gaXQgYW5kIEkKPiA+Pj4gZGlkbid0IHN0dWR5IHRoYXQgbGFuZ3VhZ2UgZW5vdWdo
IHRvIHVuZGVyc3RhbmQgdGhlIHdlYnNpdGUncyBjb250ZW50Lgo+ID4+PiBJJ20gaGF2aW5nIGJl
dHRlciBsdWNrIGRvd25sb2FkaW5nIHRocm91Z2ggYml0dG9ycmVudCB0aGVzZSBkYXlzIHRoYW4g
d2l0aAo+ID4+PiBvdGhlciBkb3dubG9hZGVycyBnaXZlbiB0aGUgbG93IGdyYWRlIG9mIHZlcml6
b24gZmlvcyBjb25uZWN0aXZpdHkuCj4gPj4+IHdnZXQgZm9yIGluc3RhbmNlIGlzIGRvd25sb2Fk
aW5nIGlzbydzIHRoYXQgZmFpbCBzaGEyNTZzdW0gLWMgdGVzdHMgb25jZQo+ID4+PiBkb3dubG9h
ZGVkIGFuZCBpdCBkb2VzIHRoYXQgcGVyc2lzdGVudGx5Lgo+Cj4gLS0KPiAuCj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

