Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 413F075B893
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jul 2023 22:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689884071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uBlR273u33eZW+W4ifBBeb4BYmF2BInxZrb7/Hd8EIg=;
	b=ZuvoCPdRi/UEcbGWd86MRytSLI4N3yANbgJtMBiI/+t0ELP1FLQZu/3NDfI1fso8BEfwOR
	LCkbsEJujD8N2oVtKRPddcEtApdOKKagrCp5uKpd5/Ppdj5ztOA/M31FjRzzwFXMN7cLnA
	xyojiM33iaIMLMTaz85RUuEQIsAZTYM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-196-_wfq8OBDOWmM74f2KL8XKg-1; Thu, 20 Jul 2023 16:14:26 -0400
X-MC-Unique: _wfq8OBDOWmM74f2KL8XKg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F20AF104458E;
	Thu, 20 Jul 2023 20:14:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0AF7340C6F4C;
	Thu, 20 Jul 2023 20:14:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 56E231946A67;
	Thu, 20 Jul 2023 20:14:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Subject: Re: Mint Installation?
Date: Thu, 20 Jul 2023 16:14:03 -0400
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1762.1689875729.687819.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.1762.1689875729.687819.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1705.1689884060.687816.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCk9jY2FzaW9uYWxseSwgSeKAmWxsIGV4cGVyaWVuY2UgT3JjYSBsb2NraW5nIHVwLgpXaGVu
IHRoaXMgaGFwcGVucywgc29tZXRpbWVzLCBpdCdzIG9ubHkgZm9yIGEgZmV3IHNlY29uZHMgJiBv
dGhlciB0aW1lcywgSSBoYXZlIHRvIHdhaXQgYXMgbG9uZyBhcyA1IG9yIDEwIG1pbnV0ZXMuClRo
aXMgY2FuIGhhcHBlbiB3aXRoIGFueSBhcHAuCkhvdyBjYW4gSSBwcmV2ZW50IHRoaXM/CknigJlt
IHdvcmtpbmcgd2l0aCBhIERlbGwgcHJlY2lzaW9uIDQ4MDAgd2hpY2ggaGFzIDE2R0Igb2YgcmFt
ICYgYSAxVEIgU1NELgpTbywgYmFzZWQgb24gdGhhdCwgd2hhdCBkbyB5b3UgdGhpbmsgd291bGQg
Y2F1c2UgdGhlc2UgaXNzdWVzPwoKCj4gT24gSnVsIDIwLCAyMDIzLCBhdCAxMzo1NSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4gCj4gSmVzc2ljYSwKPiAKPiBJIGp1c3QgcmVjZW50bHkgaW5zdGFsbCBtaW50IDIxLjIg
b24gYSBsYXB0b3AgYW5kIHNvIGZhciBpIGxvdmUgaXQgYXMgd2VsbC4KPiAKPiBSb2RuZXkKPiAK
PiAKPiBPbiA3LzE5LzIwMjMgMDk6NDgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+IEhlbGxvLAo+PiBJIGFtIGEgaHVnZSBmYW4gb2YgcG9kY2FzdHMhCj4+IEkn
ZCBsb3ZlIHRvIGNoZWNrIG91dCB0aGlzIHByb2dyYW0gYnV0IGJlZm9yZSBJIHByb2NlZWQsIEkn
ZCBsaWtlIHRvIGtub3cgaWYgaXQnbGwgd29yayBvbiBMaW51eCBNaW4/Cj4+IEkganVzdCB1cGdy
YWRlZCB0byBNaW50IDIxLjIgbGFzdCBuaWdodCAmIGFtIGxvdmluZyBpdCBzbyBmYXIuCj4+IAo+
PiAKPj4gVGhhbmtzLAo+PiBKZXNzaWNhIERhaWwKPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cg==

