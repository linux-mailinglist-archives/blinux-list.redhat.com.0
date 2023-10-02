Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A1E7B4D3C
	for <lists+blinux-list@lfdr.de>; Mon,  2 Oct 2023 10:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696234850;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EYxUqAd74L87pdN9P4qGxN6CNaGY8qRMPNQqXQmpkXM=;
	b=ZuvAUMET/kQwDhgIKsfpNXagyDqGlPSw8ol7pwMcfLE4UO0E7HaahfovxKaMcOmfSMZqsX
	N5xSAwH5zy8uv7U6E/5BBhgnsMxU3dMT+y5z5QQbWfnpYSipt0dzSB6Kedfv6zsuWSvffR
	nIVEt1GFapCIkMfCZBxbwQ765dZKIeY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-658-9RHObVa5MsGoSvqQpKKDPA-1; Mon, 02 Oct 2023 04:20:48 -0400
X-MC-Unique: 9RHObVa5MsGoSvqQpKKDPA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90BBC101A53B;
	Mon,  2 Oct 2023 08:20:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A1DD54026FC;
	Mon,  2 Oct 2023 08:20:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 11A6019465B2;
	Mon,  2 Oct 2023 08:20:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 2 Oct 2023 09:20:31 +0100
MIME-Version: 1.0
User-Agent: Betterbird (Linux)
Subject: Re: arch-installer accessibility
To: blinux-list@redhat.com
References: <mailman.104.1696161029.2981442.blinux-list@redhat.com>
 <mailman.145.1696162429.2981444.blinux-list@redhat.com>
In-Reply-To: <mailman.145.1696162429.2981444.blinux-list@redhat.com>
Message-ID: <mailman.201.1696234837.2981442.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QXMgYW4gYWRpdGlvbiB0byB0aGlzLCBpZiB5b3UgYXJlIGF3YXkgZnJvbSB0aGUga2V5cyB3aGVu
IGl0IGJvb3RzIG9yIAp5b3UgaGl0IGVudGVyIGluc3RhZCBvZiBkb3duIGFuZCBlbnRlciwgeW91
IGNhbiBlbmFibGUgc3BlZWNoIGJ5IGRvaW5nIAp0aGUgZm9sbG93aW5nLCBvciBoZXJlJ3MgaG93
IEkgZG8gaXQKCgoxLiBMZXQgaXQgdGltZSBvdXQsIG9yIGhpdCBlbnRlciwgb3IgaG93ZXZlciB5
b3UgZ2V0IHRvIHRoZSBub3JtYWwgYm9vdAoKCjIuIGVzcGVhayBzb21ldGhpbmcKCgozLsKgIHN5
c3RlbWN0bCBzdGFydCBlc3BlYWt1cAoKClRoYXQgYWNoaWV2ZXMgdGhlIHNhbWUgcmVzdWx0IGlm
IHlvdSBnZXQgaW50byBhIG5vcm1hbCBib290LCBhbmQgZG9uJ3QgCndhbnQgdG8gcmVib290IGFu
ZCBnbyB0aHJvdWdoIHRoZSBib290IGRpc2sgc2VsZWN0aW9uIGlmIGl0IGlzIGdpdmluZyAKeW91
IHRyb3VibGUKCgoKT24gMTAvMS8yMyAxMzoxMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiBUaGF0J3MgaG93IEkgaW5zdGFsbGVkIGFyY2hsaW51eC4gIFRvIGdl
dCBzcGVha3VwIGdvaW5nIG9uIGFyY2hsaW51eCB3aGVuCj4geW91IGJvb3QgYW5kIGhlYXIgdGhl
IHRvbmVzLCBkb3duYXJyb3cgb25jZSB0aGVuIGhpdCBlbnRlciB0aGVuIHdhaXQuCj4gU3BlYWt1
cCBzaG91bGQgY29tZSB1cC4gIFdoZW4gaXQgZG9lcyBhbmQgeW91J3JlIGF0IHRoZSByb290IHBy
b21wdCB0aGVuCj4gZ2V0IGhpZ2hsaWdodCB0cmFja2luZyBvbiB3aXRoIHNwZWFrdXAuICBUaGVu
IHJ1biBhcmNoaW5zdGFsbCBhbmQgeW91Cj4gc2hvdWxkIGZpbmQgaXQgbXVjaCBtb3JlIHZlcmJh
bCBhbmQgd29ya2FibGUuCj4gSW4gYWRkaXRpb25hbCBwYWNrYWdlcyB0byBnZXQgZXNwZWFrLW5n
IGluc3RhbGxlZCBhbmQgYWJsZSB0byB3b3JrIHdoZW4KPiB0aGF0IHByb21wdCBjb21lcyB1cCB5
b3UgbmVlZCB0byBhZGQgZXNwZWFrdXAgZXNwZWFrLW5nIGFuZCBhbHNhLXV0aWxzLgo+IE9uY2Ug
eW91IGdldCBhbGwgb3RoZXIgcXVlc3Rpb25zIGFuc3dlcmVkIHlvdSdsbCBiZSBvZmZlcmVkIHRo
ZQo+IG9wcG9ydHVuaXR5IHRvIGNocm9vdCBpbnRvIHlvdXIgbmV3IHN5c3RlbSBhbmQgY3VzdG9t
aXplIHRoaW5ncy4gIERvIHRoYXQKPiBhbmQgaW4gdGhlcmUgc3lzdGVtY3RsIGVuYWJsZSBlc3Bl
YWt1cCBhbmQgYWxzbyBlbmFibGUgZGhjcGNkIHN5c3RlbWN0bAo+IGVuYWJsZSBkaGNwY2QuCj4g
SWYgbm9uZSBvZiB0aGF0IHdvcmtzIHRoZW4geW91IGdvdCBhIGJhZCBjb3B5IG9mIGFyY2hsaW51
eCBhbmQgbmVlZCB0bwo+IGNvbXBsYWluIHRvIHlvdXIgaW50ZXJuZXQgcHJvdmlkZXIgYW5kIGhh
dmUgdGhlbSBmaXggeW91ciBpbnRlcm5ldCBzbyB0aGF0Cj4gZG9lc24ndCBoYXBwZW4gYWdhaW4g
YW5kIGJ5IG5vbmUgb2YgdGhpcyBJIG1lYW4gb24gYm9vdCBkb3duYXJyb3cgdGhlbiBoaXQKPiBl
bnRlciBhdCB0aGUgdG9uZXMgaWYgeW91IGRvbid0IGdldCBzcGVlY2ggb3IgdGhlIGluc3RhbGwg
YnJlYWtzIHNvbWV3aGVyZQo+IGVsc2UgeW91IG1heSBoYXZlIG1hZGUgYSBiYWQgY2hvaWNlIGJ1
dCBpZiBwYWNrYWdlcyBpbnN0YWxsIGZhaWxzIHRoYXQncwo+IGRlZmluaXRlbHkgYW4gaW50ZXJu
ZXQgcHJvdmlkZXIgc2NyZXcgdXAuCj4KPgo+IC0tIEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRv
dCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCj4gZGVmZW5zZSBvZiBs
aWJlcnR5OiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQK
PiBvcmRlci4iIEVkIEhvd2RlcnNoZWx0IDE5NDAuCj4KPiBPbiBTdW4sIDEgT2N0IDIwMjMsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gSGksCj4+Cj4+IEJl
Y2F1c2UgSSBhbSBhbiBhYnNvbHV0ZWxseSBVRUZJIGlkaW90IGFuZCBJIGRvbid0IHVuZGVyc3Rh
bmQgaG93IHRvIGluc3RhbGwKPj4gaXQgd2l0aCBjb21tYW5kcywgSSB3YW50IHRvIGluc3RhbGwg
QXJjaCBMaW51eCB0byBteSBBY2VyIGxhcHRvcCwgd2hpY2ggbm8KPj4gbW9yZSBzdXBwb3J0cyBs
ZWdhY2kgdXNpbmcgYXJjaC1pbnN0YWxsIHNjcmlwdC4gQnV0IHRoZSBzY3JpcHQgaXMgbWVudSBi
YXNlZAo+PiBhbmQgdGhlIG1lbnUgaXRlbXMgYXJlIGluIHNpbmdsZSBsaW5lLiBTbyBoYXMgc3Bl
YWt1cCB0aGUgc2FtZSBtb2RlLCBJIHRoaW5rCj4+IGl0IGlzIGNhbGxlZCBhcyBsaWdodCBtb2Rl
LCBvciBjYW4gSSBpbnN0YWxsIEZlbnJpciB0byBsaXZlIHVzYiBmbGFzaAo+PiBpbnN0YWxsZXI/
IE9yIGNhbiBJIHVzZSBzb21lIG90aGVyIHRvb2wgdG8gaW5zdGFsbCBFRkk/IEkga25vdyBob3cg
dG8gaW5zdGFsbAo+PiBtYnIsIGJ1dCBFZmkgaXNuJ3QgbXkgZnJpZW5kLiBTZWN1cmUgYm9vdCBp
cyB0dXJuZWQgb2ZmLCB3aGVuIGl0IHdhcyB0dXJuZWQKPj4gb24sIGJvb3RpbmcgdG8gQXJjaCB3
YXMgaW1wb3NzaWJsZSBhbmQgYWxzbyB1c2luZyB2bXdhcmUgd2FzIGlucG9zc2libGUuCj4+Cj4+
IFRoYW5rcywKPj4KPj4gUGF2ZWwKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo=

