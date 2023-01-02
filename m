Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D00A865B492
	for <lists+blinux-list@lfdr.de>; Mon,  2 Jan 2023 17:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672675309;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kGZDGCnXLMV0SlYrgLaqnUJdWkv8bR3hZ0KMLmOuT2k=;
	b=dvb4PkGmo3UcLDxIP+YuUGGXR6WdXjmqXdt5ZV3FdByIjny3MDh4JPTF6kdWUFFKUU6LQR
	VZCfuc7otb7GkiW1h/7aVDBLopoKsavVyVf4tzdmyQP1FVayUzg+8F4yu3AlYZYDGUnUfw
	K+A3MutLJldcoAOqvYAJRuyed+K1VM8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-351-xsgFm6TkPECCJLBR_m9n7g-1; Mon, 02 Jan 2023 11:01:45 -0500
X-MC-Unique: xsgFm6TkPECCJLBR_m9n7g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A5FC101A55E;
	Mon,  2 Jan 2023 16:01:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8CB39C1602A;
	Mon,  2 Jan 2023 16:01:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 29911194658F;
	Mon,  2 Jan 2023 16:01:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 2 Jan 2023 11:01:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: any other jenux users here?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2166.1672659484.2515676.blinux-list@redhat.com>
In-Reply-To: <mailman.2166.1672659484.2515676.blinux-list@redhat.com>
Message-ID: <mailman.2316.1672675299.2515662.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSSBoYXZlIGplbnV4IHJ1bm5pbmcgaW4gYSB2bSwgYnV0IG5vdCBoYXZpbmcgYW55IHBy
b2JsZW1zIGF0IHRoZSAKbW9tZW50LsKgIEkgaGF2ZSBub3QgYmVlbiBhYmxlIG90byBnZXQgZWl0
aGVyIHNsaW50IG9yIGplbnV4IHRvIGJvb3Qgb24gYSAKYmFyZWJvbmVzIG1hY2hpbmUsIGJ1dCBJ
IHRoaXMgaGFkIHRvIGRvIHdpdGggc2VjdXJlIGJvb3Qgd2hpY2ggbmVpdGhlciAKYXJjaCBvciBz
bGludCBzdXBwb3J0IHdoaWNoIGlzIGEgc2hhbWUgc2luY2UgbW9zdCBpZiBub3QgYWxsIG1hY2hp
bmVzIApoYXZlIGJ5IGRlZmF1bHQgYW5kIGRvIG5vdCBoYXZlIHNpdGVkIGhlbHAgdG8gZGlzYWJs
ZS4KCgpNYXR0aGV3CgoKCk9uIDEvMi8yMDIzIDY6MzggQU0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gQXQgbGVhc3QgdGhlIGxhc3QgMyBpc29zIHdvdWxkbid0
IGNvbWUgdXAgc3BlYWtpbmcgb24gYSB0aGlua3Blbmd1aW4uY29tCj4gUGVuZ3VpbiBwcm8gMTEg
Y29tcHV0ZXIgSSBoYXZlLiAgVGhlIGlzb3MgY29udGludWFsbHkgcmVib290ZWQgYW5kIEkKPiB2
ZXJpZmllZCB0aG9zZSBpc29zIHdlcmUgY29ycmVjdCBvbiBteSBtYWNoaW5lIGJlZm9yZSBhdHRl
bXB0aW5nIHRvIHJ1bgo+IHRoZSBpbnN0YWxsZXIuICBUaGUgYXV0aG9yIG9mIGplbnV4IHRoaW5r
cyBpdCdzIGEgdWVmaSBwcm9ibGVtIG9uIG15Cj4gbWFjaGluZSBidXQgdGhhdCdzIG5vdCBsaWtl
bHkgc2luY2UgdGhlIG1hY2hpbmUgbm93IHJ1bnMgc2xpbnQgMTUuMCBhbmQKPiB0aGF0IHVzZXMg
dWVmaSB3aGVuIGluc3RhbGxpbmcuCj4gSSB0aGluayB1ZWZpIGluIG1hdGhlbWF0aWNzIHRlcm1z
IGlzIHdoYXQncyBjYWxsZWQgZ3JlYXRlc3QgY29tbW9uCj4gZGVub21pbmF0b3IgYW5kIGJpb3Mg
IGlzIGxvd2VzdCBjb21tb24gZGVub21pbmF0b3IuCj4KPgo+Cj4gSnVkZSA8amRhc2hpZWwgYXQg
cGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZl
bnNlIG9mIGxpYmVydHk6Cj4gICBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2Ug
dXNlIGluIHRoYXQgb3JkZXIuIgo+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+Cj4g
Lgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

