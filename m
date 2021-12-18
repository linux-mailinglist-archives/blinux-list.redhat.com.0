Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 48996479C99
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 21:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639859848;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L7bS11vyLEV1aHTD5ZYd1S1sd9Y3/tgPVFVMMlqY4q0=;
	b=WLM1l8LWlrslSqry3VknIj3mdvDhIcemBGgP+f+TsTchxe0dAxl+Vfac6IZCvULoDfrX0T
	qRTB9zY5gf8+UdvsKgg0BvvglMdG1Vjxr2GFRMNR3h6cBaXNKSGecLcnqrkk/ixbf5smDn
	ZgfyaxR5sx6GvkDTjY5/JqHplBb9/n4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-577-mBTOHuqrN_Olmkor0EmM9w-1; Sat, 18 Dec 2021 15:37:24 -0500
X-MC-Unique: mBTOHuqrN_Olmkor0EmM9w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51E661006AA1;
	Sat, 18 Dec 2021 20:37:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24C8123792;
	Sat, 18 Dec 2021 20:37:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 504404BB7B;
	Sat, 18 Dec 2021 20:37:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIKb65L025138 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 15:37:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2A8F3403579D; Sat, 18 Dec 2021 20:37:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2689F400E10E
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 20:37:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 11E6A3C11A1C
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 20:37:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-495-K4I2ML1qN-SDCJrjvkiDWQ-1; Sat, 18 Dec 2021 15:37:04 -0500
X-MC-Unique: K4I2ML1qN-SDCJrjvkiDWQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JGd1q6HFKz3vZX
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 15:37:03 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JGd1q5F69zcbc; Sat, 18 Dec 2021 15:37:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JGd1q4hN6zcbC
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 15:37:03 -0500 (EST)
Date: Sat, 18 Dec 2021 15:37:03 -0500
To: blinux-list@redhat.com
Subject: Re: fenrir-screenreader and python 3.10 (fwd)
Message-ID: <alpine.NEB.2.23.451.2112181536530.12616@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BIKb65L025138
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CgotLS0tLS0tLS0tIEZvcndhcmRlZCBtZXNzYWdlIC0tLS0tLS0tLS0KRGF0ZTogU2F0LCAxOCBE
ZWMgMjAyMSAxNDozMDo0NgpGcm9tOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IDxibGludXgtbGlzdEByZWRoYXQuY29tPgpUbzogYmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpTdWJq
ZWN0OiBSZTogZmVucmlyLXNjcmVlbnJlYWRlciBhbmQgcHl0aG9uIDMuMTAKCkhvd2R5LAoKV2Vs
bCB5b3UgZG9uP3QgaGF2ZSB0byByZWJ1aWxkIGJ1dCBpZiB5b3UgaGF2ZSBpdCBpbnN0YWxsZWQg
eW91IGhhdmUgdG8gcmVpbnN0YWxsIGl0IHdpdGggZXZlcnkgbmV3IG1ham9yIFB5dGhvbiB2ZXJz
aW9uIHRvIHBsYWNlIHRoZSBzb3VyY2VzIGluIHRoZSBsb2NhbCBQeXRob24gcmVwb3NpdG9yeS4g
IFNvIHRoZXkgY2FuIGJlIGZvdW5kIGJ5IHRoZSBpbnRlcnByZXRlci4KCgoKPiBBbSAxOC4xMi4y
MDIxIHVtIDIwOjIwIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4KPiDvu79GZW5yaXIgd2lsbCBuZWVkIHJlYnVpbGRp
bmcgbG9jYWxseSBhcyB3aWxsIGFsbCBvdGhlciBvbGRlciBweXRob24KPiBhcHBsaWNhdGlvbnMu
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

