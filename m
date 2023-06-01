Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D36271F0E7
	for <lists+blinux-list@lfdr.de>; Thu,  1 Jun 2023 19:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685641092;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HTDaoiJtj2plXtVq27WHkxpl4ikYpJjuP54gaFDhVSs=;
	b=TGE2AmUsW+RnUyPkPQYJ90BfFFonrSgvt2xHAsPt90fhc8umCvS0iz4r6NX21lsVt8TWvo
	sUJyS9wExf4ZrxJ5iMOH32UdTdWES0ecrRCwcwRps3IX6yPVcn1NTglvTgO5/XDa+YAquM
	qb+iGyi5bqRXXk+/nwaN/JtMwZFWW74=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-304-GC_VltbVOf6IXhRVCp9r8w-1; Thu, 01 Jun 2023 13:38:10 -0400
X-MC-Unique: GC_VltbVOf6IXhRVCp9r8w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1618811E88;
	Thu,  1 Jun 2023 17:38:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2F7DC14171BB;
	Thu,  1 Jun 2023 17:38:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9EC5519465A4;
	Thu,  1 Jun 2023 17:38:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 1 Jun 2023 12:38:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Good minimal distro today?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1535.1685633430.2653573.blinux-list@redhat.com>
 <mailman.1533.1685638716.2653567.blinux-list@redhat.com>
 <mailman.1548.1685640124.2653567.blinux-list@redhat.com>
In-Reply-To: <mailman.1548.1685640124.2653567.blinux-list@redhat.com>
Message-ID: <mailman.1365.1685641087.2653574.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2VsbCwgSSBndWVzcyBJJ2xsIGp1c3QgbWFrZSBhIERPUyBtYWNoaW5lLsKgIEkgZG8gaGF2ZSBh
IGNvdXBsZSBYUCAKbWFjaGluZXMgdGhhdCBhcmUgcHJvYmFibHkgYXQgbGVhc3QgcGVudGl1bXMu
wqAgV2lsbCBvbmUgb2YgdGhlbSB3b3JrPwoKSG93YXJkCgoKT24gNi8xLzIwMjMgMTI6MjEgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gV2VsbCwgcnVubmlu
ZyBvbiBhIDM4NiBpcyBwcmV0dHkgaGFyZGNvcmUsIGJ1dCBtb3N0IExpbnV4IHBhY2thZ2VzCj4g
YnVpbHQgZm9yIDMyLWJpdCBzeXN0ZW1zIGhhdmUgdGhlaXIgYXJjaGl0ZWN0dXJlIGxpc3RlZCBh
cyBpMzg2Cj4gaW1wbHlpbmcgYXQgbGVhc3QgYmluYXJ5IGNvbXBhdGliaWxpdHkgd2l0aCB0aGUg
ZWFybGllc3QgMzItYml0IHg4Ngo+IHByb2Nlc3NvcnMuLi4gYW5kIHRoZSBMaW51eCBrZXJuZWwg
aXRzZWxmIGhhcyA2ODYgYnVpbGRzIGRpc3RpbmN0IGZyb20KPiB0aGUgaTM4NiBidWlsZHMsIGZ1
cnRoZXIgaW1wbHlpbmcgdGhlIGkzODYga2VybmVscyBoYXZlIHN1cHBvcnQgZm9yCj4gdGhlIG9s
ZGVzdCAzMi1iaXQgcHJvY2Vzc29ycy4KPgo+IFByb2JhYmx5IG5vdCBldmVuIHdvcnRoIHRyeWlu
ZyB0byBydW4gYSBMaW51eCBERSBvbiBzdWNoIGFuIG9sZAo+IG1hY2hpbmUsIGJ1dCBhIHB1cmVs
eSBDTEkgc2V0dXAgbWlnaHQgd29yay4uLiBUaG91Z2gsIGRvZXMgdGhlIG9sZAo+IG1hY2hpbmUg
ZXZlbiBoYXZlIGEgQ0QtUk9NIGRyaXZlIG9yIFVTQiBwb3J0cyB0byBzdXBwb3J0IG1vZGVybgo+
IGluc3RhbGwgbWVkaWE/IEV2ZW4gaWYgeW91IGNvdWxkIGdldCBpdCBvbiB0byBmbG9wcGllcywg
YSBEZWJpYW4KPiBuZXRpbnN0IHdvdWxkIHJlcXVpcmUgc2V2ZXJhbCBzdGFja3MgdGFsbCBhcyBh
IHBlcnNvbiBhbmQgaWYgdGhlIG9sZAo+IG1hY2hpbmUgYWxzbyBsYWNrZWQgZXRoZXJuZXQuLi4g
d2VsbCwgaXQncyBoYXJkIHRvIGltYWdpbmUgdGhhbiBtYW55Cj4gZmxvcHB5IGRpc2tzIGluIG9u
ZSBwbGFjZS4KPgo+IE9uIDYvMS8yMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IEhvdyBtdWNoIG1hY2hpbmUgZG8g
SSBuZWVkIHRvIHJ1biBzb21lIHZlcnNpb24gb2YgbGludXg/wqAgQ2FuIEkgZ2V0Cj4+IHNvbWV0
aGluZyB0byBydW4gb24gYSAzODYgb3IgNDg2P8KgIE9yIG1heWJlIEkgc2hvdWxkIGp1c3QgbWFr
ZSBhIERPUwo+PiBtYWNoaW5lP8KgIFRoYW5rcy4KPj4KPj4gSG93YXJkCj4+Cj4+Cj4+IE9uIDYv
MS8yMDIzIDEwOjE5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4gSGkgYWxsLCBJIHdhbnQgYSBkaXN0cm8gd2hpY2ggaXMgcmVsYXRpdmVseSBzdGFibGUs
IGJ1dCBub3QgaGFyZCB0bwo+Pj4ga2VlcCBzb21lIGNvbXBvbmVudHMgdXAgdG8gZGF0ZSwgZXNw
ZWNpYWxseSBhY2Nlc3NpYmlsaXR5IGNvbXBvbmVudHMKPj4+IGxpa2UgT3JjYSwgYXMgd2VsbCBh
cyBGaXJlZm94LiBJbiBwcmluY2lwbGUsIEkgZG9uJ3Qgd2FudCBhIGZ1bGwKPj4+IGRlc2t0b3Ag
ZW52aXJvbm1lbnQsIGp1c3QgZW5vdWdoIHRvIHJ1biBGaXJlZm94IHBsdXMgT3JjYSwgYW5kCj4+
PiBwb3NzaWJseSBvdGhlciBkZXNrdG9wIGFwcHMgbGF0ZXIuIEkgaGF2ZSBzdWNjZXNzZnVsbHkg
c2V0IHVwCj4+PiByYXRwb2lzb24gYSBmZXcgeWVhcnMgYWdvIHdpdGggdGhlIGhlbHAgb2YgdGhl
IFN0cnljaG5pbmUgc2NyaXB0Cj4+PiBkZXZlbG9wZWQgYnkgU3Rvcm0sIHNvIG1heWJlIHRoZSBl
YXNpZXN0IHBhdGggaXMgdG8gZ2V0IGl0IGFnYWluLgo+Pj4KPj4+IEknZCBsaWtlIG9waW5pb25z
IG9uIHRoZSBkaXN0cm8gdG8gdXNlLiBBcmNoTGludXggaGFzIHRoZSBhZHZhbnRhZ2Ugb2YKPj4+
IHJlcXVpcmluZyBmZXcgZGlzayBzcGFjZSBhbmQgYWx3YXlzIGhhdmluZyB0aGUgbGF0ZXN0IHNv
ZnR3YXJlLCBidXQKPj4+IEkndmUgdHJpZWQgaXQgc29tZSB5ZWFycyBhZ28sIGFuZCBpdCBhcHBl
YXJzIHRvbyBwcm9uZSB0byBicmVhawo+Pj4gdGhpbmdzLCBlc3BlY2lhbGx5IHRoZSBhdWRpbyBz
dHVmZiBkdWUgdG8gY29uc3RhbnQgdXBncmFkaW5nLiBJcyBpdAo+Pj4gc3RpbGwgdHJ1ZSB0b2Rh
eT8gQW5vdGhlciBvcHRpb24gaXMgRGViaWFuIHVuc3RhYmxlLCB3aGljaCBJJ3ZlIG5ldmVyCj4+
PiB0cmllZC4gRG9lcyBpdCB1c2UgdG8gYnJlYWsgdG9vPyBJJ3ZlIGFsc28gcmVhZCBhYm91dCBW
b2lkTGludXguIEhhcwo+Pj4gYW55b25lIHRyaWVkIGl0IHlldD8gSSBrbm93IGFib3V0IFNsaW50
IGFzIHdlbGwsIGJ1dCB0aGUgbWFudWFsIHN0YXRlcwo+Pj4gdGhhdCBpdCByZXF1aXJlcyA1MCBn
YiBkaXNrIHNwYWNlIGF0IGxlYXN0LCBhbmQgSSdtIGN1cnJlbnRseSBvdXQgb2YKPj4+IGRpc2sg
c3BhY2UsIGFyb3VuZCAxNSBnYiBhdCBtb3N0Lgo+Pj4KPj4+IFRoYW5rcyBmb3IgY29tbWVudHMs
Cj4+PiBDbGV2ZXJzb24KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pgo+PiAtLQo+PiBJZiB0aGlzIHdlcmUgYW4gYWN0dWFsIHRhZ2xp
bmUsIGl0IF9taWdodF8gYmUgZnVubnkuCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0CgotLSAKSWYgdGhpcyB3ZXJlIGFuIGFjdHVhbCB0YWdsaW5lLCBpdCBfbWln
aHRfIGJlIGZ1bm55LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

