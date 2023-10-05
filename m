Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D8B7B9D44
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 15:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696511834;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UXk2GczOhIlnp0D9nP/TWvmxLOQbCpE34EGW7+/wPXQ=;
	b=MgppZu0lOjRfPZHxZP9x/lLucovJL01CXKzLJMEIFuLZ/1CH5eNC7SzHt4T/rSylh27cUG
	cdAnt45MZlKTrLS75WDSOZlJgKOE+S6LMaGR9OrFOCmdGhwkdQF/wA6eNrfLBDpvaAEVRZ
	Hkem6lf7kXzxnL4Lx8repBNI+tEiT2c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-673-3kAFOxAsOHOkvHNLLjxkxw-1; Thu, 05 Oct 2023 09:17:06 -0400
X-MC-Unique: 3kAFOxAsOHOkvHNLLjxkxw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96B94811E8F;
	Thu,  5 Oct 2023 13:17:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 953A22156711;
	Thu,  5 Oct 2023 13:16:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D81EE19465B6;
	Thu,  5 Oct 2023 13:16:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Detox or other similar tools
Date: Thu, 5 Oct 2023 13:16:21 +0000
References: <mailman.1449.1696501850.2981450.blinux-list@redhat.com>
In-Reply-To: <mailman.1449.1696501850.2981450.blinux-list@redhat.com>
To: blinux-list@redhat.com
X-Spam-Status: No, score=-3.60
Message-ID: <mailman.1493.1696511818.2981450.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sIEkgaGF2ZSBhbiBpbnRlcmVzdGluZyBxdWVzdGlvbiB0aGF0IG1heWJlIHNvbWVvbmUg
b24gdGhpcyBsaXN0IG1pZ2h0IGJlIGFibGUgdG8gYW5zd2VyLiBEb2VzIG9yY2Egc3VwcG9ydCBi
cmFpbGxlPyBJZiBub3QsIHdl4oCZbGwgYmFpbCBUVFkgc3VwcG9ydCBzcGVlY2g/IEluIG90aGVy
IHdvcmRzIGxvbmcgc3Rvcnkgc2hvcnQsIGNhbiBJIGdldCB0aGUgZGVmYXVsdCBzcGVlY2ggYnV0
IHdpdGggYnJhaWxsZS4gT3IgaXMgaXQgZ29pbmcgdG8gYmUgZWl0aGVyIG9yLiBJ4oCZbSBsZWFu
aW5nIHRvd2FyZHMgYSBidW4gdG9vIGJ5IHRoZSB3YXkganVzdCBiZWNhdXNlIHRoYXTigJlzIHdo
YXQgdGhlIHBlcnNvbiB3aG8gd291bGQsIGJlIHdpbGxpbmcgdG8gaGVscCBtZSBnZXQgaW5zdGFs
bGVkLiBUaGUgcGVyc29uIGlzIGFjdHVhbGx5IHZvbHVudGVlcmluZyB0byBhc3Npc3QuIEFueSB0
aG91Z2h0cz8gUGxlYXNlIGV4Y3VzZSB0aGUgZmFjdCB0aGF0IEkgc3RpbGwgaGF2ZW7igJl0IGRl
YWx0IHdpdGggbXkgc2lnbmF0dXJlIGZpbGUuIEFuZCBJ4oCZdmUgbm90IGRlYWx0IHdpdGggd2hh
dCBib3ggdGhpcyB0aGlzIG1haWwgZ29lcyB0by4gVGhhdOKAmXMgZ29pbmcgdG8gYmUgdG9kYXni
gJlzIHByb2plY3QuIEJlIHdlbGwgZXZlcnlvbmUgLiBQUywganVzdCBiZSBhd2FyZSB0aGF0IEni
gJltIGRpY3RhdGluZyB0aGlzIHRvIG15IHBob25lLiBUaGF04oCZcyBudW1iZXIgb25lLiBUd28u
IFJlbWVtYmVyIHRoYXQgdGhlIGFjdHVhbCBhZGRyZXNzIHRvIHJlYWNoIG1lIGlzIG1hdXJpY2Vt
YXVyaWNlYW1pbWVTLmNvTWYgaXQgaXMgcGVyc29uYWwgaWYgaXQgaXMgb2ZmaWNpYWwgdGhhdCBh
ZGRyZXNzIHBlcnNvbmFsIGV2ZXJ5LW1haWwgaXMgbWF1cmljZUBtYXVyaWNlLWFtaW5lcy5jb20g
TmZiIHByZXNpZGVudGRlYWZibG5mYkBta3VyaWNlLWFtaW5lcy5jb20uClNlbnQgZnJvbSBteSBp
UGhvbmUuIApFbWFpbCwgbW1pbmVzQG1hdXJpY2VtaW5lcy5vcmcKICB0ZXh0IG51bWJlciA2NjEt
ODY4LTk2NDcuCkZheCBubyA2NjEtNDQ5LTM3NDYuCgoKUHJlc2lkZW50LCBOYXRpb25hbCBGZWRl
cmF0aW9uIG9mIHRoZSBibGluZCBEZWFmYmxpbmQgZGl2aXNpb24uIElQIHJlbGF5IG51bWJlciA2
NjEtMjQ5LTk3MTUuClZpY2UgUHJlc2lkZW50IG5hdGlvbmFsIEZlZGVyYXRpb24gb2YgdGhlIGJs
aW5kIG9mIENhbGlmb3JuaWEgQmFrZXJzZmllbGQgY2hhcHRlci4KYW1hdGV1ciByYWRpbywgY2Fs
bCBzaWduLCBrZDBpa28uCgo+IE9uIE9jdCA1LCAyMDIzLCBhdCAxMDozMSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4g
Cj4g77u/T2ggdGhhbmtzLiBUaGF0IHNob3VsZCB3b3JrLgo+IAo+IC0tLS0tIE9yaWdpbmFsIE1l
c3NhZ2UgLS0tLS0KPiBGcm9tOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPgo+IFRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+IERhdGU6IFRodSwgNSBPY3QgMjAyMyAx
MjowODo0MiArMDIwMCAoU0FTVCkKPiBTdWJqZWN0OiBSZTogRGV0b3ggb3Igb3RoZXIgc2ltaWxh
ciB0b29scwo+IAo+PiBZb3UgY291bGQgdXNlIHJlbmFtZSB3aXRoIGEgcmVnZXhwLgo+PiBlLmcu
Cj4+IHJlbmFtZSBzJy9ibGFibGFibGEvLydnICpfYmxhKnR4dAo+PiB3aWxsIHJlbW92ZSBibGFi
bGFibGEgZnJvbSBhbGwgKl9ibGEqdHh0IGZpbGVzLgo+PiBXaWxsZW0KPj4gCj4+IAo+Pj4gT24g
VGh1LCA1IE9jdCAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4gCj4+PiBJIHdhbnQgdG8gc3RyaXAgYSBkaXJlY3Rvcnkgb2YgZmlsZSBuYW1lcyBvZiBj
ZXJ0YWluIGNoYXJhY3RlcnMsIGxpa2UgdGhlc2UuCj4+PiA6ID8gPwo+Pj4gCj4+PiBEZXRveCB3
aWxsIGRvIHRoYXQsIGJ1dCBpdCByZW1vdmVzIHNwYWNlcywgY29tbWFzIGFuZCBhIGJ1bmNoIG9m
IG90aGVyIHN0dWZmLiBJIGp1c3Qgd2FudCB0byBoYXZlIGEgbGlzdCBvZiBjaGFyYWN0ZXJzIHJl
bW92ZWQsIG5vdCBhbGwgcHVuY3R1YXRpb24uIElzIHRoZXJlIGEgdG9vbCB0aGF0IHdpbGwgZG8g
dGhpcyBmb3IgbWU/Cj4+PiBUaGFua3MuCj4+PiAKPj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IAo+Pj4gCj4+IAo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+PiAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cg==

