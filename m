Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 689A5543B99
	for <lists+blinux-list@lfdr.de>; Wed,  8 Jun 2022 20:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654713487;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Wvd00UuYW3EWbPaSUEmCIOmw4wFBrF+g78n7UwIk9Vc=;
	b=NtZjQfFj4bGBMfMCit5PDUKIo2GN2pa4Ta64iMvVGTEO1xcagHybiTCEENZwoUTpTieDfx
	psLzbXGaqynSDTnxpPlIIH2lbX/oYPppgUlYMJidpqbdL6/mq9qisNR9maGSgCD9JRS7yb
	kBxcFZUCIkOaMt6Be5dL8VaeaAPthnk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-47-FdMeySmLOpmlpVcsrW6G1g-1; Wed, 08 Jun 2022 14:38:03 -0400
X-MC-Unique: FdMeySmLOpmlpVcsrW6G1g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C43BA29DD9A8;
	Wed,  8 Jun 2022 18:38:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7224E40D282F;
	Wed,  8 Jun 2022 18:37:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B5EF0194705B;
	Wed,  8 Jun 2022 18:37:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 08 Jun 2022 18:37:43 +0000
To: blinux-list@redhat.com
Subject: Re: nvda2speechd, let Windows programs talk through Speech dispatcher
In-Reply-To: <mailman.22854.1654697491.111205.blinux-list@redhat.com>
References: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
 <mailman.21730.1654451477.111203.blinux-list@redhat.com>
 <mailman.21900.1654458346.111208.blinux-list@redhat.com>
 <mailman.22357.1654606973.111201.blinux-list@redhat.com>
 <mailman.22758.1654693519.111210.blinux-list@redhat.com>
 <mailman.22854.1654697491.111205.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.22995.1654713475.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgp3aGlsZSBJIGdldCB0aGlzIHVwIGFuZCBydW5uaW5nLCBhIHBhcnQgb2YgdGhlIG52
ZGEyc3BlZWNoZCBpcyBhbgphcHBsaWNhdGlvbiBjYWxsZWQgdGVzdGNsaWVudC4KCllvdSBjYW4g
Y29tcGlsZSBpdCB1c2luZyBjYXJnbyBidWlsZCAtLXJlbGVhc2UgLXEsIG9yIHVzZSB0aGlzIGJp
bmFyeToKCmh0dHBzOi8vZHJpdmUucHJvdG9uLm1lL3VybHMvOTVNVjVURUs3TSNqeVFYT2FKdm9q
a1kKCgpTSEEyNTY6IDgyZmI4NjZkMDAwYTA1OTQyZDYxMDlkYWY1OGUzNmVlNmZlYWJhOGJmMzA2
NDQ3MzgyNzdiYTE0MGI5MGVlNDAKCgp0aGlzIGFwcGxpY2F0aW9uIHdvcmtzIGFzIGEgdGVybWlu
YWwgY2xpZW50IHRvIHRoZSBzZXJ2ZXIuIFlvdSBsYXVuY2gKaXQsIGFuZCB0eXBlIGNvbW1hbmQg
InNwZWFrVGV4dCBzb21lIHRleHQiLgoKSWYgeW91IGhlYXIgdGhlIHNlcnZlciBzcGVhaywgdGhl
IGNvbm5lY3Rpb24gd29ya3MuCgpZb3UgY2FuIHF1aXQgdXNpbmcgdGhlIHF1aXQgY29tbWFuZC4K
CgpUaGlzIHNob3VsZCB0ZWxsIHlvdSwgd2hldGhlciBudmRhMnNwZWVjaGQgc2VydmVyIGlzIHdv
cmtpbmcgY29ycmVjdGx5LgpJZiBubywgd2UgbmVlZCB0byBzZWFyY2ggdGhlIHByb2JsZW0gdGhl
cmUsIGlmIHllcywgdGhlcmUgaXMgYSBwcm9ibGVtCndpdGggdGhlIGxpYnJhcnkgb3IgYXBwbGlj
YXRpb24uCgoKV2hldGhlciBTQVBJIGluc3RhbGxhdGlvbiBpcyBuZWVkZWQgb3Igbm90IGRlcGVu
ZHMgbGFyZ2VseSBvbiBob3cgaXMgdGhlCmFwcCBwcm9ncmFtbWVkLiBIb25lc3RseSwgSSBkaWRu
J3QgdGVzdCBvdXQgd2l0aCBhIGNsZWFyIHdpbmUKaW5zdGFsbGF0aW9uLCBzbyBJIGNhbid0IHRl
bGwgd2hpY2ggdmFyaWFudCBpcyB0byBiZSBleHBlY3RlZCwgaXQncyBhbHNvCnBvc3NpYmxlIHRo
YXQgdGhlIGFwcCBjcmFzaGVzIGV4YWN0bHkgYmVjYXVzZSBvZiBtaXNzaW5nIFNBUEksIHNpbmNl
CnVzdWFsbHkgcHJvZ3JhbW1lcnMgZXhwZWN0IGl0IHRvIGJlIGF0IGxlYXN0IHByZXNlbnQsIGV2
ZW4gaWYgbm90IHVzZWQuCgoKQmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSA4LiA2LiAy
MDIyIG8gMTY6MDkgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChh
KToKPiBCb290IHRoZSBJU08gYW5kIGhpdCBkb3duIG9uY2UgdGhlbiBlbnRlciwgaXQgc2hvdWxk
IGNvbWUgdXAgdGFsa2luZwo+Cj4KPiBJZiBub3QsIHN5c3RlbWN0bCBlbmFibGUgLS1zdGFydG5v
dyBlc3BlYWt1cAo+Cj4KPiBJJ20gdHJ5aW5nIHRvIHdvcmsgb3V0IHdoeSBJJ20gZ2V0dGluZyBh
IGxvdCBvZiB0aGluZ3MgYWJvdXQgU0FQSSwgYW5kCj4gaWYgSSBuZWVkIHZvaWNlcyBpbnN0YWxs
ZWQgYmVjYXVzZSBJIGFtIGdvaW5nIGZyb20gYSBjb21wbGV0ZWx5IHN0YW5kYXJkCj4gd2luZSBp
bnN0YWxsYXRpb24gb24gYSA2NGJpdCBtYWNoaW5lLCB5ZXQgaXQncyBmbG9vZGluZyBteSB0ZXJt
aW5hbCB3aXRoCj4gYSB0b24gb2Ygdm9pY2UgbGlzdCB0aGluZ3MgYWJvdXQgU0FQSSBob3dldmVy
IHNvIEknbSB1bnN1cmUuCj4KPgo+IERvIEkgbmVlZCB0byBpbnN0YWxsIHVuZGVyIHdpbmUgdGhl
IHNwZWVjaHNkayBhbmQgdGhpbmdzIG9yIHNob3VsZAo+IG52ZGEyc3BlZWNoZCB0YWtlIGNhcmUg
b2YgdGhhdC4gSXQncyBlc3RhYmxpc2hpbmcgYSBjb25uZWN0aW9uLCBidXQuLi5ubwo+IGx1Y2sK
Pgo+IE9uIDYvOC8yMiAxMzo0NCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4gSGksCj4+Cj4+IEkgc2F3IHlvdXIgaXNzdWUgb24gR2l0aHViLCB3aWxsIGJlIGdl
dHRpbmcgdG8gaXQgc29vbi4KPj4KPj4gUmlnaHQgbm93LCBJJ20gdHJ5aW5nIHRvIGZpZ3VyZSBv
dXQgaG93IHRvIGJvb3QgdXAgQXJjaGxpbnV4IGludG8gdGhlCj4+IGFjY2Vzc2libGUgbW9kZSBp
biBxdWlja2VtdSwgc28gSSBjYW4gZ2V0IGF0IGxlYXN0IGEgc2ltaWxhciBlbnZpcm9ubWVudC4K
Pj4KPj4KPj4gQmVzdCByZWdhcmRzCj4+Cj4+Cj4+IFJhc3Rpc2xhdgo+Pgo+Pgo+PiBExYhhIDcu
IDYuIDIwMjIgbyAxNTowMiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOt
c2FsKGEpOgo+Pj4gQXMgc2FpZCBvbiB0aGUgR2l0aHViIHBhZ2UuIEknbSBydW5uaW5nIHRoaXMg
dW5kZXIgQXJjaCBhbmQgZ2V0IG5vCj4+PiBvdXRwdXQgYXQgYWxsLgo+Pj4KPj4+IHdoYXQgSSBk
bwo+Pj4KPj4+IDEuIERvd25sb2FkIFdpbmRvd3MgZXhlIGFuZCBleHRyYWN0IGl0Cj4+Pgo+Pj4g
Mi4gR3JhYiB0aGUgc2VydmVyL2NsaWVudCBhbmQgcmVuYW1lL3JlcGxhY2UgbnZkYUNvbnRyb2xs
ZXJ4eC5kbGwKPj4+IHdoZXJlIHh4IGlzIDMyIG9yIDY0Cj4+Pgo+Pj4gMy4gc3RhcnQgdGhlIHNl
cnZlciB3aXRoIC4vbnZkYTJzcGVlY2hkIGluIGl0cyBmb2xkZXIKPj4+Cj4+PiA0LiB3aW5lIHdp
bmRvd3NleGUuZXhlCj4+Pgo+Pj4gSSBnZXQgYSBjb25uZWN0aW9uIGhhcyBiZWVuIGVzdGFibGlz
aGVkIG9uIHRoZSB0YWIgd2l0aCB0aGUKPj4+IG52ZGEyc3BlZWNoZCBydW5uaW5nLCBhbmQgbm8g
c3BlZWNoIGZyb20gdGhlIHByb2dyYW0gYXQgYWxsIGhvd2V2ZXIsCj4+PiBhbmQgYSBib2F0bG9h
ZCBvZiBXSU5FIFNhcGkgZXJyb3JzLCBpdCBzZWVtcyogdG8gbWUgbGlrZSBpdCdzIGxvb2tpbmcK
Pj4+IGZvciB0aGUgU0FQSSBzdHVmZgo+Pj4KPj4+IEFtIEkgbWlzc2luZyBzb21lZXRoaW5nIHN1
cGVyIHN1cGVyIG9idmlvdXMgaGVyZSBvcj8KPj4+Cj4+PiBPbiAwNS8wNi8yMDIyLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4+Pj4gSSBhdm9pZCBHVUkgYXBwcyBpbiBnZW5lcmFsIGFuZCBJIHRoaW5rIHRoZSBs
YXN0IHRpbWUgSSB1c2VkIFdpbmUKPj4+PiBtaWdodCBoYXZlIGJlZW4geWVhcnMgYmVmb3JlIEkg
d2VudCBibGluZCwgYnV0IHRoaXMgc3RpbGwgc291bmRzIGxpa2UKPj4+PiBhIHNpZ25pZmljYW50
IHN0ZXAgZm9yd2FyZCBmb3IgdGhlIGFjY2Vzc2liaWxpdHkgb2Ygbm9uLW5hdGl2ZQo+Pj4+IHNv
ZnR3YXJlLCBhbmQgc3VycHJpc2luZ2x5IGVsZWdhbnQgdG8gYm9vdC4KPj4+Pgo+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4+
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=

