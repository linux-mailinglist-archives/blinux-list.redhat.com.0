Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B694FBCBD
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 15:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649682343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qn3liLfRoGAaYdVi9VHPS0YXKq34eQ5E5oV+7JRottg=;
	b=ik6UFppUQC+WQbSQShOGjo7E59gNZtc5BfXVHJEg9BjmC6TsnGNsWyzM/ffbRW6knT2xou
	uNc0jLT2j8qesL9FwvR9f7nxhGAudOj3qPUb+vJwJQT0zWzaxwfoAjMmEpY1yMO/iPGsBl
	vk92+yAmh4SvWwy+NXroxUdPZEPOQj8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-aHGsw34ONBuh7PgbZh0EJw-1; Mon, 11 Apr 2022 09:05:40 -0400
X-MC-Unique: aHGsw34ONBuh7PgbZh0EJw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2EC42381D8A2;
	Mon, 11 Apr 2022 13:05:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BE54E42D3C9;
	Mon, 11 Apr 2022 13:05:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 543DD1947BBD;
	Mon, 11 Apr 2022 13:05:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Apr 2022 14:05:22 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Dragonfm history vs show hidden
References: <mailman.7645.1649604626.111204.blinux-list@redhat.com>
 <mailman.7797.1649605136.111201.blinux-list@redhat.com>
 <mailman.7858.1649660857.111201.blinux-list@redhat.com>
 <mailman.7638.1649667258.111207.blinux-list@redhat.com>
 <mailman.7890.1649677727.111201.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7890.1649677727.111201.blinux-list@redhat.com>
Message-ID: <mailman.7534.1649682331.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsIHdvcmtzIGFzIGV4cGVjdGVkIG5vdyBhbmQgaXQncyBtYWRlIERyYWdvbkZNIGEgbXVjaCBi
ZXR0ZXIgcHJvZ3JhbQoKCk9uIE1vbiwgQXByIDExLCAyMDIyIGF0IDAxOjQ4OjM5UE0gKzAyMDAs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSG93ZHksCj4gCj4g
Ly8gQWggSSBzZWUgd2hhdCB3YXMgdHJpcHBpbmcgbWUgdXAsIHRoZSBoaWRkZW4gdGhpbmdzIGFy
ZSBhdCB0aGUgdG9wIG5vdAo+IC8vIGFmdGVyIHRoZSByZWd1bGFyIGZpbGVzL2ZvbGRlcnMgbGlr
ZSBpbiBHVUkgY2xpZW50cy4gSSdtIHVuc3VyZSBpZiBJIGNhbgo+IC8vIHR3ZWFrIHRoYXQgaW4g
dGhlIHNldHRpbmdzLmNvbmYgb3I/Cj4gaSBqdXN0IGFkZGVkIHRoaXMgZm9yIHlvdS4gcGxlYXNl
IHB1bGwgbWFzdGVyLiB0aGVyZSBpcyBub3cgYSBuZXcgb3B0aW9uIGluCj4gc2VjdGlvbiBmb2xk
ZXIgImhpZGRlbkZpcnN0Ii4KPiBUcnVlID0gYmVoYXZlIGp1c3QgYmV2b3JlLCBsaXN0IGhpZGRl
biBmaWxlcyBmaXJzdAo+IEZhbHNlID0gaWdub3JlIHRoZSBmaXJzdCAuIGluIHRoZSBuYW1lIGFu
ZCBqdXN0IHNvcnQgdGhlIGZpbGVzIGluIG9yZGVyIHdpdGgKPiB0aGUgbm9uIGhpZGRlbiBvbmUu
IHRoaXMgdmFsdWUgaXMgdGhlIGRlZmF1bHQuCj4gCj4gaSBhbHNvIHJlbmFtZWQgY2FzZXNlbnNp
dGl2ZSB0byBjYXNlU2Vuc2l0aXZlIChjYXBpdGFsIHMgZm9yIHNlbnNpdGl2ZSwgdG8KPiBtYXRj
aCB0aGUgb3RoZXIgb3B0aW9uIG5hbWVzIGluIGNhbWVsY2FzZSkKPiB5b3UgbmVlZCB0byBhZGQg
dGhvc2UgdG8geW91IHNldHRpbmdzIGZpbGUgaW4gc2VjdGlvbiBmb2xkZXI6Cj4gY2FzZVNlbnNp
dGl2ZT1GYWxzZQo+IGhpZGRlbkZpcnN0PUZhbHNlCj4gCj4gLy8gSSBuZWVkIHRvIHRlc3QgdGhp
cyBvbiBBcmNoIGFuZCBzZWUgaWYgbXkgaXN1ZSB3aXRoIG15IGxhcHRvcCBvZiBub3QKPiAvLyBi
ZWluZyBhYmxlIHRvIG9wZW4gZmlsZXMgbm93IGlzIFNvbHVzIHNwZWNpZmljIG9yIG5vdCwgcmln
aHQKPiAvLyBhcnJvdy9jdHJsK00gZG9lc24ndCB3b3JrIHRvIG9wZW4gdXAgdGV4dCBmaWxlcyB3
aXRoIHRoZSBsYXRlc3QgcHVsbCwgaXQKPiAvLyBkb2VzIHdvcmsgd2l0aCBvdGhlciBmaWxlcyBo
b3dldmVyIGFuZCBJIGRvIGhhdiAkZWRpdG9yIHNldCB1cCBwcm9wZXJseS4KPiAvLyBJcyB0aGlz
IGEgU29sdXMgaXN1ZSBvciBzb21ldGhpbmcgd2l0aCBteSAuYmFzaHJjIHNldHVwPwo+IEp1c3Qg
Zm9yIHlvdXIgaW5mb3JtYXRpb24sIGN0cmwgKyBNIGlzIHRoZSBzYW1lIGxpa2UgcHJlc3Npbmcg
cmV0dXJuCj4gKHNpbWlsYXIgdG8gY3RybCArIGggZm9yIGJhY2tzcGFjZSkKPiBidXQgeW91IGFy
ZSByaWdodCwgaSBzZWUgaXNzdWUgaGVyZSBhcyB3ZWxsLiBJIGJyb2tlIGl0IGJ5IGFjY2lkZW50
IHdoaWxlCj4gYWRkaW5nIG9wZW4gd2l0aCA6KS4gc2hvdWxkIGJlIGZpeGVkIG5vdy4KPiAKPiBD
aGVlcnMgY2hyeXMKPiAKPiBBbSAxMS4wNC4yMiB1bSAxMDo1NCBzY2hyaWViIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gPiBBaCBJIHNlZSB3aGF0IHdhcyB0cmlwcGluZyBt
ZSB1cCwgdGhlIGhpZGRlbiB0aGluZ3MgYXJlIGF0IHRoZSB0b3Agbm90Cj4gPiBhZnRlciB0aGUg
cmVndWxhciBmaWxlcy9mb2xkZXJzIGxpa2UgaW4gR1VJIGNsaWVudHMuIEknbSB1bnN1cmUgaWYg
SSBjYW4KPiA+IHR3ZWFrIHRoYXQgaW4gdGhlIHNldHRpbmdzLmNvbmYgb3I/Cj4gPiAKPiA+IEkg
bmVlZCB0byB0ZXN0IHRoaXMgb24gQXJjaCBhbmQgc2VlIGlmIG15IGlzdWUgd2l0aCBteSBsYXB0
b3Agb2Ygbm90Cj4gPiBiZWluZyBhYmxlIHRvIG9wZW4gZmlsZXMgbm93IGlzIFNvbHVzIHNwZWNp
ZmljIG9yIG5vdCwgcmlnaHQKPiA+IGFycm93L2N0cmwrTSBkb2Vzbid0IHdvcmsgdG8gb3BlbiB1
cCB0ZXh0IGZpbGVzIHdpdGggdGhlIGxhdGVzdCBwdWxsLCBpdAo+ID4gZG9lcyB3b3JrIHdpdGgg
b3RoZXIgZmlsZXMgaG93ZXZlciBhbmQgSSBkbyBoYXYgJGVkaXRvciBzZXQgdXAgcHJvcGVybHku
Cj4gPiBJcyB0aGlzIGEgU29sdXMgaXN1ZSBvciBzb21ldGhpbmcgd2l0aCBteSAuYmFzaHJjIHNl
dHVwPwo+ID4gCj4gPiBPbiBNb24sIEFwciAxMSwgMjAyMiBhdCAwOTowNzoyOEFNICswMjAwLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4gPiBIb3dkeSwKPiA+
ID4gCj4gPiA+IEkgdG9vayBhIGxvb2sgYXQgeW91ciBwcm9ibGVtLiBpIGNhbm5vdCByZXByb2R1
Y2UgdGhpcyBoZXJlLiBJIG1hZGUgc29tZQo+ID4gPiBtb3JlIGltcHJvdmVtZW50czoKPiA+ID4g
MS4gSSByZWJvdW5kIEtFWV9CQUNLU1BBQ0UgdG8gc2hvdyAvIGhpZGUgZWxlbWVudHMKPiA+ID4g
Mi4gaSB1bmJvdW5kIHRoZSBjb25mbGljdGluZyBsZWF2ZV9lbnRyeSBjb21tYW5kIChpdCB3YXMg
ZG91YmxlIGJvdW5kIGluIGFueQo+ID4gPiB3YXkuIEFycm93IGxlZnQgc3RpbGwgaW52b2tlcyB0
aGUgc2FtZSBhY3Rpb24pCj4gPiA+IDMuIHRvZ2dsZSBzaG93IC8gaGlkZSBlbGVtZW50cyBkb2Vz
IG5vdyBzaG93IGFuIHNob3J0IG1lc3NhZ2UgYXQgdGhlCj4gPiA+IG5vdGlmaWNhdGlvbiBhcmVh
IHRvIG1ha2UgY2xlYXIgd2hhdCBpcyBhY3R1YWxseSB0aGUgY2FzZS4KPiA+ID4gNC4gSG9tZSAo
IFBvcyAxKSBhbmQgRW5kIGtleXMgZG9lcyBub3cgd29yayBpbiBpbnB1dCBib3ggKHJlbmFtZSwg
b3BlbiB3aXRoLAo+ID4gPiBsb2NhdGlvbiBhbmQgYW55IG90aGVyIGRpYWxvZykKPiA+ID4gYWxs
IHRoYXQgaXMgYWxyZWFkeSBpbiBtYXN0ZXIuCj4gPiA+IAo+ID4gPiBpIHdyb3RlIGEgc2hvcnQg
c3VtbWVyeSBhdCBteSBibG9nOgo+ID4gPiBodHRwczovL3d3dy5wYXRyZW9uLmNvbS9wb3N0cy82
NDk3MzYxMAo+ID4gPiAKPiA+ID4gZW5qb3kuCj4gPiA+IAo+ID4gPiBjaGVlcnMgY2hyeXMKPiA+
ID4gQW0gMTAuMDQuMjIgdW0gMTc6Mzggc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uOgo+ID4gPiA+IEhvd2R5LAo+ID4gPiA+IAo+ID4gPiA+IEkgd2lsbCB0YWtlIGEg
bG9vayBhdCBob21lLgo+ID4gPiA+IAo+ID4gPiA+IENoZWVycyBjaHJ5cwo+ID4gPiA+IAo+ID4g
PiA+IFZvbiBtZWluZW0gaVBob25lIGdlc2VuZGV0Cj4gPiA+ID4gCj4gPiA+ID4gPiBBbSAxMC4w
NC4yMDIyIHVtIDE3OjMwIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IO+7v0kgZGlk
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJIHB1dCBhICMgYmVmb3JlIHRoZSBleGlzdGluZyBvbmVz
IGFuZCBoYXZlIGl0IHNldCBhcyBmb2xsb3dzCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEtFWV9CQUNL
U1BBQ0U9dG9nZ2xlIGhpZGRlbgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJdCBzaG93cyBzdWNjZXNz
IGZvciBldmVyeSBvdGhlciBjb21tYW5kIGJ1dCB0aGF0IG9uZSBob3dldmVyLiBJJ20gbm90Cj4g
PiA+ID4gPiBzdXJlIGlmIGl0J3MgYSBkaXN0cm8gaXNzdWUgd2l0aCBTb2x1cyBob3dldmVyIHRo
b3VnaCBidXQgb25jZSBpJ20gYmFjawo+ID4gPiA+ID4gb24gbXkgQXJjaCBib3ggSSBjYW4gdGVz
dCBpdCB0aGVyZSB0aG91Z2gKPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBPbiBTdW4sIEFwciAxMCwg
MjAyMiBhdCAwNToyMjo0MVBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+ID4gPiA+ID4gPiBIb3dkeSwKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFN0
cmFuZ2UgaSBkb24ndCBzZWUgdGhpcyBoZXJlLiAgSGVyZSBpdCBzaG93cy8gaGlkZXMgdGhlIGZv
bGRlciAvIGZpbGVzIGFzIGV4cGVjdGVkLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gRGlkIHlv
dSByZWJpbmQgeW91ciBrZXlzIGFscmVhZHkgdG8gc29tZXRoaW5nPwo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gQW0gMTAuMDQuMjAyMiB1bSAx
NjozNyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+Ogo+ID4gPiA+ID4gPiA+IO+7v0kndmUgZ290IGl0IHNheWluZyB0b2dn
bGUgaGlkZGVuLCBidXQgbm9uZSBvZiB0aGUgaGlkZGVuIGZpbGVzIHNob3dlZCB1cAo+ID4gPiA+
ID4gPiA+IGV2ZW4gYWZ0ZXIgc2V0dGluZyBpdCByaWdodC4KPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiBJIG1hZGUgYSAudGVzdC50eHQgZmllIGluIH4vRG9jdW1lbnRzIGFuZCBoaXQgdG9n
Z2xlIGhpZGRlbiwgd2l0aCBubwo+ID4gPiA+ID4gPiA+IGx1Y2suIFRoZSAudGVzdC50eHQgZG9l
c24ndCBzaG93IHVwIG5vciBkbyBwbGFjZXMgbGlrZSAuY29uZmlnLgo+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+IElzIHRoYXQgYSBTb2x1cyBpc3N1ZT8gSSdtIG9ubHkgcnVubmluZyBpbnRv
IHRoaXMgYXMgbXkgb25lIGJpZyBpc3N1ZQo+ID4gPiA+ID4gPiA+IHdpdGggRHJhZ29uRk0uIEkg
dW5ib3VuZCBCYWNrc3BhY2UgZnJvbSBoaXN0b3J5IGFuZCBwdXQgaXQgb24gc2hvdwo+ID4gPiA+
ID4gPiA+IGhpZGRlbiBpbnN0ZWFkIHNvIEkgY2FuIGN0cmwrSCBmb3IgaGlkZGVuIHRvZ2dsZQo+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gT24gU3VuLCBBcHIgMTAsIDIwMjIgYXQgMDM6
NDA6MjNQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiA+ID4gPiA+ID4gPiA+IEhvd2R5LAo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBB
IHNtYWxsIHRpcCBmb3IgZmlndXJlIHNlcXVlbmNlcyBmb3Igc2hvcnRjdXRzLiBZb3UgY2FuIHNl
dCBpbnB1dD1UcnVlIGluIGRlYnVnIHNlY3Rpb24gb2YgdGhlIHNldHRpbmdzIGZpbGUuIEFueSBr
ZXlwcmVzcyBwcmludHMgaXRzIGVzY2FwZSBzZXF1ZW5jZSAoIGFuZCBpZiBpdCB0cmlnZ2VycyBh
biBhY3Rpb24pICB3aWxsIHRoZW4gcHJpbnRlZCBmb3IgYSBnaXZlbiBhbW91bnQgb2YgdGltZSBp
biB0aGUgZmlyc3QgbGluZSBvbiBzY3JlZW4uCj4gPiA+ID4gPiA+ID4gPiBJdHMgdmVyeSBub2lz
eSBmb3IgeW91IGJ1dCBqdXN0IHRob3VnaHQgZm9yIGRlYnVnIGFuZCBmaWd1cmUgc2VxdWVuY2Vz
LiBZb3UgY2FuIGRpc2FibGUgaXQgdGhlbiBhZ2Fpbi4KPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiA+ID4gQnkgdGhlIHdheSwgaSBmb3Jnb3QgdG8gYW5zd2VyIGhvdyB0byB1bmJpbmQgYW4g
YWN0aW9uOiBqdXN0IGNvbW1lbnQgdGhlIGxpbmUgaW4gc2V0dGluZ3MgZmlsZSBvdXQgd2l0IGFu
ICMgYXMgZmlyc3QgY2hhcmFjdGVyIHBlciBsaW5lLgo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiBBbSAxMC4wNC4yMDIyIHVtIDE0OjU3IHNjaHJp
ZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT46Cj4gPiA+ID4gPiA+ID4gPiA+IO+7v0hvd2R5LAo+ID4gPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiA+ID4gV2VsbCwgeW91IGNhbiB0cnksIGJ1dCBpIGRvbuKAmXQgIHRoaW5rIHRo
ZXJlIGlzIGFuIGVzY2FwZSBzZXF1ZW5jZSBmb3IgY3RybCArIGJhY2tzcGFjZS4gIEkgZG9u4oCZ
dCB0aGluayB0aGVyZSBpcyBhbnkgZXNjYXBlIHNlcXVlbmNlIGZvciBtb2RpZmllciBrZXkgKyBi
YWNrc3BhY2UgIGNvbWJpbmF0aW9uIGF2YWlsYWJsZS4KPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+
ID4gPiA+ID4gPiA+IEkgaGF2ZSB0byBzYXksIHRoaXMgY29uY2VwdCBpcyBhbiBkaW5vc2F1ciB0
aGF0IHNob3VsZCBiZSByZXRob3VnaHQgaW4gdGhlIDIxIGNlbnR1cnkuCj4gPiA+ID4gPiA+ID4g
PiA+IAo+ID4gPiA+ID4gPiA+ID4gPiBDaGVlcnMgY2hyeXMKPiA+ID4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gPiA+ID4gQW0gMTAuMDQuMjAyMiB1bSAxNDoyOSBzY2hyaWViIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+ID4g
PiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+IO+7v1NvIHdvdWxkZF5hbmQgdGhl
biBiYWNrc3BhY2UgY2hhbmdlIHRoYXQgdG8gY3RybCtiYWNrc3BhY2UgY2hhbmdlIHRoYXQKPiA+
ID4gPiA+ID4gPiA+ID4gPiBzbyBjb250cm9sIGFuZCBiYWNrc3BhY2Ugd29ya3MgZm9yIHRoYXQg
YW5kIGN0cmwraCBkb2VzIGhpZGRlbiBmaWxlcyBvcj8KPiA+ID4gPiA+ID4gPiA+ID4gPiBPciBk
byBJIG5lZWQgdG8gZG8gc29tZXRoaW5nIGxpa2UgJycgdG8gdGVsbCBEcmFnb25GTSB0aGF0IHRo
ZXJlJ3Mgbm8KPiA+ID4gPiA+ID4gPiA+ID4gPiBrZXkgYm91bmQgZm9yIHRoYXQgZnVuY3Rpb24g
b3IgZG8gSSBqdXN0IGxlYXZlIHRoYXQgYmxhbms/IEkgY2FuCj4gPiA+ID4gPiA+ID4gPiA+ID4g
cHJvYmFibHkgZmluZCBzb21ldGhpbmcgdG8gcmViaW5kIGl0IHRvIGJ1dCBJJ20gdGhpbmtpbmcg
anVzdCB1bmJpbmRkCj4gPiA+ID4gPiA+ID4gPiA+ID4gdGhlIGJhY2tzcGFjZSBrZXk/Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+IE9uIFN1biwgQXByIDEwLCAyMDIyIGF0IDAyOjE1OjU1UE0gKzAyMDAsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBIb3dk
eSwKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gV2VsbCB0byBl
eHBsYWluIHdoYXQgeW91IHNlZSwgeW91IG5lZWQgdG8gdW5kZXJzdGFuZCBob3cgc2hvcnRjdXRz
IG9uIGFuIGNvbW1hbmQgbGluZSBhcHBsaWNhdGlvbiB3b3JrLgo+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gVGhlIGNvbW1hbmRsaW5lIHJlYWRzIGFueSBpbnB1dCBmcm9tIFNURElOLiBUaGlzIGlzIGFs
c28gdmFsaWQgZm9yIHNob3J0Y3V0cy4gVGhlIG9wZXJhdGluZyBzeXN0ZW0gdHJhbnNsYXRlcyBz
b21lIChub3QgYWxsLCBkZXBlbmRpbmcgb24gdGVybWluYWwgY2FwYWJpbGl0aWVzKSBpbnB1dCB0
byBhIHNlcXVlbmNlIG9mIGFzY2lpIGNvZGVzLiBUaGlzIHNlcXVlbmNlcyBhcmUgc2VudCB0byBT
VERJTiB0aGVuLlRoaXMgc2VyaWVzIHN0YXJ0cyB3aXRoIGFuIHNwZWNpYWwgYXNjaWkgY2hhcmFj
dGVyLCB0aGUgRXNjYXBlIGNvZGUuIFRoaXMgaXMgd2h5IHRoaXMgc2VxdWVuY2VzIGFyZSBuYW1l
ZCBlc2NhcGUgc2VxdWVuY2VzLiBIb3cgbWFueSBlc2NhcGUgc2VxdWVuY2VzIGFyZSDigJ50cmFu
c2xhdGVk4oCcIG9yIOKAnnVuZGVyc3RhbmTigJwgZGVwZW5kcyBvbiB0aGUgdXNlZCB0ZXJtaW5h
bCBzdGFuZGFyZCAoVFRZIHVzZXMgYXMgZmFyIGFzIGkga25vdyBWVDEwMCBzdGFuZGFyZCwgY29y
cmVjdCBtZSBpZiBpIG0gd3JvbmcsIHRlcm1pbmFsIGVtdWxhdG9ycyBjYW4gb2Z0ZW4gZW11bGF0
ZSB2YXJpb3VzIGtpbmQgb2Ygc3RhbmRhcmRzLCBkZXBlbmRpbmcgb24gdGhlIGVtdWxhdG9yIGFu
ZCBjb25maWd1cmF0aW9uKS4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFRoZSBpc3N1ZSB5b3Ugc2Vl
IGhlcmUgaXMgdGhlIGZhY3QgdGhhdCBzb21lIG9mIHRoZSBlc2NhcGUgIHNlcXVlbmNlcyBkbyBu
b3QgaGF2ZSBhIHByaW50YWJsZSByZXByZXNlbnRhdGlvbi4gRm9yIHRoaXMgdGhlcmUgYXJlIHZh
cmlvdXMgY2FzZXMgd2hlcmUgcHJpbnRhYmxlIHNlcXVlbmNlcyBkZWZpbmVkIGZvciB0aGUgbm9u
IHByaW50YWJsZSByZXByZXNlbnRhdGlvbi4gTG9uZyB0aGluZyBzaG9ydDogaW4geW91ciBjYXNl
LCBDdHJsICsgaCBpcyB0aGUgcHJpbnRhYmxlIGFzY2lpIHJlcHJlc2VudGF0aW9uIG9mIGJhY2tz
cGFjZS4gU28gYW4gY29tbWFuZCBsaW5lIGFwcGxpY2F0aW9uIGNhbiBub3QgbWF0ZSBhIGRpZmZl
cmVuY2UgYmV0d2VlbiBjdHJsICsgaCBhbmQgYmFja3NwYWNlIGF0IGFsbCAoIHNvIGl0cyBhIGxp
bWl0YXRpb24gb2YgdGhlIGRlZXBlciBsZXZlbCBvZiB0ZXJtaW5hbCBhbmQgb3BlcmF0aW5nIHN5
c3RlbSwgbm90IGFuIGlzc3VlIG9mIGRyYWdvbkZNKQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gWW91
IGNhbiBzZWUgdGhpcyBpbiBwbGFpbiBiYXNoLCB2aW0gb3IgbmFubyBhcyB3ZWxsIChhbmQgYW55
IG9kZXIgY29tbWFuZGxpbmUgYXBwbGljYXRpb24pbCwgdHlwZSBzb21ldGhpbmcsIHByZXNzIGN0
cmwgKyBoLCBpdCBiZWhhdmVzIGxpa2UgYmFja3NwYWNlIGFuZCB3aWxsIGRlbGV0ZSB0aGUgY2hh
cmFjdGVyIGxlZnQgdG8gdGhlIGN1cnNvci4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFNlZSBoZXJl
IGZvciBhIGxpc3Qgb2YgKHNvbWU/KSBvZiB0aG9zZSDigJ5kdXBsaWNhdGVz4oCcLgo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBodHRwczovL3d3dy5pYm0uY29t
L2RvY3MvZW4vU1NMVEJXXzIuNC4wL2NvbS5pYm0uem9zLnYycjQuYnB4YTQwMC9rczEuaHRtCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEJ1dCBsaWtlIG5vdGVk
LCB0aGlzIGRlcGVuZHMgaGVhdmlseSBvbiB0aGUgVGVybWluYWwuCj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFNvcnJ5IG15IGZyaWVuZCwgdGhlcmUgaXMgbm90
IG11Y2ggaSBjYW4gZG8gaGVyZS4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gV2hhdCBjYW4gd2UgZG8gbm93Pwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gV2VsbCwg
YWxsIHdlIGNhbiBkbyBpcyBjaG9vc2luZyB3aGF0IGlzIG1vcmUgaW1wb3J0YW50IGZvciB5b3Ug
YW5kIHJlYmluZCBiYWNrc3BhY2Ug4oCeS0VZX0JBQ0tTUEFDReKAnCAod2hhdCBpcyBjdXJyZW50
bHkgYm91bmQgdG8gbGVhdmUgZW50cnksIHdvIG1vdmVzIHRvIHBhcmVudCBmb2xkZXIpIHRvIHRv
Z2dsZSBoaWRkZW4gKGFuZCB1bmJpbmQgb3IgcmViaW5kIGxlYXZlIGVudHJ5IHRoZW4gKSBvciB1
c2UgYW5vdGhlciBzaG9ydGN1dCBmb3IgaGlkZGVuLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gU2Vl
IGhlcmUgaW4gc2V0dGluZ3M6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBLRVlfQkFDS1NQQUNFPWxl
YXZlX2VudHJ5Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiDigKYKPiA+ID4gPiA+ID4gPiA+ID4gPiA+
IF5bSD10b2dnbGVfaGlkZGVuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+
ID4gPiA+IENoZWVycyBjaHJ5cwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gQW0gMTAuMDQuMjAyMiB1bSAxMTo1MiBzY2hyaWViIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiDvu79TbyBxdWljayBxdWVzdGlvbiBDaHJ5cy4uLgo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gSSdtIHRyeWluZyB0byBoYXZlIGhp
c3Rvcnkgc3dpdGNoZWQgdG8gY3RybCtIIG9uIG15IGNvcHkgb2YgRHJhZ29uZm0sIHRvCj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IGxpbmUgdXAgbW9yZSB3aXRoIGhvdyBOYXV0aWx1cy9DYWphIGRv
ZXMgaXQuIEhvd2V2ZXIgdGhhdCBzaG9ydGN1dCBzZWVtcwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiBoYXJkY29kZWQgaW4gd2l0aCBubyB3YXkgdG8gY2hhbmdlIGl0IGluIHRoZSBjb25maWcgZmls
ZS4gSSdtIHRyeWluZyB0bwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBmaXggaXQgc2luY2UgYWx0
K0ggYnJpbmdzIHVwIGEgdGVybWluYWwncyBoZWxwIG1lbnUgYW5kIEknZCBsaWtlIGN0cmwrSAo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiB0byBzaG93L2hpZGUgaGlkZGVuIGZpbGVzIHNpbmNlIHRo
YXQncyBhIGNvbW1vbiBlbm91Z2ggc2hvcnRjdXQgb24KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
ZGVza3RvcCBmaWxlIG1hbmFnZXJzIHNvIHdoeSBub3QgaGF2ZSBpdCBpbiBEcmFnb25GTT8KPiA+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFNvIHdoZXJlIGRv
IEkgbmVlZCB0byBsb29rIHRvIHN3aXRjaCB0aGUgZnVuY3Rpb24gb2YgY3RybCtIIGluIHRoZQo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBwcm9ncmFtPyBDdXJyZW50bHkgaXQgYnJpbmdzIHVwIHRo
ZSBsb2NhdGlvbiBiYXIsIHBhZ2UgMS8yIGFuZCBkb2Vzbid0Cj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+IHNob3cgb3IgaGlkZSBoaWRkZW4gZm9sZGVycywgaW5zdGVhZCBnb2luZyBiYWNrIG9uZSBz
dGVwIGRlc3BpdGUgbm90Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGJlaW5nIGRlZmluZWQgYXMg
c3VjaCBpbiB0aGUgY29uZmlnIHNldHRpbmdzCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4g
PiA+ID4gPiA+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPiA+ID4gPiA+ID4gPiA+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiA+ID4gPiA+ID4gPiA+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PiA+ID4gPiA+ID4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+ID4gPiA+ID4gPiA+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiA+
ID4gPiA+ID4gPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+ID4gPiA+ID4gPiA+ID4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4g
PiA+ID4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+ID4gPiA+ID4gPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gPiA+ID4gPiA+
ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiA+ID4gPiA+ID4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4gPiA+ID4gPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4gPiA+
ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiA+ID4gPiA+ID4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+ID4gPiA+ID4gPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+ID4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiA+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gPiA+ID4gPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+ID4gPiA+ID4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4gPiA+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4g
PiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+ID4gPiA+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiA+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiA+ID4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+ID4gCj4gPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiA+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cg==

