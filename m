Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 185B22B759E
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 06:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605676790;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hSeVMokPCaHJqe4cBxPdlHGxFqoEvHWzAyol0DQxpiQ=;
	b=MogOOondgXNH1K871zAus9MJJEbcS6FSl2fDqsY7/R4zj4rZv7j8GGOay28ErLFE/ZWqF+
	K7Iiggvdjb9IQJh6a/yeiwvuyK816/B5S7rsZTb5trcQ4UInWJHnw7OVhbjsOoC4qlSShU
	w1mfXXfzWdBBdoMaoGeSA25ITZN6BD4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-49BWP6okMX-8lNUWNGs2lw-1; Wed, 18 Nov 2020 00:19:47 -0500
X-MC-Unique: 49BWP6okMX-8lNUWNGs2lw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D89B1899420;
	Wed, 18 Nov 2020 05:19:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CEC06EF57;
	Wed, 18 Nov 2020 05:19:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 91A9744A57;
	Wed, 18 Nov 2020 05:19:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AI5JZCg028144 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 00:19:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 940C1AE7CA; Wed, 18 Nov 2020 05:19:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E044AE7CD
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 05:19:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E524F101CC6F
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 05:19:31 +0000 (UTC)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com
	[209.85.221.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-285-RUfwiFmPMTit8qIETJKzyQ-1; Wed, 18 Nov 2020 00:19:28 -0500
X-MC-Unique: RUfwiFmPMTit8qIETJKzyQ-1
Received: by mail-vk1-f172.google.com with SMTP id i62so179978vkb.7
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 21:19:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=pu4npB1obvnCxftI80yK7U39Kh4bifOR8aZ6GtapVKM=;
	b=hJJ7t/lWDpy96ug3sZ6zK936tIy3NEJyXVXqQtcRupkT+nZ71XjUFkMRCXOOHrJAYr
	EE/7so92pXXxGdZKTZSLTsXl96xA7uwtTK1GrhQOwyopSP+d/MnlZsD+K+3WjTWjpZhH
	oVyif6elt6qAjwqJM8U1ArsOR5dJ0MJbG16//GkrYan2TCOKz5A8dnZMVg8b5DS+dfr4
	C966GkSrqZUAvSxuKaHgsf2qusJnseDnWytMkwvk9KMgwmgjBs9PMePfPFISTmOagPMC
	xDd8jw15nv0FGjT+Yzttu596df9aHxIT88+fTFdjy6lW7tR/2VKkSJkOzMWkwpUrUwxB
	RaAw==
X-Gm-Message-State: AOAM531dKKX6fh1ot8hFbZ66Qxwirtn9t3HUvgu+RhYlF9oy+drfH3YA
	u0/5D2TdsLS0Xfsi1uta+UQ2c1rYrcVJpqCVilQyfTGyykw=
X-Google-Smtp-Source: ABdhPJwf7qqKgi70ouYs9mDRpbbU6O4cPb1g8fkgOz0PgnjXlpcB3hRqIdS2Yf8Sqbj13z8xORKxtqDyQLirNmCoB20=
X-Received: by 2002:a1f:ccc5:: with SMTP id c188mr1996551vkg.4.1605676767705; 
	Tue, 17 Nov 2020 21:19:27 -0800 (PST)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
	<CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
	<CAJKfDDG3bJqAjidbnyOouUo4kD8OKNkxiZe1cqzd4T-ATe-7Kw@mail.gmail.com>
	<alpine.NEB.2.23.451.2011172101190.5885@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2011172101190.5885@panix1.panix.com>
Date: Wed, 18 Nov 2020 00:19:17 -0500
Message-ID: <CAJKfDDGPAKU1x2OiD=Q8Fpocngub8g=yWwjcj0JZTk4BmFpJRw@mail.gmail.com>
Subject: Re: as I suspected
To: blinux-list <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V29ydGhsZXNzIHRoZW4sIHdhcm4gbWUgd2hlbiBhbiBhY2Nlc3NpYmxlIGRpc3RyaWJ1dGlvbnMg
d2lsbCB1c2UgRGViaWFuIGFzCmJhc2UsIEkgY291bGQgY29udHJpYnV0ZSwgb3RoZXJ3aXNlIEkg
d2lsbCBsZXQgbXkgaWRlYXMgc2xlZXAgc3Rhc2hlZCB1cC4KCk1pY2hhw6tsIENhcm9uIENvdXR1
cmllcgoKCkxlIG1hci4gMTcgbm92LiAyMDIwLCDDoCAyMSBoIDAzLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDwKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gYSDDqWNyaXQgOgoK
PiBJdCdzIG5vdCBiYXNlZCBvbiBhIGRpc3RyaWJ1dGlvbi4gIFNlZSB3aGVuIHlvdSBnZXQgdGhl
IGlzbyBnb2luZywgeW91Cj4gaGF2ZSBhIGNob2ljZSBvZiB3aGF0J3MgY2FsbGVkIGplbnV4IHdo
aWNoIGlzIGJhc2VkIG9uIGJsYWNrYXJjaCBidXQgeW91Cj4gY2FuIGFsc28gaW5zdGFsbCBhbmRy
b2lkIGFuZCBpZiB5b3UgZG8gdGhhdCBhdCB0aGUgZW5kIG9mIGEgc3VjY2Vzc2Z1bAo+IGluc3Rh
bGxhdGlvbiB0YWxrYmFjayB3aWxsIGJlIHJlYWRpbmcgeW91ciBzY3JlZW4gZm9yIHlvdS4KPgo+
IE9uIFR1ZSwgMTcgTm92IDIwMjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4KPiA+IERhdGU6IFR1ZSwgMTcgTm92IDIwMjAgMTk6NTE6MzMKPiA+IEZyb206IExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
Cj4gPiBUbzogYmxpbnV4LWxpc3QgPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4gPiBTdWJqZWN0
OiBSZTogYXMgSSBzdXNwZWN0ZWQKPiA+Cj4gPiBKZW51eCBpcyBiYXNlZCBvbiB3aGljaCBkaXN0
cmlidXRpb24/Pz8KPiA+Cj4gPiBMZSBtYXIuIDE3IG5vdi4gMjAyMCAxOTozNiwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4gPiBibGludXgtbGlzdEByZWRoYXQuY29tPiBh
ID9jcml0IDoKPiA+Cj4gPiA+IERhbmllbCBOYXNoLCB0aGUgbWFpbnRhaW5lciBvZiBKZW51eCwg
aXMgYSBnb29kIGZyaWVuZCBvZiBtaW5lIGFuZCBoZQo+ID4gPiBhbHdheXMgc2VlbXMgdG8gbWFr
ZSBzdXJlIHRoYXQgdGhpbmdzIHN0YXkgdXBkYXRlZC4gSGlzIGRlZGljYXRpb24gdG8KPiB0aGUK
PiA+ID4gTGludXggb3BlcmF0aW5nIHN5c3RlbSBhbmQgdG8gaGlzIHVzZXIgYmFzZSBoYXMgbm90
IGJlZW4gZXF1YWxlZCBpbiB0aGUKPiA+ID4gc3BhY2Ugb2YgdmlzdWFsbHkgaW1wYWlyZWQgTGlu
dXggZGlzdHJpYnV0aW9ucywgYXQgbGVhc3QgaW4gbXkgb3Bpbmlvbi4KPiA+ID4KPiA+ID4gT24g
VHVlLCBOb3YgMTcsIDIwMjAsIDExOjQ4IEFNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPAo+ID4gPiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4g
PiBBIG5ldyBpc28gd2FzIHJlbGVhc2VkLgo+ID4gPiA+IGh0dHBzOi8vbmFzaGNlbnRyYWwuZHVj
a2Rucy5vcmcvcHJvamVjdHMvSmVudXgtMjAyMC4xMS4xNi1kdWFsLmlzbwo+ID4gPiA+IGZvciBK
ZW51eC4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gLS0KPiA+ID4gPiBVbml0ZWQgU3RhdGVzIGhh
cyA2MzMgQmlsbGlvbmFpcmVzIHdpdGggb25seSAxMCBkb2luZyBhbnkgYW5udWFsCj4gPiA+ID4g
c2lnbmlmaWNhbnQgZ2l2aW5nLgo+ID4gPiA+Cj4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiA+ID4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiA+ID4gaHR0cHM6Ly93d3cucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPiA+ID4KPiA+ID4gPgo+ID4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4g
PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+
ID4KPiA+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiA+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Cj4gLS0KPiBVbml0ZWQgU3RhdGVzIGhhcyA2MzMgQmlsbGlvbmFpcmVzIHdpdGggb25seSAx
MCBkb2luZyBhbnkgYW5udWFsCj4gc2lnbmlmaWNhbnQgZ2l2aW5nLgo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

