Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C715969B6
	for <lists+blinux-list@lfdr.de>; Wed, 17 Aug 2022 08:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660718840;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7rrUtVJIL+Mg2VWtZrzwIJd9W0QU51KG7CLgxrdcE1g=;
	b=Za/AO3WAmSxXMAaYYpPXN4Y/II5aV3uwSElshQpk71FHqVPvf+lsNmLTJt7b2o4lj+fLfO
	tiC4ch92fRquVdVmsNUNus3GB1NbU1GPnOWKFWIsMN+WmVdU6wtuvn6poKn6Dg7HOuZ2U9
	Zs/srcwSHc3PStkO55KjjPtsMMXY7jA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-449-Cnb4GzuSMcaJqvW1X_-FWg-1; Wed, 17 Aug 2022 02:47:16 -0400
X-MC-Unique: Cnb4GzuSMcaJqvW1X_-FWg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E9B5080418F;
	Wed, 17 Aug 2022 06:47:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DA5D42026D4C;
	Wed, 17 Aug 2022 06:47:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1416D194705A;
	Wed, 17 Aug 2022 06:47:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Impossible to know sender info
Date: Tue, 16 Aug 2022 23:46:58 -0700
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
 <mailman.731.1660603954.10502.blinux-list@redhat.com>
 <mailman.750.1660608876.10499.blinux-list@redhat.com>
 <mailman.792.1660609999.10506.blinux-list@redhat.com>
 <mailman.848.1660651179.10499.blinux-list@redhat.com>
 <mailman.1113.1660659487.10506.blinux-list@redhat.com>
 <mailman.1216.1660671692.10502.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.1216.1660671692.10502.blinux-list@redhat.com>
Message-ID: <mailman.1431.1660718828.10503.blinux-list@redhat.com>
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

SSBhbSBhIGJpdCBndWlsdHkgb2YgdGhlIG1vcmUgZm9ybWFsIHN0eWxlIG9mIHdyaXRpbmcgbXlz
ZWxmLiBJdCBjb21lcyB3aXRoIGJlaW5nIGEgSGlnaCBGdW5jdGlvbmluZyBhdXRpc3RpYyBvbiB0
b3Agb2YgYWxzbyBiZWluZyBCbGluZC4KClRoYXQgYmVpbmcgc2FpZCwgSSB0ZW5kIHRvIHR5cGUg
dGhlIHNhbWUgd2F5IEkgc3BlYWssIHdoaWNoIGNhbiBzb21ldGltZXMgcHV0IHBlb3BsZSBvZmYu
IEl0IG1ha2VzIG1lIHNvdW5kIGEgYml0IGxpa2UgYSBrbm93IGl0IGFsbC4gQW55d2F5LCB0aGF0
IGlzIG5vdyBvdXQgb2YgdGhlIHdheS4KCkkgaGF2ZW7igJl0IGNoZWNrZWQgdG8gc2VlIHdoaWNo
IE1UQSB0aGlzIGxpc3QgaXMgdXNpbmcsIGhvd2V2ZXIsIHRoYXQgY2FuIGJlIGVhc2lseSBhc2Nl
cnRhaW5lZCBieSBsb29raW5nIGF0IHRoZSByYXcgc291cmNlIGZvciB0aGUgZW1haWxzLiBJIHRo
aW5rIGl0IGlzIHN0aWxsIHVwIHRvIFJlZEhhdCBob3cgdGhleSBoYW5kbGUgdGhpcyBhcyBJIHRo
aW5rIHRoZXkgYXJlIHRoZSBvbmVzIHN0aWxsIGhvc3RpbmcgdGhpcyBsaXN0LiBOb3csIGlmIHRo
ZXkgaGF2ZSB1cGRhdGVkIHRoZSBNVEEgc2luY2UgdGhlIGluY2VwdGlvbiBvZiB0aGlzIGxpc3Qs
IHRoZXJlIG1pZ2h0IGFjdHVhbGx5IGJlIGEgZmVhdHVyZSB0aGF0IGFsbG93cyBmb3IgdGhlIG11
bmdpbmcgb2YgdGhlIGVtYWlsIGFkZHJlc3MgaXRzZWxmIHdoaWxlIGxlYXZpbmcgdGhlIGZpcnN0
IG5hbWUsIGxhc3QgbmFtZSBmaWVsZCBhbG9uZS4gSG9wZWZ1bGx5LCBpZiB0aGVyZSBpcyBhbiBN
VEEgYWRtaW4gb24gaGVyZSwgdGhleSBtaWdodCBiZSBhYmxlIHRvIGluZm9ybSB1cyBpZiB0aGlz
IGlzIHBvc3NpYmxlLgoKLUVyaWMKRnJvbSB0aGUgQ2VudHJhbCBPZmZpY2VzIG9mIHRoZSBUZWNo
bm9tYWdlIEd1aWxkLCBOZXR3b3JrIHRvb2xzIGFuZCByZXNlYXJjaCBEZXB0LgoKCj4gT24gQXVn
IDE2LCAyMDIyLCBhdCAxMDo0MSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gTm9wZSwgcmVhZHMgYXMgdGls
ZGVLeWxlICBoZXJlIHdpdGggdGhlIGxhdGVzdCB0aGluZ3MgaW4gQXJjaCB0aG91Z2ggc28gbm90
IHN1cmUgd2hhdCBoYXBwZW5lZCB3aXRoIHNvbWUgc2V0dXBzIHRvCj4gCj4gVGhhdCBiZWluZyBz
YWlkLCBJIGRvIGZlZWwgbGlrZSBwZW9wbGUgaGF2ZSBkaXN0aW5jdCBwb3N0aW5nIHN0eWxlcy4g
SSBhYnNvbHV0ZWx5IGhhdGUgdGhlIG92ZXJseSBmb3JtYWwgc3R5bGUgc29tZSBibGluZCBwZW9w
bGUgZG8sIGUuZy4KPiAKPiAKPiBIZWxsbwo+IAo+IFRoaXMgaXMgbXkgZXhhbXBsZQo+IAo+IAo+
IFlvdXJzIGtpbmRseQo+IEJsaW5kIFBlcnNvbgo+IAo+IFlvdSBhcmVuJ3Qgd3JpdGluZyBhIGxl
dHRlciBvZiByZWNvbW1lbmRhdGlvbiwgeW91J3JlIG5vdCBhcHBseWluZyBmb3IgYSBqb2Igb3Ig
d3JpdGluZyB0byB5b3VyIGJhbmssIGxhbmRsb3JkLCBldGMuIFlvdSdyZSByZXBseWluZyB0byBz
b21lIHJhbmRvbSBKb2Ugb3IgSmFuZSBTY2htb2Ugb24gdGhlIGludGVyd2Vicywgb24gYSBtYWls
aW5nIGxpc3QsIHdobyBpc24ndCwgOTkuOCUgb2YgdGhlIHRpbWUsIHN1cGVyIGltcG9ydGFudCBv
ciB3b3J0aCBnZXR0aW5nIGZvcm1hbCBvdmVyLiBKdXN0IG1ha2UgeW91ciBwb2ludCBhbmQgc2Vu
ZCB0aGUgbWVzc2FnZSBJTUhPCj4gCj4gCj4gT24gOC8xNi8yMiAxNToxNywgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSSd2ZSBhbHdheXMganVzdCBzaWduZWQg
bXkgZmlyc3QgbmFtZSBpbiBtb3N0IHBsYWNlcy4gQnV0IGFzIGZhciBhcyBJIGtub3csIEknbSBv
bmUgb2Ygb25seSB0d28gS3lsZXMgd2hvIHdvdWxkIGJlIG9uIHRoaXMgbGlzdCwgYW5kIEkgdGVu
ZCB0byB1c2UgdGhlIHRpbGRlICh+KSBhdHRyaWJ1dGlvbiBjaGFyYWN0ZXIgYmVmb3JlIG15IG5h
bWUsIHNvbWV0aGluZyBJIHBpY2tlZCB1cCB5ZWFycyBhZ28gZnJvbSBvbmUgb2YgbXkgc29jaWFs
IG1lZGlhIGZyaWVuZHMgdGhhdCBqdXN0IGtpbmRhIHN0dWNrLiBVbnRpbCByZWNlbnQgY2hhbmdl
cyB0byBzcGVlY2gtZGlzcGF0Y2hlciwgbXkgc2lnbmF0dXJlIGFsd2F5cyBzYWlkICJ0aWxkZSBL
eWxlLCIgYnV0IHRoYXQgc2VlbXMgbm8gbG9uZ2VyIHRvIHdvcmsgc2luY2UgYSBmZXcgbW9udGhz
Lgo+PiAKPj4gfkt5bGUKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

