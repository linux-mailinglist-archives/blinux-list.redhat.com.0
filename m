Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6F720727C
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 13:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592999298;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3ZEoqXLz/o/3Sl4ZsjhNMF4SsxCQYJ5OgahtqSHxHo4=;
	b=Fn5N5T7vdj4HBh8BJ8lX8Lsk6sXeeGoDqI+5q6Pe434GEDwizg1iEbdHuu7Nmloc4faWSU
	cl9Akrf9cuu+WZqMFHV9uR8jESgrVpgFmww5SfQ1xP3PwwKScPYDmKpcdMfMUZ1jZxjCpJ
	j83okXSw0rjeGn9NKTo/7UZmH9BEWfM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-MJepDyvaPnuXgUzpltqLQA-1; Wed, 24 Jun 2020 07:48:16 -0400
X-MC-Unique: MJepDyvaPnuXgUzpltqLQA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CFF4464;
	Wed, 24 Jun 2020 11:48:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16A055EDE2;
	Wed, 24 Jun 2020 11:48:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F9E31809547;
	Wed, 24 Jun 2020 11:48:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OBm97T030118 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 07:48:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5345B20234BB; Wed, 24 Jun 2020 11:48:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DF512029F83
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 11:48:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9591F8007C9
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 11:48:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-107-s1mHZHSmOmuNPOiWR60E2g-1; Wed, 24 Jun 2020 07:48:04 -0400
X-MC-Unique: s1mHZHSmOmuNPOiWR60E2g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49sLxc03RHz16V5
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 07:48:03 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49sLxb6ln1zcbc; Wed, 24 Jun 2020 07:48:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49sLxb6G4jzcbV
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 07:48:03 -0400 (EDT)
Date: Wed, 24 Jun 2020 07:48:03 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlc bookmarks
In-Reply-To: <d0af7122-f6f8-be45-e33a-78eb5e13379e@slint.fr>
Message-ID: <alpine.NEB.2.22.394.2006240747160.22958@panix1.panix.com>
References: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
	<d0af7122-f6f8-be45-e33a-78eb5e13379e@slint.fr>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OBm97T030118
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIG11Y2ghICBJIGNvdWxkIHVzZSBtcHYgZm9yIHRoaXMgcHJvamVjY3Qgd2l0aCBubyBw
cm9ibGVtLgoKT24gV2VkLCAyNCBKdW4gMjAyMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKCj4gRGF0ZTogV2VkLCAyNCBKdW4gMjAyMCAwNjoyNjowNAo+IEZyb206
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+Cj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBTdWJqZWN0OiBSZTogdmxjIGJvb2tt
YXJrcwo+Cj4gTGUgMjQvMDYvMjAyMCA/IDAzOjE2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIGEgP2NyaXTCoDoKPiA+IEZvciBjb21tYW5kIGxpbmUgdXNlcnMgb2YgdmxjIHdp
bGwgaXQgYmUgcG9zc2libGUgdG8gcGF1c2UgaW4gYSByYXRoZXIKPiA+IGxvbmcgbXAzIGZpbGUg
YW5kIHNhdmUgYSBib29rbWFyayBhdCB0aGF0IHNwb3QgdGhlbiBsYXRlciByZXR1cm4gdG8gdGhh
dAo+ID4gYm9va21hcms/Cj4KPgo+IEkgZG9uJ3Qga25vdyBmb3IgdmxjLCBidXQgdXNpbmcgbXB2
IGp1c3QgcHJlc3MgUSAoY2FwaXRhbCBsZXR0ZXIpOgo+IHRoaXMgc3RvcmVzIHRoZSBjdXJyZW50
IHBsYXliYWNrIHBvc2l0aW9uIHRoZSBxdWl0LiBQbGF5aW5nIHRoZSBzYW1lCj4gZmlsZSBsYXRl
ciB3aWxsIHJlc3VtZSBhdCB0aGUgb2xkIHBsYXliYWNrIHBvc2l0aW9uIGlmIHBvc3NpYmxlLgo+
Cj4gSSBqdXN0IHRyaWVkIHdpdGggYSBtcDMgZmlsZSwgaXQgd29ya3MuIEl0IGFsc28gd29ya2tz
IHBsYXlpbmcgYQo+IHlvdXR1YmUgdmlkZW8gbGlrZSB0aGlzOgo+Cj4gbXB2IC0tbm8tdmlkZW8g
aHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1uek90QjZmSmhpdwo+Cj4gSXQgdGhlbiBx
dWl0IGFmdGVyIGhhdmluZyBkaXNwbGF5ZWQ6Cj4gU2F2aW5nIHN0YXRlLgo+Cj4gV2hlbiBwbGF5
aW5nIHRoZSBzYW1lIGZpbGUgbmV4dCB0aW1lIGl0IGRpc3BsYXlzOgo+IFJlc3VtaW5nIHBsYXli
YWNrLiBUaGlzIGJlaGF2aW9yIGNhbiBiZSBkaXNhYmxlZCB3aXRoIC0tbm8tcmVzdW1lLXBsYXli
YWNrCj4KPiBUaGVuICBpdCByZXN1bWVzIHBsYXlpbmcgd2hlcmUgaXQgc3RvcHBlZCBsYXN0IHRp
bWUuCj4KPiBJdCBjb3VsZCBoYXJkbHkgYmUgc2ltcGxlciwgSSB0aGluay4KPgo+IC0tCj4gRGlk
aWVyIFNwYWllcgo+IERpZGllcgo+Cj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0CgotLSAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

