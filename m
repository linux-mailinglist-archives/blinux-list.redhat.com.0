Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E274B153C
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 19:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644517721;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EagoJ/d4kP8v7X5/pwEy7V7biXdlONd9Zf6tLICG/+Y=;
	b=La0e8mcim+HnfumTt2pxMs2XHRAifRWGwRG0s6JIS1U87Dg6YRvI9hZ9Y3Z5/ZeanS3zSl
	vvItKLhu5K94sMVlISOwp+VQz8k27YoFFM5KYSsvcqlmp5k5cVE+5rI8spK/zZyHXy9we1
	jug/KdDT4VeXP9acD8sCed/5Zvsm29M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-296-WsrFuiq4NNOlwZZ6Ku35qg-1; Thu, 10 Feb 2022 13:28:37 -0500
X-MC-Unique: WsrFuiq4NNOlwZZ6Ku35qg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D50801853026;
	Thu, 10 Feb 2022 18:28:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EF637747A;
	Thu, 10 Feb 2022 18:28:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 357521809CB8;
	Thu, 10 Feb 2022 18:28:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AIQiZ7027569 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 13:26:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7A42640885B9; Thu, 10 Feb 2022 18:26:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75FB440885B8
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 18:26:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5DC211857F0E
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 18:26:44 +0000 (UTC)
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch
	[185.70.43.16]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-139-r6tKtEjNMy-W1wvMP7Er2Q-1; Thu, 10 Feb 2022 13:26:42 -0500
X-MC-Unique: r6tKtEjNMy-W1wvMP7Er2Q-1
Date: Thu, 10 Feb 2022 18:26:32 +0000
To: blinux-list@redhat.com
Subject: Re: Coqui TTS has blew my mind!
Message-ID: <1dbf9974-8873-b5ca-1ea0-9e77047677ff@protonmail.com>
In-Reply-To: <Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21AIQiZ7027569
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCdzIG5vdCB0cnVlLgoKVGhlIHNhbXBsZXMgYXJlIHByb3ZpZGVkIHRocm91Z2ggYSAqc3Rh
bmRhcmRpemVkKiBIVE1MIGF1ZGlvIHBsYXllciwgYXMKZGVmaW5lZCBieSB0aGUgV29ybGQgV2lk
ZSBXZWIgY29uc29ydGl1bSAodGhlICphdXRob3JpdHkqIGZvciBIVE1MLCBydW4KYnkgaXRzIGNy
ZWF0b3IpLgoKCklmIHNvbWUgY29tbWFuZC1saW5lIGFwcGxpY2F0aW9uIGlzIHVuYWJsZSB0byBw
cm9jZXNzIGl0IGNvcnJlY3RseSwKdGhhdCdzIG5vdCBhIHByb2JsZW0gb2YgVzNDLCBIVE1MIG9y
IGFueSBpdHMgdXNlci4KCgpCZXN0IHJlZ2FyZHMKCgpSYXN0aXNsYXYKCgpExYhhIDEwLiAyLiAy
MDIyIG8gMTk6MTAgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChh
KToKPiAuLndoaWNoIG1ha2VzIHN0YXRpbmcgdGhhdCB0aGVzZSBhcmUgYWNjZXNzaWJsZSBpbmNv
cnJlY3QuCj4gTGludXggZXhpc3RzIGluIGNvbW1hbmQgbGluZSBhcyB3ZWxsIGFzIGd1aS4gIGFz
IHNvbWVvbmUgZWxzZSBpbiBhCj4gZGlmZmVyZW50IHRocmVhZCBub3RlZCByZWNlbnRseSwgdGhl
eSBwZXJzb25hbGx5IHdvdWxkIG5vdCB0b3VjaCBndWkKPiBhZ2FpbiBmb3IgIHRoZSByZXN0IG9m
IHRoZWlyIGxpdmVzIGlmIGdpdmVuIGEgY2hvaWNlLgo+IE1lYW5pbmcgdGhlc2Ugb3B0aW9ucyBh
cmUgbm90IHVuaXZlcnNhbGx5IGF2YWlsYWJsZSBvciBhY2Nlc3NpYmxlIGluIExpbnV4Cj4gYXMg
YSB3aG9sZS4KPiBtaWdodCBhcyB3ZWxsIHNheSwgcGxlYXNlIG9ubHkgYmUgZGlzYWJsZWQgYXMg
SSBwZXJzb25hbGx5IGRlZmluZSBpdCwKPiB3cml0aW5nIGFjY2Vzc2libGUgYnkgeW91ciBvd24g
ZGljdGlvbmFyeSBhbmQgc2VlbWluZ2x5IHRvIHByb2plY3QgaXQgb24KPiB0byBvdGhlciBwZW9w
bGUuCj4gV2h5IG5vdCBzYXkgZnJvbSB0aGUgb3V0c2V0LCB0aGF0IHRoZSBpdGVtcyBhcmUgb25s
eSBhdmFpbGFibGUgZm9yIHNvbWUKPiBMaW51eCB1c2Vycz8KPgo+Cj4KPiBPbiBXZWQsIDkgRmVi
IDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gVGhl
IHNhbXBsZXMgYXJlIEhUTUw1IGF1ZGlvIGVsZW1lbnRzIG9uIHRoZSBwYWdlLiBUaGV5J3JlIGZh
aXJseSBlYXN5IHRvCj4+IGRvd25sb2FkLCBidXQgb25seSBvbiBicm93c2VycyBsaWtlIEZpcmVm
b3ggYW5kIENocm9tZS4gSSBkb24ndCBrbm93IGlmIHRoZXkKPj4gaGF2ZSBmYWxsYmFjayBsaW5r
cyBmb3IgdGV4dC1iYXNlZCBicm93c2Vycy4gTXkgd2Vic2l0ZSBoYXMgZmFsbGJhY2tzLCBidXQK
Pj4gRmlyZWZveCwgQ2hyb21lIGFuZCBvdGhlciBIVE1MNSBicm93c2VycyBoaWRlIHRoZW0uIEkg
ZGlkbid0IHRyeSB0aGUgc2FtcGxlcwo+PiBpbiBhIGRpZmZlcmVudCBicm93c2VyIHRvIHNlZSB3
aGV0aGVyIGZhbGxiYWNrIGRvd25sb2FkIGxpbmtzIGFyZSBwcmVzZW50Lgo+PiBUaGUgeW91dHVi
ZSBsaW5rIGRvZXMgb2ZmZXIgYSBmYWlybHkgZGVjZW50IGV4YW1wbGUgb2YgdGhlIHF1YWxpdHkg
b2Ygc3BlZWNoCj4+IGFuZCBzb3VuZCB0aG91Z2gKPj4KPj4gfiBLeWxlCj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

