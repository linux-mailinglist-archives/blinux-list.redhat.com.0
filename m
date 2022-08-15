Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AA791593EAC
	for <lists+blinux-list@lfdr.de>; Mon, 15 Aug 2022 23:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660598400;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RzZBtCd7lWiwxXuWyjnCGa26I43AlfUzqiz769SjYbY=;
	b=PBMuIek5e24qUkpin03blhBOeWKhljnIVjzmTgS3+1cSJARrCQj0MqVIsTPLGpa1N3oTQe
	nGsM3iACKPZAtsRriYLEYz2+1jk2CmXNjvQ2agS/qxDMVW0S+RUMWq05TwgBIw6I/WEF0y
	1Y+Gutzv7cZNVc/zJSCAsHhMrEALd8A=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-482-HzcYGNQ8PHGSUpUyT1e4rw-1; Mon, 15 Aug 2022 17:19:57 -0400
X-MC-Unique: HzcYGNQ8PHGSUpUyT1e4rw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 162ED1C04B46;
	Mon, 15 Aug 2022 21:19:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 335A42026D07;
	Mon, 15 Aug 2022 21:19:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C45AA1940353;
	Mon, 15 Aug 2022 21:19:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 15 Aug 2022 17:19:51 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Need help with a Youtube terminal app
In-Reply-To: <mailman.724.1660597476.10502.blinux-list@redhat.com>
References: <mailman.693.1660588007.10505.blinux-list@redhat.com>
 <mailman.714.1660588859.10499.blinux-list@redhat.com>
 <mailman.724.1660597476.10502.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.725.1660598394.10502.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IGNvdWxkIGRvd25sb2FkIHBpcGV3aXJlIGZyb20gaXRzIGdpdGh1YiByZXBvc2l0b3J5IGFu
ZCB0cnkgdG8gYnVpbGQgaXQKb24geW91ciBzeXN0ZW0uCmdpdCBjbG9zZSBodHRwczovL2dpdGh1
Yi5jb20vdHJpemVuL3BpcGV3aXJlCmlmIEkgaGF2ZSB0aGUgdXJsIGNvcnJlY3Qgb3VnaHQgdG8g
c3RhcnQgdGhhdCBwcm9jZXNzLiAgSWYgdGhpcyBpcyB5b3VyCmZpcnN0IGNvbXBpbGUsICB5b3Un
bGwgbmVlZCB0byBkbyB0aGUgYnVpbGQgc3RlcHMgaW4gdGVybWluYWwgbW9kZS4KT25jZSB5b3Un
dmUgZG9uZSB0aGUgY2xvbmUgaWYgc3VjY2Vzc2Z1bCwgY2QgaW50byB0aGUgcGlwZXdpcmUKc3Vi
ZGlyZWN0b3J5IGFuZCBmaW5kIGEgZmlsZSBjYWxsZWQgUmVhZG1lLm1kIGFuZCByZWFkIHRoYXQg
c28geW91IGxlYXJuCnRoZSBzdGVwcyB0byBidWlsZCBwaXBld2lyZS4KCgpKdWRlIDxqZGFzaGll
bCBhdCBwYW5peCBkb3QgY29tPiAuCgpPbiBNb24sIDE1IEF1ZyAyMDIyLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBUaGFua3MsIGJ1dCB5b3V0dWJlIHZpZXdl
ciBzZWVtcyB0b28gY29tcGxpY2F0ZWQuCj4KPiBUaGUgaW5zdHJ1Y3Rpb25zIHNheXMgSSBuZWVk
IGEgR29vZ2xlIElEIGFuZCBhIHNlY3JldCBrZXkuCj4KPiBTbyBJwqAgbG9va2VkIGF0IHBpcGUt
d2lyZSwgYmVjYXVzZSBpdCBjbGFpbWVkIG5vdCB0byByZXF1aXJlIGEgZ29vZ2xlIElEIG9yCj4g
a2V5Lgo+Cj4gQnV0IGl0cyBub3QgaW4gdGhlIExpbnV4IE1pbnQgcmVwb3NpdG9yeS4KPgo+IGFu
ZCBJIGdldCBhbiBlcnJvciB3aGVuIHRyeWluZyB0byBhZGQgaXQuCj4KPgo+IEknbSBhYm91dCB0
byBnaXZlIHVwLgo+Cj4gUm9iCj4KPgo+IE9uIDgvMTUvMjIgMTQ6NDAsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiBIaSBSb2I6IEkgd291bGQgY2VydGFpbmx5
IHN1Z2dlc3QgeW91dHViZS12aWV3ZXIgZnJvbSBUcml6ZW4uIFlvdSBoYXZlIGEKPiA+IGNob2lj
ZSBvZiBwbGF5aW5nIG9yIGRvd25sb2FkaW5nIHZpZGVvcyBmcm9tIGEgcmVzdWx0cyBsaXN0LiBZ
b3UgY2FuIGxhdW5jaAo+ID4geW91dHViZS12aWV3ZXIgLXU9dXNlcm5hbWUgbGlrZSBwYnNuZXdz
aG91ciB5b3UgY2FuIGFsc28gY3JlYXRlIGEgZmF2b3JpdGVzCj4gPiBsaXN0LWFuZC1tb3JlIGVh
c2lseSB0cmFjayBjaGFubmVscyB5b3UgZ28gb2Z0ZW4uCj4gPiBDaGltZQo+ID4KPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

