Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D826357E571
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jul 2022 19:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658510644;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L/xB2J8ErOcQPLFVZ5mXOaqy7v/epwxoRwVyTfQhfWs=;
	b=YunTgbarcTp7TMyeSKOKNh4NW6PyBtY58xc6iGXHCq8PGfVeQXsaVS8gtCKVqGteepiAPC
	amooloycKTSmNHDq6WWC7yJ6vZ7GRsvLqEg9YI5iXsPVnd8+9ZqdtJtxTyDTbxRTnoswkR
	R/KtbvLoQnp+Go1ci30XQeERZZ6PDxE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-sMsQlp9lPbSLwG83BLR-oA-1; Fri, 22 Jul 2022 13:24:01 -0400
X-MC-Unique: sMsQlp9lPbSLwG83BLR-oA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E79A53C0D864;
	Fri, 22 Jul 2022 17:23:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 31ED8141511A;
	Fri, 22 Jul 2022 17:23:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 626CD19451F3;
	Fri, 22 Jul 2022 17:23:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 22 Jul 2022 19:16:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [slint] Re: The Register: Tavis Ormandy ports WordPerfect for
 UNIX to Linux (fwd)
To: blinux-list@redhat.com
References: <mailman.35571.1658501727.111207.blinux-list@redhat.com>
 <1764ad6f-992a-3067-5432-cdd7d9118064@hubert-humphrey.com>
 <mailman.35980.1658504582.111209.blinux-list@redhat.com>
 <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
In-Reply-To: <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
Message-ID: <mailman.35751.1658510592.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIC5kZWIgaXMgYXZhaWxhYmxlIGZyb20gdGhpcyBwYWdlOgpodHRwczovL2dpdGh1Yi5jb20v
dGF2aXNvL3dwdW5peC9yZWxlYXNlcwpEaXJlY3QgbGluazoKaHR0cHM6Ly9naXRodWIuY29tL3Rh
dmlzby93cHVuaXgvcmVsZWFzZXMvZG93bmxvYWQvdjAuMDMvd29yZHBlcmZlY3Q3LjBfaTM4Ni5k
ZWIKCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKCgpMZSAyMi8wNy8y
MDIyIMOgIDE4OjM4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0
wqA6Cj4gTXkgZ3Vlc3Mgd291bGQgYmUgd2UgY2FuJ3QgZmluZCB0aGUgLmRlYiBwYWNrYWdlIGJl
Y2F1c2UgdGhleSBhcmUgd2FpdGluZyBmb3IgYW4KPiBhbnN3ZXIgZnJvbSBDb3JlbCBvbiB3aGV0
aGVyIGl0IGlzIGxlZ2FsIG9yIG5vdCBiZWZvcmUgcG9zdGluZyBpdC4gVGhhdCBpcwo+IGhvd2V2
ZXIganVzdCBhIGd1ZXNzLgo+IAo+IFRvbQo+IAo+IAo+IE9uIEZyaSwgMjIgSnVsIDIwMjIsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4+IElmIFJheSBKYWNr
c29uIHdlcmUgd2l0aCB1cyBub3csIGhlIHdvdWxkIGhhdmUgbG92ZWQgdGhhdCBhbm5vdW5jZW1l
bnQuCj4+Cj4+Cj4+IE9uIEZyaSwgMjIgSnVsIDIwMjIsIENoaW1lIEhhcnQgd3JvdGU6Cj4+Cj4+
PiBUaGFuayB5b3UgSnVkZTogWWVzdGVyZGF5IDEgb2YgbXkgTGludXggZXhwZXJ0cyBzZW50IG1l
IGEgbGluayB0byB0aGF0IHN0b3J5LAo+Pj4gYnV0IHdoaWxlIHRoZXJlIGFyZSBtZW50aW9ucyBv
ZiBhIC5kZWIgZmlsZSwgSSBzYXcgbm9uZS4gQ2VydGFpbmx5LCB3aGlsZSBJCj4+PiByZWFsbHkg
bGlrZSBOQU5PLCBhdCBsZWFzdCBXUCB3b3VsZCBsZXQgbWUgc2VlIHJldmVhbCBjb2Rlcy4gVGhh
bmtzIGluIGFkdmFuY2UKPj4+IENoaW1lCj4+Pgo+Pj4gPT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+
Pj4gVGhlIFNsaW50IG1haWxpbmcgbGlzdC4KPj4+IEFyY2hpdmU6IGh0dHBzOi8vd3d3LmZyZWVs
aXN0cy5vcmcvYXJjaGl2ZS9zbGludAo+Pj4gVG8gc3Vic2NyaWJlIG9yIHVuc3Vic2NyaWJlLCBl
bWFpbCBzbGludC1yZXF1ZXN0QGZyZWVsaXN0cy5vcmcgd2l0aCB0aGUKPj4+IHN1YmplY3QKPj4+
ICdzdWJzY3JpYmUnIG9yICd1bnN1YnNjcmliZScsIHRoZW4gYW5zd2VyIHRoZSBlbWFpbCB5b3Ug
d2lsbCByZWNlaXZlLgo+Pj4gTW9yZTogZW1haWwgc2xpbnQtcmVxdWVzdEBmcmVlbGlzdHMub3Jn
IHdpdGggYXMgc3ViamVjdCAnaGVscCcgb3IgJ2NvbW1hbmRzJy4KPj4+Cj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

