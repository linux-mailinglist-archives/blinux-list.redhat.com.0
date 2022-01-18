Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6754913CB
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 02:55:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642470954;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4fCJmoLnbAja16zy4MxPo3c0IuXmGWqnv99UpHJsh9k=;
	b=Yp1VfYfXh5OIR+0t+fOtECAYQKkniPBpGdxg3E6wfQtmiEIWYHWZElsXNhpXy240d1WzXw
	ha+XjQMr9JNfl9x2HbJG7fv5fGOhqsT179ZpTiaB9FIYfAeUDiby/prc4fgQw5wWjlYnIx
	xB/wbuFlm01hxUgdG8Clh3Uz/IOyPrU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-447-TXRbURYKMw6VjGe7GfIXUw-1; Mon, 17 Jan 2022 20:55:51 -0500
X-MC-Unique: TXRbURYKMw6VjGe7GfIXUw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C16F1006AA3;
	Tue, 18 Jan 2022 01:55:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5DB394BC55;
	Tue, 18 Jan 2022 01:55:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A58021809C88;
	Tue, 18 Jan 2022 01:55:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20I1tQO8023374 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 Jan 2022 20:55:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 185D3112132E; Tue, 18 Jan 2022 01:55:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 13A6B1121314
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 01:55:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F330B801E6E
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 01:55:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-640-jdmPvv70PDOwuzNGmq92qA-1; Mon, 17 Jan 2022 20:55:21 -0500
X-MC-Unique: jdmPvv70PDOwuzNGmq92qA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JdBgD6HGMz2ry8
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 20:55:20 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JdBgD5X8Vzcbc; Mon, 17 Jan 2022 20:55:20 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JdBgD51fMzcbC
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 20:55:20 -0500 (EST)
Date: Mon, 17 Jan 2022 20:55:20 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Getting Started with linux
In-Reply-To: <f953fedb-15e7-6e96-c9ed-875a3dc199a3@gmail.com>
Message-ID: <e97a7d7d-4aff-eeb3-98d-ba51311d7ebe@panix.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<574571f2-a341-c700-d94a-415f76bc936e@gmail.com>
	<PH0PR14MB429684C61B04748E06FC0EC4C8579@PH0PR14MB4296.namprd14.prod.outlook.com>
	<f953fedb-15e7-6e96-c9ed-875a3dc199a3@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20I1tQO8023374
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSAgdGhvdWdodCB0aGUga2V5Ym9hcmQgc2VsZWN0aW9uIGdvdCBzYXZlZCBpbiBhIHNpbmdsZSBm
aWxlIHNvbWV3aGVyZSBpbgovZXRjLyBidXQgY2FuJ3QgcmVtZW1iZXIgdGhlIGZpbGUuICBJZiB0
aGF0IGlzIGNvcnJlY3QsIGEgZGVzdHJ1Y3RpdmUgZWNobwpzdGF0ZW1lbnQgaW50byB0aGF0IGZp
bGUgd2l0aCB0aGUgcHJlZmVycmVkIGtleWJvYXJkIHNldHRpbmcgb3VnaHQgdG8Kc29sdmUgdGhp
cyBwcm9ibGVtIGZvciB5b3UuCgoKT24gTW9uLCAxNyBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGkgYWdhaW4sCj4KPgo+IE15IGJpZ2dlc3Qg
Z3JpcGUgd2l0aCBHbm9tZSBpcyB0aGUgZmFjdCB0aGF0IHRoZSBTZXR0aW5ncyBpcyBhbG1vc3Qg
aW1wb3NzaWJsZQo+IHRvIHVzZS4gRm9yIGV4YW1wbGUsIEkgdXNlIHRoZSBMZWZ0LUhhbmQgRHZv
cmFrIGtleWJvYXJkIGJlY2F1c2UgSSBvbmx5IGhhdmUgYQo+IHVzYWJsZSBsZWZ0IGhhbmQuIFRo
aXMgaXMgcmVhbGx5IGVhc3kgdG8gc2V0IGluIE1hdGUsIGJ1dCBub3QgaW4gR25vbWUuIEkKPiBj
b3VsZCBuZXZlciBkbyBzbywgbm8gbWF0dGVyIHdob3MgaW5zdHJ1Y3Rpb25zIEkgZm9sbG93ZWQu
Cj4KPgo+IEkgYW0gd2lsbGluZyB0byBnaXZlIEdub21lIGEgZmFpciBzaG90LCBpZiBJIGNhbiBm
aXggbXkgS2V5Ym9hcmQsIG90aGVyd2lzZQo+IGl0J3MgbGlrZSB0cnlpbmcgdG8gcmFjZSBhZ2Fp
bnN0IGEgRmVycmFyaSB3aXRoIGEgbW91bnRhaW4gYmlrZS4gTXkKPiBwcm9kdWN0aXZpdHkgaXMg
c2hvdCBhbGwgdG8gaGVsbCwgYW5kIEkgcmVmdXNlIHRvIGRvIHRoYXQgdG8gbXlzZWxmLgo+Cj4K
PiBXYXJtIHJlZ2FyZHMsCj4KPiBCcmFuZHQgU3RlZW5rYW1wCj4KPiBTZW50IGZyb20gdGhlIFNs
aW50IG1hY2hpbmUgdXNpbmcgVGh1bmRlcmJpcmQKPgo+IE9uIDIwMjIvMDEvMTcgMDM6MDUsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiBXZWxsLCBzaW1wbGVy
IGlzIGEgc3ViamVjdGl2ZSB0ZXJtLiBJIHByZWZlciBHbm9tZSBvdmVyIE1hdGUgYW5kIEkgZmlu
ZAo+ID4gR25vbWUgdG8gdXNlIGEgbG90IG9mIHRoZSBzYW1lIGNvbmNlcHRzIHRoYXQgSSB1c2Ug
b24gbXkgV2luZG93cyAxMCBkZXNrdG9wLgo+ID4KPiA+IC0tCj4gPiBDaHJpc3RvcGhlciAoQUtB
IENKKQo+ID4gQ2hhbHRhaW4gYXQgT3V0bG9vawo+ID4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4gPiBGcm9tOiBibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20gPGJsaW51eC1s
aXN0LWJvdW5jZXNAcmVkaGF0LmNvbT4gT24KPiA+IEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uCj4gPiBTZW50OiBTdW5kYXksIEphbnVhcnkgMTYsIDIwMjIgOTo1
NCBBTQo+ID4gVG86IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+Cj4gPiBTdWJqZWN0OiBSZTogR2V0dGluZyBTdGFydGVkIHdpdGggbGlu
dXgKPiA+Cj4gPiBIaSwKPiA+Cj4gPgo+ID4gSSBwZXJzb25hbGx5IGRvIG5vdCBsaWtlIHZhbmls
bGEgVWJ1bnR1LCBzaW1wbHkgYmVjYXVzZSB0aGUgR25vbWUgZGVza3RvcAo+ID4gZG9lcyBub3Qg
bWFrZSBhbnkgc2VuY2UgdG8gbWUgYXQgYWxsLiBJZiBpdCB3YXMgbWUsIGFuZCBhdCBvbmUgcG9p
bnQsIGxvbmcsCj4gPiBsb25nIGFnbywgaXQgd2FzLCBJJ2QgZG93bmxvYWQgVWJ1bnR1IE1hdGUs
IHNpbXBseSBiZWNhdXNlIHRoZSBkZXNrdG9wIGlzIGEKPiA+IGhlbGwgb2YgYSBsb3Qgc2ltcGxl
ciB0byBnZXQgdXNlIHRvLCBhbmQgYWxzbyBhIGxvdCBtb3JlIGxpa2UgdGhlCj4gPiB0cmFkaXRp
b25hbCBXaW5kb3dzIERlc2t0b3AgaW4gdGhlIHNlbmNlIHRoYXQgeW91IGNhbiwgaWYgeW91IHNv
IHdpc2gsIHB1dAo+ID4gYWxsIHlvdXIgY3JhcCBvbiBpdCwgdW5saWtlIEdub21lLgo+ID4KPiA+
IFdhcm0gcmVnYXJkcywKPiA+Cj4gPiBCcmFuZHQgU3RlZW5rYW1wCj4gPgo+ID4gU2VudCBmcm9t
IHRoZSBTbGludCBtYWNoaW5lIHVzaW5nIFRodW5kZXJiaXJkCj4gPgo+ID4gT24gMjAyMi8wMS8x
NiAxNzoxOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+PiBX
ZWxsLCBpdCBzb3VuZHMgbGlrZSB5b3UncmUgdGVsbGluZyBtZSB0byBydW4gbGludXggdW5kZXIg
d2luZG93cz8KPiA+PiBUaGF0IGlzbid0IHdoYXQgSSBoYWQgaW4gbWluZC7CoCBIZXJlJ3Mgd2hh
dCBJJ3ZlIGxlYXJuZWQgdGh1cyBmYXI6Cj4gPj4gSSBuZWVkIHRvIGRvd25sb2FkIGEgbGludXgg
T1M7IHRoZW4gbWFrZSBhIGJvb3RhYmxlIG1lZGlhIGFuZCBpbnN0YWxsCj4gPj4gdGhlIGxpbnV4
IElTTyB0byBpdC4KPiA+Pgo+ID4+IFdlbGwsIEkgZGlkIHRoYXQ6Cj4gPj4gZG93bmxvYWRlZCB1
YnVudHUtMjAuMDQuMy1kZXNrdG9wLWFtZDY0LmlzbyBhbmQgKGZvciBmbGFzaGluZyBpdCB0bwo+
ID4+IHRoZSB0aHVtYiBkcml2ZSkgYmFsZW5hRXRjaGVyLVBvcnRhYmxlLTEuNy4zLmV4ZSBtYWRl
IGEgYm9vdGFibGUgdGh1bWIKPiA+PiBkcml2ZSBhbmQgaW5zdGFsbGVkIHVidW50dSBvbiBpdC4K
PiA+Pgo+ID4+Cj4gPj4gTm93IEkgbmVlZCB0byBsZWFybiBob3cgdG8gaW5zdGFsbCB1YnVudHUg
ZnJvbSB0aGUgdGh1bWIgZHJpdmUuwqAgSQo+ID4+IG11c3Qgc2VhcmNoIGZvciBpbnN0cnVjdGlv
bnMgdG8gZ28gb24gZnJvbSBoZXJlLgo+ID4+Cj4gPj4gVGhhbmtzLgo+ID4+IEhvd2FyZAo+ID4+
Cj4gPj4KPiA+PiBPbiAxLzE1LzIwMjIgNTo1MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4gVWJ1bnR1IG9yIEZlZG9yYSBjb3VsZCBkbyB0aGF0IGZv
ciB5b3UuIGFsdC13aW5kb3dzLXMgdG9nZ2xlcyBzcGVlY2gKPiA+Pj4gb24gYW5kIG9mZiBhbmQg
eW91IHdhbnQgdG8gY2hvb3NlIHRyeSB1YnVudHUgb3IgdHJ5IGZlZG9yYSBidXR0b25zIG9uCj4g
Pj4+IHRoZSBkZXNrdG9wIHNjcmVlbi7CoCBEZXNrdG9wIHNjcmVlbiBpcyB3aW5kb3dzLWQgb25j
ZSBzeXN0ZW0gYm9vdHMKPiA+Pj4gYW5kIHlvdSBoYXZlIHNwZWVjaC4KPiA+Pj4KPiA+Pj4KPiA+
Pj4gT24gU2F0LCAxNSBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiA+Pj4KPiA+Pj4+IEhlbGxvIGFsbCwKPiA+Pj4+Cj4gPj4+PiBJJ3ZlIGJlZW4g
d2FudGluZyB0byB0cnkgb3V0IGxpbnV4IGJ1dCBoYXZlbid0IHdhbnRlZCB0byBnaXZlIHVwIG9y
Cj4gPj4+PiBtZXNzIHVwIGFueSBvZiBteSB3b3JraW5nIHdpbmRvd3Mgc3lzdGVtcy7CoCBXb3Vs
ZCBpdCBiZSBwb3NzaWJsZSB0bwo+ID4+Pj4gaW5zdGFsbCBzb21lIHZlcnNpb24gb2YgbGludXgg
b24gYSBDRCBvciBhIERWRDsgdGhlbiBqdXN0IGJvb3QgYQo+ID4+Pj4gY29tcHV0ZXIgZnJvbSB0
aGF0IGRpc2sgYnlwYXNzaW5nIHdpbmRvd3MgYWx0b2dldGhlcj/CoCBJZiBzbywgSSdkCj4gPj4+
PiBoYXZlIHRvIG1ha2UgaXQgZWl0aGVyIHRhbGsgb3IgZHJpdmUgYSBCcmFpbGxlIGRpc3BsYXku
Cj4gPj4+Pgo+ID4+Pj4gV29uZGVyIGlmIGFueW9uZSB3b3VsZCBoYXZlIGFueSBzdWdnZXN0aW9u
cz/CoCBUaGFuayB5b3UuCj4gPj4+Pgo+ID4+Pj4gSG93YXJkCj4gPj4+Pgo+ID4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4gaHR0
cHM6Ly9uYTAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0El
MkYlMkZsaXMKPiA+Pj4+IHRtYW4ucmVkaGF0LmNvbSUyRm1haWxtYW4lMkZsaXN0aW5mbyUyRmJs
aW51eC1saXN0JmFtcDtkYXRhPTA0JTdDMDElCj4gPj4+PiA3QyU3Q2ZlMzhiNDZhZmM0MTQxOTgw
NzNkMDhkOWQ5MDg4ZjA0JTdDODRkZjllN2ZlOWY2NDBhZmI0MzVhYWFhYWFhYQo+ID4+Pj4gYWFh
YSU3QzElN0MwJTdDNjM3Nzc5NDUzMDUxMjcyOTczJTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5
SldJam9pTUMKPiA+Pj4+IDR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3
aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCZhbXA7Cj4gPj4+PiBzZGF0YT1sJTJGRjZwSHZXVE1PSzAy
Y0lFdEJiTm0lMkZDRSUyQkJ2YzVkJTJCN0l0Z3QxQ0VmQ3MlM0QmYW1wO3Jlcwo+ID4+Pj4gZXJ2
ZWQ9MAo+ID4+Pj4KPiA+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiA+Pj4gaHR0cHM6Ly9uYTAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxv
b2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZsaXN0Cj4gPj4+IG1hbi5yZWRoYXQuY29tJTJGbWFp
bG1hbiUyRmxpc3RpbmZvJTJGYmxpbnV4LWxpc3QmYW1wO2RhdGE9MDQlN0MwMSU3Qwo+ID4+PiAl
N0NmZTM4YjQ2YWZjNDE0MTk4MDczZDA4ZDlkOTA4OGYwNCU3Qzg0ZGY5ZTdmZTlmNjQwYWZiNDM1
YWFhYWFhYWFhYWEKPiA+Pj4gYSU3QzElN0MwJTdDNjM3Nzc5NDUzMDUxMjcyOTczJTdDVW5rbm93
biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqCj4gPj4+IEF3TURBaUxDSlFJam9pVjJsdU16
SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJmFtcDtzZGF0YQo+ID4+PiA9
bCUyRkY2cEh2V1RNT0swMmNJRXRCYk5tJTJGQ0UlMkJCdmM1ZCUyQjdJdGd0MUNFZkNzJTNEJmFt
cDtyZXNlcnZlZD0KPiA+Pj4gMAo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbmEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdG0KPiA+PiBhbi5yZWRoYXQuY29tJTJG
bWFpbG1hbiUyRmxpc3RpbmZvJTJGYmxpbnV4LWxpc3QmYW1wO2RhdGE9MDQlN0MwMSU3QyU3Cj4g
Pj4gQ2ZlMzhiNDZhZmM0MTQxOTgwNzNkMDhkOWQ5MDg4ZjA0JTdDODRkZjllN2ZlOWY2NDBhZmI0
MzVhYWFhYWFhYWFhYWElNwo+ID4+IEMxJTdDMCU3QzYzNzc3OTQ1MzA1MTI3Mjk3MyU3Q1Vua25v
d24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TUQKPiA+PiBBaUxDSlFJam9pVjJsdU16
SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJmFtcDtzZGF0YT1sJTJGCj4g
Pj4gRjZwSHZXVE1PSzAyY0lFdEJiTm0lMkZDRSUyQkJ2YzVkJTJCN0l0Z3QxQ0VmQ3MlM0QmYW1w
O3Jlc2VydmVkPTAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiA+IGh0dHBzOi8vbmEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/
dXJsPWh0dHBzJTNBJTJGJTJGbGlzdG1hbi5yZWRoYXQuY29tJTJGbWFpbG1hbiUyRmxpc3RpbmZv
JTJGYmxpbnV4LWxpc3QmYW1wO2RhdGE9MDQlN0MwMSU3QyU3Q2ZlMzhiNDZhZmM0MTQxOTgwNzNk
MDhkOWQ5MDg4ZjA0JTdDODRkZjllN2ZlOWY2NDBhZmI0MzVhYWFhYWFhYWFhYWElN0MxJTdDMCU3
QzYzNzc3OTQ1MzA1MTI3Mjk3MyU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdM
akF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0Mz
MDAwJmFtcDtzZGF0YT1sJTJGRjZwSHZXVE1PSzAyY0lFdEJiTm0lMkZDRSUyQkJ2YzVkJTJCN0l0
Z3QxQ0VmQ3MlM0QmYW1wO3Jlc2VydmVkPTAKPiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

