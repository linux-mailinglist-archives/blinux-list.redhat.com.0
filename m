Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 001B91B6FF0
	for <lists+blinux-list@lfdr.de>; Fri, 24 Apr 2020 10:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587717757;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sc4UEnPVTRmnDqQLnQ+U9cXc1wEhh2p4L1m8bkE18oo=;
	b=Nsmq0qIbaM8lzowAR5tYTKZLU8DgFj/gy7GPOLEG1m52+ONaUkRF6b9RgEecd78ab/3Fzm
	iUFQ+6ZlND7xvdf/QyzDKW8pX/gy6n0C1NHG4Xh7U9G/C+GTjb36a+dg58tj1eB5H/kawo
	XYIhwjJuIev++64WSU0MSsEXmBDgQ1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-OMZ06p78O7SA-EFm0xjNVg-1; Fri, 24 Apr 2020 04:42:35 -0400
X-MC-Unique: OMZ06p78O7SA-EFm0xjNVg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5386E8018AC;
	Fri, 24 Apr 2020 08:42:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FD0B5C1D2;
	Fri, 24 Apr 2020 08:42:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 66A704CAA0;
	Fri, 24 Apr 2020 08:42:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03O8gDui016169 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 24 Apr 2020 04:42:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6BD522166BA0; Fri, 24 Apr 2020 08:42:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 67DE02157F26
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 08:42:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05C2C80028C
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 08:42:11 +0000 (UTC)
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com
	[192.185.150.24]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-443-Tq9cY7PUPXa43qa34tmDTQ-1; Fri, 24 Apr 2020 04:42:08 -0400
X-MC-Unique: Tq9cY7PUPXa43qa34tmDTQ-1
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway30.websitewelcome.com (Postfix) with ESMTP id AC4B2AE10
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 03:42:07 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id RtuRjfA0dAGTXRtuRjycE1; Fri, 24 Apr 2020 03:42:07 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-96-191.inter.net.il ([84.229.96.191]:52020
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1jRtuP-002jHH-FA
	for blinux-list@redhat.com; Fri, 24 Apr 2020 03:42:05 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 4E9832610ED
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 11:42:01 +0300 (IDT)
Date: Fri, 24 Apr 2020 11:42:01 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: unpacking git files
Message-ID: <20200424114201.520f6292@telaviv1.shlomifish.org>
In-Reply-To: <alpine.NEB.2.21.2004231747100.22899@panix1.panix.com>
References: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
	<20200423.211449.706.12@[0.0.0.0]>
	<alpine.NEB.2.21.2004231747100.22899@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.96.191
X-Source-L: No
X-Exim-ID: 1jRtuP-002jHH-FA
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-96-191.inter.net.il (telaviv1.shlomifish.org)
	[84.229.96.191]:52020
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03O8gDui016169
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMyBBcHIgMjAyMCAxNzo0Nzo1NyAtMDQwMApMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gVGhhdCB3b24n
dCB3b3JrIGluIHRoaXMgY2FzZSwgc2luY2UgSSBhbHJlYWR5IHRyaWVkIGl0LiAgSXQncyByZXF1
aXJpbmcKPiBhIGxvZ2luIHdoaWNoIEkgY2Fubm90IG5vdyBkby4KPiAKCmdpdCBjbG9uZSB3b3Jr
cyBmb3IgcHVibGljIGdpdGh1YiByZXBvc2l0b3JpZXMgd2l0aG91dCBuZWVkaW5nIGxvZ2luOgoK
YGBgCltrZGV0ZXN0QGxvY2FsaG9zdCB+XSQgZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS9q
b2V3aW5nL2p3bQpDbG9uaW5nIGludG8gJ2p3bScuLi4KcmVtb3RlOiBFbnVtZXJhdGluZyBvYmpl
Y3RzOiAxMTE5MSwgZG9uZS4KcmVtb3RlOiBUb3RhbCAxMTE5MSAoZGVsdGEgMCksIHJldXNlZCAw
IChkZWx0YSAwKSwgcGFjay1yZXVzZWQgMTExOTEKUmVjZWl2aW5nIG9iamVjdHM6IDEwMCUgKDEx
MTkxLzExMTkxKSwgNi4wMCBNaUIgfCAzLjE4IE1pQi9zLCBkb25lLgpSZXNvbHZpbmcgZGVsdGFz
OiAxMDAlICg3ODQ3Lzc4NDcpLCBkb25lLgpba2RldGVzdEBsb2NhbGhvc3Qgfl0kIHJtIC1mciBq
d20vCltrZGV0ZXN0QGxvY2FsaG9zdCB+XSQgZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS9q
b2V3aW5nL2p3bS5naXQKQ2xvbmluZyBpbnRvICdqd20nLi4uCnJlbW90ZTogRW51bWVyYXRpbmcg
b2JqZWN0czogMTExOTEsIGRvbmUuCnJlbW90ZTogVG90YWwgMTExOTEgKGRlbHRhIDApLCByZXVz
ZWQgMCAoZGVsdGEgMCksIHBhY2stcmV1c2VkIDExMTkxClJlY2VpdmluZyBvYmplY3RzOiAxMDAl
ICgxMTE5MS8xMTE5MSksIDYuMDAgTWlCIHwgMy4xOCBNaUIvcywgZG9uZS4KUmVzb2x2aW5nIGRl
bHRhczogMTAwJSAoNzg0Ny83ODQ3KSwgZG9uZS4KW2tkZXRlc3RAbG9jYWxob3N0IH5dJCBscyAu
c3NoCmxzOiBjYW5ub3QgYWNjZXNzICcuc3NoJzogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQpb
a2RldGVzdEBsb2NhbGhvc3Qgfl0kIApgYGAKCmFsc28gIi5naXQiICh3aGljaCBob2xkcyB0aGUg
cmVwb3NpdG9yeSdzIGhpc3RvcnkpIGlzIGEgZGlyZWN0b3J5IC0gbm90IGEgZmlsZSwKc2VlOiBo
dHRwczovL2dpdC1zY20uY29tLyAuCgpXaGljaCBjb21tYW5kIGFyZSB5b3UgdXNpbmcgZXhhY3Rs
eT8KCj4gT24gVGh1LCAyMyBBcHIgMjAyMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiAKPiA+IERhdGU6IFRodSwgMjMgQXByIDIwMjAgMTc6MTQ6NDkKPiA+IEZy
b206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Cj4gPiBUbzogYmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gU3ViamVjdDogUmU6IHVu
cGFja2luZyBnaXQgZmlsZXMKPiA+Cj4gPiBUcnkKPiA+IGdpdCBjbG9uZSBodHRwOi8vZ2l0aHVi
LmNvbS93aGF0ZXZlci93aGF0ZXZlci5naXQKPiA+Cj4gPgo+ID4gLS0tLS0gT3JpZ2luYWwgTWVz
c2FnZSAtLS0tLQo+ID4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiA+IFRvOiBibGludXgtbGlzdEByZWRoYXQuY29tCj4g
PiBEYXRlOiBUaHUsIDIzIEFwciAyMDIwIDE3OjEzOjQyIC0wNDAwCj4gPiBTdWJqZWN0OiB1bnBh
Y2tpbmcgZ2l0IGZpbGVzCj4gPiAgCj4gPiA+IElmIHlvdSBkb3dubG9hZCBhIGdpdCBmaWxlIGhv
dyBpcyBpdCBwb3NzaWJsZSB0byBoYXZlIGdpdCB1bnBhY2sgdGhlIGZpbGUKPiA+ID4gZm9yIHlv
dSBpbnRvIGl0cyBvd24gZGlyZWN0b3J5IHRyZWU/Cj4gPiA+IEkgZmFpbGVkIHRvIHdyaXRlIG15
IGdpdCBjcmVkZW50aWFscyBpbiBicmFpbGxlIGFuZCBoYXZlbid0IHVzZWQgdGhlbSBmb3IKPiA+
ID4gYSB2ZXJ5IGxvbmcgdGltZSBzbyBtYXkgYmUgYWJsZSB0byBnZXQgYSBnaXQgZmlsZSB1c2lu
ZyB3Z2V0IGJ1dCBmb3Igbm93IEkKPiA+ID4gZG9uJ3Qga25vdyBob3cgdG8gdW5wYWNrIHRoZSBm
aWxlLgo+ID4gPgo+ID4gPgo+ID4gPgo+ID4gPiAtLQo+ID4gPgo+ID4gPgo+ID4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiBodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+ID4KPiA+ID4g
IAo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+Cj4gPiAgCj4gCgoKCi0tIAoKU2hsb21pIEZpc2ggICAgICAgaHR0cHM6Ly93d3cuc2hs
b21pZmlzaC5vcmcvCldoYXQgZG9lcyDigJxaaW9uaXNt4oCdIG1lYW4/IC0gaHR0cHM6Ly9zaGxv
bS5pbi9kZWYtemlvbmlzbQoK4oCcQSBpcyBBLCBhbmQgQSBpcyBub3Qgbm90LUE/IFdUSCBpcyBo
ZSB0YWxraW5nIGFib3V0Pz8hIE9mIGNvdXJzZSBBIGNhbiBiZQpub3QtQSEgSSB3YW50IGEgbGl0
dGxlIG9mIHRoZSBzdHVmZiBoZeKAmXMgb24h4oCdCiAgICDigJQgSW5pdGlhbCByZWFjdGlvbiB0
byB0aGUgaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvT3JnYW5vbgoKUGxlYXNlIHJlcGx5
IHRvIGxpc3QgaWYgaXQncyBhIG1haWxpbmcgbGlzdCBwb3N0IC0gaHR0cHM6Ly9zaGxvbS5pbi9y
ZXBseSAuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93
d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

