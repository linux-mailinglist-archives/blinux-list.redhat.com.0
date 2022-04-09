Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E28CF4FA792
	for <lists+blinux-list@lfdr.de>; Sat,  9 Apr 2022 14:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649506675;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eBETKwpOcYr/wCmelty+z+6Txo+mhPDTTew0wkuG0Q4=;
	b=E3O7/52VJWDnRLE5OfwOPJktj/NwnJ53oBaKvU6a+SMCuNEdhKFPHD1n8GYSsy0Kqzj/ki
	HCrwiEiRJ/dXjvRpAFIRLoi7w0HwZnvAAKRAIVp8xCCAuiiOkpt1KnMMuXDUGEnO51+P2j
	BnVjHhiUvejirSvk0e4Ok60ckA2C8b8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-489-I2bDPKH-MUiQ5RT7AzUxbw-1; Sat, 09 Apr 2022 08:17:52 -0400
X-MC-Unique: I2bDPKH-MUiQ5RT7AzUxbw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 083003C0218F;
	Sat,  9 Apr 2022 12:17:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E6E508145;
	Sat,  9 Apr 2022 12:17:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 69650193F6DB;
	Sat,  9 Apr 2022 12:17:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 9 Apr 2022 14:17:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Dragonfm questions/NNN query
To: blinux-list@redhat.com
References: <mailman.7614.1649483669.111206.blinux-list@redhat.com>
 <mailman.7510.1649490124.111203.blinux-list@redhat.com>
 <mailman.7495.1649493025.111209.blinux-list@redhat.com>
 <mailman.7414.1649495618.111207.blinux-list@redhat.com>
 <mailman.7295.1649499971.111205.blinux-list@redhat.com>
 <mailman.7621.1649500471.111206.blinux-list@redhat.com>
 <mailman.7521.1649502333.111203.blinux-list@redhat.com>
 <mailman.7419.1649503102.111207.blinux-list@redhat.com>
 <mailman.7298.1649504160.111205.blinux-list@redhat.com>
 <mailman.7522.1649505602.111208.blinux-list@redhat.com>
 <mailman.7301.1649506177.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.7301.1649506177.111205.blinux-list@redhat.com>
Message-ID: <mailman.7627.1649506669.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aG1tIHN0aWxsIHNvbWUgaXNzdWVzLAoKbGV0IG1lIHRha2UgYSBkZWVwZXIgbG9vawoKQW0gMDku
MDQuMjIgdW0gMTQ6MDkgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
Ogo+IEhvd2R5LAo+Cj4gaXQgc2hvdWxkIGJlIGZpeGVkIG15IGZyaWVuZC4gU29ycnkgZm9yIHRo
YXQgXl4uCj4KPgo+IGNoZWVycyBjaHJ5cwo+Cj4KPiBBbSAwOS4wNC4yMiB1bSAxMzo1OSBzY2hy
aWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+IFRoZSBzaW1saW5rIHBv
aW50cyB0byB5b3VyIGhvbWUgZGlyZWN0b3J5IGFuZCBzaG93cyB1cCBhcyBhIGJyb2tlbiAKPj4g
c2ltbGluayBpZiBJIGNoZWNrLiBJdCdzIHNob3duIHVwIGFzIGEgc3ltYm9saWMgbGluaywgYnJv
a2VuLCAKPj4gcG9pbnRpbmcgdG8gL2hvbWUvY2hyeXMvZHJhZ29uZm0vc3JjLi4udGhlIC5weSBz
Y3JpcHQgdGhhdCBzaG91bGQgYmUgCj4+IHRoZXJlIHRoZXJlJ3MgYSBzaW1saW5rIGluc3RlYWQu
Cj4+Cj4+IE9uU2F0LCBBcHIgMDksIDIwMjIgYXQgMDE6MzU6NDlQTSArMDIwMCwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgCj4+IGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIb3dkeSwKPj4+Cj4+PiBp
IGNhbnQgcmVwcm9kdWNlIHRoaXMgaGVyZS4KPj4+IEkganVzdCBkaWQgYSBsb29rIGF0IGdpdCwg
bG9va3MgbGlrZSBhbGwgZmlsZXMgYXJlIHB1c2hlZCBjb3JyZWN0bHkuCj4+Pgo+Pj4gbWF5YmUg
YSBjb2xsaXNpb24gd2l0aCBhbiB3b3JrIGluIHByb2dyZXNzIGNvbW1pdCwgd3JvbmcgYnJhbmNo
IG9yIAo+Pj4gcHl0aG9uCj4+PiBjYWNoZT8KPj4+Cj4+PiBpIGd1ZXNzIGl0IG11c3QgYmUgYSBs
b2NhbCBpc3N1ZSwgc2V0dXAucHkgYW5kIFBLR0JVSUxEIHdvcmsgYXMgCj4+PiBleHBlY3RlZAo+
Pj4gaGVyZS4KPj4+Cj4+PiBjaGVlcnMgY2hyeXMKPj4+Cj4+PiBBbSAwOS4wNC4yMiB1bSAxMzox
OCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+Pj4gTm90IHN1
cmUgaWYgdGhhdCBicm9rZSBidXQgb24gbXkgZW5kIHRoYXQncyB0aHJvd2luZyB1cCBhIG5vIHN1
Y2ggCj4+Pj4gZmlsZSBmb3IgdGhlIG9wZW4gc2hlbGwgd2l0aC4uLiAucHkgb25lIHdoZW4gSSBk
byBzdWRvIC4vc2V0dXAucHkgCj4+Pj4gd2l0aCBhIGZyZXNoIGluc3RhbGwgYW5kIGRvaW5nIGlu
IHRoZSBtYW51YWwgd2F5LiBOb3QgYmFjayBvbiBteSAKPj4+PiBBcmNoIGJveCByaWdodCBub3cg
c28gY2FuJ3QgdGVzdCB0aGUgcGtnYnVpbGQgdGhvdWdoLi4uLmJ1dCB0byAKPj4+PiByZXBsaWNh
dGUgY2xvbmUgdGhlIGxhdGVzdCB1cmwgYW5kIGRvIHN1ZG8gLi9zZXR1cC5weSBhbmQgd2F0Y2gg
Zm9yIAo+Pj4+IHRoZSB1bmFibGUgdG8gY29weSBlcnJvcgo+Pj4+Cj4+Pj4gT24gU2F0LCBBcHIg
MDksIDIwMjIgYXQgMDE6MDU6MThQTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgCj4+
Pj4gZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gSG93ZHksCj4+Pj4+Cj4+Pj4+IGkganVzdCBhZGQg
YW4gIm9wZW4gZW50cnkgd2l0aCBzaGVsbCIgYWN0aW9uLgo+Pj4+PiBjdXJyZW50bHkgYXNzaWdu
ZWQgdG8gY3RybCArIG8uCj4+Pj4+IHdoZW4geW91IHNlbGVjdCBhIGZpbGUsIHByZXNzIGN0cmwg
KyBvIGFuIGlucHV0IGJveCBhcHBlYXJzLiB0aGVyZSAKPj4+Pj4gaXMgYQo+Pj4+PiBkZWZhdWx0
IHZhbHVlIChjb25maWd1cmVhYmxlIGluIHNldHRpbmdzLmNvbmYgc2VjdGlvbiBmb2xkZXIga2V5
Cj4+Pj4+IG9wZW5XaXRoU2hlbGxJbml0VmFsdWUpLiBwcmVzc2luZyBlbnRlciBleGVjdXRlcyB0
aGUgY29tbWFuZCB0aGVuLiAKPj4+Pj4gezB9IGlzCj4+Pj4+IHRoZSBwbGFjZWhvbGRlciBmb3Ig
dGhlIGN1cnJlbnQgc2VsZWN0ZWQgZmlsZS4KPj4+Pj4KPj4+Pj4gZG8geW91IHdhbnQKPj4+Pj4g
Y3RybCArIG8gZm9yIG9wZW4KPj4+Pj4gY3RybCArIHcgZm9yIG9wZW4gd2l0aD8KPj4+Pj4KPj4+
Pj4gc2hvdWxkIGkgc3dhcCB0aGVtIG9yIGtlZXAgaXQgYXMgaXQgaXM/Cj4+Pj4+Cj4+Pj4+IGNo
ZWVycyBjaHJ5cwo+Pj4+Pgo+Pj4+PiBBbSAwOS4wNC4yMiB1bSAxMjozNCBzY2hyaWViIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+Pj4+PiBIb3dkeSwKPj4+Pj4+Cj4+Pj4+
PiBpIGp1c3QgcHJvdmlkZWQgYW4gUEtHQlVJTEQgZm9yIGRyYWdvbkZNIGFuZCB1cGxvYWRlZCBp
dCB0byBBVVIuCj4+Pj4+PiBpdHMgY3VycmVudGx5IGEgZ2l0IHBhY2thZ2UsIGFzIGRyYWdvbkZN
IGRvZXMgbm90IHlldCBzZWVuIGFueSAKPj4+Pj4+IHN0YWJsZQo+Pj4+Pj4gcmVsZWFzZSA7KS4K
Pj4+Pj4+IG5hbWU6IGRyYWdvbmZtLWdpdAo+Pj4+Pj4gdXJsOiBodHRwczovL2F1ci5hcmNobGlu
dXgub3JnL3BhY2thZ2VzL2RyYWdvbmZtLWdpdAo+Pj4+Pj4KPj4+Pj4+IGlmIHlvdSBhbHJlYWR5
IGluc3RhbGxlZCBpdCB1c2luZyBzZXR1cC5weSB5b3UgbWlnaHQgbmVlZCB0byByZW1vdmUKPj4+
Pj4+IGNvbmZsaWN0aW5nIGZpbGVzIGZyb20geW91ciBmaWxlc3lzdGVtIGZpc3QuIChhcyBzZXR1
cC5weSBkb2VzIAo+Pj4+Pj4gYnlwYXNzCj4+Pj4+PiB0aGUgcGFja2FnZSBtYW5hZ2VyKQo+Pj4+
Pj4KPj4+Pj4+IGkgYWRkZWQgYW4gd2lsZGNhcmQgbWltZSB0eXBlLiBpZiB0aGVyZSBpcyBubyBz
cGVjaWZpYyBlbnRyeSBpbiAKPj4+Pj4+IHRoZSBtaW1lCj4+Pj4+PiBsaXN0LCB0aGUgeGRnLW9w
ZW4gcG9wcyB1cCBub3cuIHRoaXMgbWlnaHQgYmUgbW9yZSBoZWxwZnVsLgo+Pj4+Pj4gd2VsbCwg
aSB3aWxsIGltcGxlbWVudCB0aGUgb3BlbiB3aXRoIGZvciB5b3UuIGdpdmUgbWUgYSBzZWNvbmQu
Cj4+Pj4+PiBpIHdpbGwgYXNzaWduIGl0IHRvIGN0cmwgKyBvIGFuZCBtb3ZlIHRoZSBvcGVuIGFj
dGlvbiB0byBjdHJsICsgbS4KPj4+Pj4+Cj4+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+Cj4+Pj4+
PiBBbSAwOS4wNC4yMiB1bSAxMjoyNSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb246Cj4+Pj4+Pj4gU3VyZSBJIGNhbiB0ZXN0IHRoZSBwa2didWlsZCBvbmNlIEknbSBi
YWNrIG9uIG15IEFyY2ggYm94Cj4+Pj4+Pj4KPj4+Pj4+PiBBbmQgdGhhdCBpbnB1dCBib3ggd29y
a3MgZmluZS4gSSdsbCBzdWdnZXN0IEN0cmwrTyBhcyB0aGUgCj4+Pj4+Pj4gc2hvcnRjdXQgZm9y
Cj4+Pj4+Pj4gaXQgc28geW91IGdvdCBFbnRlci9DdHJsK00gdG8gb3BlbiAobyBtYXliZSBtb3Zl
IG9wZW4gd2l0aCB0byAKPj4+Pj4+PiBjdHJsK00gYW5kCj4+Pj4+Pj4gc2VlIGhvdyB0aGF0IHdv
cmtzPyksIGFuZCBhIGN0cmwrTyBmb3Igb3BlbiB3aXRoPwo+Pj4+Pj4+Cj4+Pj4+Pj4gQUFoIEkg
ZGlkbnQga25vdyBhYm91dCBqdXN0IGV4aXRpbmcgdGhlIHNoZWxsLiBJIGFzc3VtZWQgdGhhdCdk
IAo+Pj4+Pj4+IGNsb3NlCj4+Pj4+Pj4gdGhlIHRhYi4gTXkgZmlyc3QgdGhvdWdodCB3YXMgYWxy
aWdodCwgZmcgZHJhZ29uZm0gdG8gZ2V0IGJhY2sgCj4+Pj4+Pj4gdG8gaXQKPj4+Pj4+Pgo+Pj4+
Pj4+IE9uIFNhdCwgQXByIDA5LCAyMDIyIGF0IDExOjEzOjI1QU0gKzAyMDAsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsCj4+Pj4+Pj4gZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4gSG93ZHksCj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IC8vIFllcyB0byBwdXR0aW5nIGl0IGluIHRoZSBBVVIgYW5kIHllcyBm
b3IgdGhlIGVudiBzdHVmZi4KPj4+Pj4+Pj4gT0sgbGV0IG1lwqAgY3JlYXRlIGEgUEtHQlVJTEQg
Zm9yIGRyYWdvbmZtLWdpdAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiAvLyBJJ20gcG9raW5nIGF0IHRoZSBj
b25maWcgdHJ5aW5nIHRvIHJlcGxpY2F0ZSBOTk4ncyBvcGVuIHdpdGggCj4+Pj4+Pj4+IGFuZCBu
b3QKPj4+Pj4+Pj4gLy8gaGF2aW5nIG11Y2ggbHVjay4gSXMgdGhhdCBqdXN0IGEgY2FzZSBvZiBy
ZW1lbWJlcmluZyB0byBkcm9wCj4+Pj4+Pj4+IHRvIGEgc2hlbGwKPj4+Pj4+Pj4gLy8gYW5kIGRv
aW5nIHdoYXQgSSBuZWVkPwo+Pj4+Pj4+PiBob3cgZG9lcyB0aGlzIGxvb2sgbGlrZT8ganVzdCBh
IGlucHV0IGRpYWxvZyB0byBlbnRlciBhbnkKPj4+Pj4+Pj4gY29tbWFuZCB3aXRoIHRoZQo+Pj4+
Pj4+PiBjdXJyZW50IHNlbGVjdGVkIGVsZW1lbnQgYXMgcGFyYW1ldGVyPwo+Pj4+Pj4+Pgo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiAvLyBPbiB0aGF0IG5vdGUuLi5pcyB0aGVyZSBhIHdheSBvbmNlIEkgaGl0
IEY0LCB0byBnZXQgYmFjayB0byAKPj4+Pj4+Pj4gZHJhZ29uZm0KPj4+Pj4+Pj4gLy8gZWFzaWx5
IHdpdGhvdXQgcmVsYXVuY2hpbmcgaXQgZnJvbSB0aGUgc2hlbGw/Cj4+Pj4+Pj4+IHdlbGwsIGp1
c3QgZXhpdCB0aGUgc2hlbGwgKHR5cGUgImV4aXQiKSwgeW91IHdpbGwgYmUgYmFjayBpbgo+Pj4+
Pj4+PiBkcmFnb25mbSB0aGVuCj4+Pj4+Pj4+IDopLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBjaGVlcnMg
Y2hyeXMKPj4+Pj4+Pj4KPj4+Pj4+Pj4gQW0gMDkuMDQuMjIgdW0gMTA6MzAgc2NocmllYiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Pj4+Pj4gWWVzIHRvIHB1dHRpbmcg
aXQgaW4gdGhlIEFVUiBhbmQgeWVzIGZvciB0aGUgZW52IHN0dWZmLgo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+IEknbSBwb2tpbmcgYXQgdGhlIGNvbmZpZyB0cnlpbmcgdG8gcmVwbGljYXRlIE5OTidzIG9w
ZW4gd2l0aCAKPj4+Pj4+Pj4+IGFuZCBub3QKPj4+Pj4+Pj4+IGhhdmluZyBtdWNoIGx1Y2suIElz
IHRoYXQganVzdCBhIGNhc2Ugb2YgcmVtZW1iZXJpbmcgdG8gZHJvcAo+Pj4+Pj4+Pj4gdG8gYSBz
aGVsbAo+Pj4+Pj4+Pj4gYW5kIGRvaW5nIHdoYXQgSSBuZWVkPwo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
IE9uIHRoYXQgbm90ZS4uLmlzIHRoZXJlIGEgd2F5IG9uY2UgSSBoaXQgRjQsIHRvIGdldCBiYWNr
IHRvIAo+Pj4+Pj4+Pj4gZHJhZ29uZm0KPj4+Pj4+Pj4+IGVhc2lseSB3aXRob3V0IHJlbGF1bmNo
aW5nIGl0IGZyb20gdGhlIHNoZWxsPwo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IE9uIFNhdCwgQXByIDA5
LCAyMDIyIGF0IDA5OjQxOjQ5QU0gKzAyMDAsIExpbnV4IGZvciBibGluZAo+Pj4+Pj4+Pj4gZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+IEhvd2R5LAo+Pj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Pj4+IO+7v0lzIERyYWdvbkZNIGluIHRoZSBBcmNoIHJlcG8/Cj4+Pj4+Pj4+Pj4gQ3VycmVu
dGx5IGl0cyBub3QuIElmIHlvdSBsaWtlIGl0LCBpIGNhbiBwdXQgaXQgaW50byBBVVIuCj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+PiBDaGVlcnMgY2hyeXMKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBBbSAw
OS4wNC4yMDIyIHVtIDA3OjU0IHNjaHJpZWIgTGludXggZm9yIGJsaW5kCj4+Pj4+Pj4+Pj4+IGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4+IO+7v0lzIERyYWdvbkZNIGluIHRoZSBBcmNoIHJlcG8/IEFtIHRyeWluZyB0byBn
ZXQgaXQKPj4+Pj4+Pj4+Pj4gd2l0aCB5YXkgZnJvbSB0aGlzIHNpZGUuCj4+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiBPbiBTYXQsIEFwciAwOSwgMjAyMiBhdCAwMjoyNjoxNUFN
ICswMjAwLCBMaW51eAo+Pj4+Pj4+Pj4+Pj4gZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4+Pj4+Pj4+Pj4+IEhvd2R5LAo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+IE9rIHRo
ZW4gaSBrZWVwIHRoYXQgYWx0ICsgdS4KPj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gVGhhdCBz
ZWVtcyB0byB3b3JrIGJldHRlciwgYnV0IGRvZXMgdGhlCj4+Pj4+Pj4+Pj4+Pj4gUGF5dHJpb24g
bGluayB5b3Ugc2VudCBpbiBhbm90aGVyIG1lc3NhZ2UKPj4+Pj4+Pj4+Pj4+PiBoYXZlIHRoZSBp
bmZvIG9uIGNoYW5naW5nIHRoZSBzaG9ydGN1dHMgYXMKPj4+Pj4+Pj4+Pj4+PiB3ZWxsPwo+Pj4+
Pj4+Pj4+Pj4gV2VsbCBpIGNoYW5nZWQgdGhlIHNob3J0Y3V0cyBpbiBtYXN0ZXIuIFNvIHRoZXJl
Cj4+Pj4+Pj4+Pj4+PiBpcyBubyBuZWVkIHRvIGNoYW5nZSB0aGVtIGJ5IG90aGVycyBhbnltb3Jl
Lgo+Pj4+Pj4+Pj4+Pj4gT3Igd2hhdCBpbmZvIHlvdSBtZWFuIGV4YWN0bHk/Cj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4gVGhlcmUgaXMgbm93IGF0IGxlYXN0IGEgYmFzaWMgZG9jdW1lbnRhdGlv
biA6KS4KPj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiBDaGVlcnMgY2hyeXMKPj4+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA5LjA0LjIwMjIgdW0gMDI6MTUgc2NocmllYiBMaW51eCBmb3IK
Pj4+Pj4+Pj4+Pj4+Pj4gYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+Pj4+Pj4+Pj4+Pj4+IDxi
bGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+PiDvu79Pa2F5IGlmIGl0J3MganVz
dCBhbHQrdSB0aGVuIHllcyBrZWVwIGl0Cj4+Pj4+Pj4+Pj4+Pj4gdGhhdCB3YXkuIFRoYXQgc2Vl
bXMgdG8gd29yayBiZXR0ZXIsIGJ1dAo+Pj4+Pj4+Pj4+Pj4+IGRvZXMgdGhlIFBheXRyaW9uIGxp
bmsgeW91IHNlbnQgaW4gYW5vdGhlcgo+Pj4+Pj4+Pj4+Pj4+IG1lc3NhZ2UgaGF2ZSB0aGUgaW5m
byBvbiBjaGFuZ2luZyB0aGUKPj4+Pj4+Pj4+Pj4+PiBzaG9ydGN1dHMgYXMgd2VsbD8KPj4+Pj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+PiBPbiBGcmksIEFwciAwOCwgMjAyMiBhdCAxMToyODozMFBN
Cj4+Pj4+Pj4+Pj4+Pj4+ICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbAo+Pj4+Pj4+Pj4+
Pj4+PiBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+PiBIb3dkeSwKPj4+Pj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pj4+Pj4gaSBpbnN0YWxsZWQgTWF0ZSB0ZXJtaW5hbCBmb3IgdGVzdGluZwo+
Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+PiAvLyBDdHJsK0QgZm9yIGRldGFpbHMgaW5zdGVl
YWQgb2YgRjEwCj4+Pj4+Pj4+Pj4+Pj4+IG9rIHRoaXMgaXMgY2hhbmdlZC4KPj4+Pj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pj4+Pj4gYWJvdXQgXlt1IGkgd2FzIHdyb25nLiBpdHMganVzdCBhbHQgKyB1
Cj4+Pj4+Pj4+Pj4+Pj4+IHNvIGEgc2luZ2xlIF4gaXMgQ3RybAo+Pj4+Pj4+Pj4+Pj4+PiB0aGUg
c2VxdWVuY2UgXlsgaXMgYWx0IGlmIGl0IGlzIGZvbGxvd2VkCj4+Pj4+Pj4+Pj4+Pj4+IGJ5IGFu
IGxldHRlci4gaWYgbm90LCBpdHMgZXNjYXBlCj4+Pj4+Pj4+Pj4+Pj4+IGN0cmwgKyBhbHQgKyB4
IHdvdWxkIGJlIF5bXkMKPj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4gYmFjayB0byBBbHQg
KyB1LCB0aGlzIHdvcmtlZCBmb3IgbWUsCj4+Pj4+Pj4+Pj4+Pj4+IHNob3VsZCBpIGNoYW5nZSB0
aGUgc2hvcnRjdXQgaW4gYW55Cj4+Pj4+Pj4+Pj4+Pj4+IHdheT8KPj4+Pj4+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+Pj4+Pj4gLy8gSSdtIHRyeWluZyB0byByZXBsYWNlIHVuemlwIGFuZCB0YXIgd2l0aCBh
dG9vbAo+Pj4+Pj4+Pj4+Pj4+PiBpbiBzZWN0aW9uIFttaW1lXSB5b3Ugc2VlIGhvdyB0byBvcGVu
IGFuIGZpbGUuCj4+Pj4+Pj4+Pj4+Pj4+IGluIHNlY3Rpb24gW2NvbXByZXNzXSBhbmQgW2RlY29t
cHJlc3NdCj4+Pj4+Pj4+Pj4+Pj4+IHlvdSBjYW4gY29uZmlndXJlIHRoZSBkZS0vY29tcHJlc3Np
bmcKPj4+Pj4+Pj4+Pj4+Pj4gcHJvY2Vzcy4KPj4+Pj4+Pj4+Pj4+Pj4gaSBjaGFuZ2VkIHRoaXMg
Zm9yIHlvdQo+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+PiBjb21wcmVzcyAodGhlIHdvcmQg
Y29tcHJlc3MgYmV2b3JlIHRoZQo+Pj4+Pj4+Pj4+Pj4+PiBlcXVhbCBpcyBqdXN0IHRoZSBsYWJs
ZSBzaG93biBpbgo+Pj4+Pj4+Pj4+Pj4+PiBjb250ZXh0IG1lbnUpOgo+Pj4+Pj4+Pj4+Pj4+PiAj
IHswfSA9IFNvdXJjZTogbGlzdCBvZiBmaWxlcyBzZXBhcmF0ZWQKPj4+Pj4+Pj4+Pj4+Pj4gYnkg
c3BhY2Ugd2l0aCBhYnNvbHV0IGZpbGVwYXRoCj4+Pj4+Pj4+Pj4+Pj4+ICMgezF9ID0gRGVzdGlu
YXRpb246wqAgYXJjaGl2ZSBuYW1lCj4+Pj4+Pj4+Pj4+Pj4+IGNvbXByZXNzPWFwYWNrIC1xIHsx
fSB7MH0KPj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4gZGVjb21w
cmVzcyAoZm9yIHppcGZpbGVzLCB5b3UgY2FuIGp1c3QKPj4+Pj4+Pj4+Pj4+Pj4gY29weSB0aGF0
IGZvciBhbnkgb3RoZXIgZm9ybWF0Cj4+Pj4+Pj4+Pj4+Pj4+IHN1cHBvcnRlZCBieSBhdG9vbCBh
bmQgY2hhbmdlIHRoZQo+Pj4+Pj4+Pj4+Pj4+PiBhcHBsaWNhdGlvbi96aXAgdG8gd2hhdGV2ZXIg
bWltZXR5cGUgeW91Cj4+Pj4+Pj4+Pj4+Pj4+IHdhbnQgdG8gdW56aXApOgo+Pj4+Pj4+Pj4+Pj4+
PiAjIHswfSA9IFNvdXJjZTogZmlsZSB0byBkZWNvbXByZXNzCj4+Pj4+Pj4+Pj4+Pj4+ICMgezF9
ID0gRGVzdGluYXRpb246IGZvbGRlciB3aXRoIGFyY2hpdmUgY29udGVudAo+Pj4+Pj4+Pj4+Pj4+
PiBhcHBsaWNhdGlvbi96aXA9YXRvb2wgLWYgLXEgLS1leHRyYWN0LXRvPXsxfSB7MH0KPj4+Pj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4gaSBqdXN0IHB1c2hlZC4KPj4+Pj4+Pj4+Pj4+Pj4KPj4+
Pj4+Pj4+Pj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4+Pj4+PiBBbSAwOC4wNC4yMiB1bSAyMjoxMSBzY2hyaWViIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIAo+Pj4+Pj4+Pj4+Pj4+Pj4gZGlzY3Vzc2lvbjoKPj4+Pj4+Pj4+Pj4+Pj4+IFN1
cmUgdGhpbmcuIEhlcmUnJ3Mgd2hhdCBJIHdoaXBwZWQgdXBwIHJlYWwgcXVpY2sKPj4+Pj4+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+PiBDdHJsK0QgZm9yIGRldGFpbHMgaW5zdGVlYWQgb2YgRjEw
Cj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4gQ3RybCthbHQreCBmb3IgZXh0cmFjdCBp
bnN0ZWFkIG9mCj4+Pj4+Pj4+Pj4+Pj4+PiB0cmwrYWx0K3UgKHdoaWNoIGRvZXNudCBzZWVtIHRv
IHdvcmsKPj4+Pj4+Pj4+Pj4+Pj4+IG9uIE1hdGU/KQo+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
Pj4+Pj4+IEknbSB0cnlpbmcgdG8gcmVwbGFjZSB1bnppcCBhbmQgdGFyCj4+Pj4+Pj4+Pj4+Pj4+
PiB3aXRoIGF0b29sLCBob3cgTk5OIGhhbmRsZXMgaXQgc2luY2UKPj4+Pj4+Pj4+Pj4+Pj4+IGl0
J3MgYSBsb3QgbmljZXIgdG8gaGF2ZSBvbmUgdG9vbAo+Pj4+Pj4+Pj4+Pj4+Pj4gdGhhdCBoYW5k
bGVzIGEgdG9uIG9mIGZvcm1hdHMKPj4+Pj4+Pj4+Pj4+Pj4+IHdpdGhvdXQKPj4+Pj4+Pj4+Pj4+
Pj4+IGhhdmluZyB0byBodW50IGRvd24gMTAgZGlmZmVycmVudCBwcm9ncmFtcwo+Pj4+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+IEFzaWRlIGZyb20gdGhhdCwgbm90IG1hZGUgYW55IG90aGVy
Cj4+Pj4+Pj4+Pj4+Pj4+PiBjaGFuZ2VzIHRvIHRoZSAuY29uZiBmaWxlIHRob3VnaC4KPj4+Pj4+
Pj4+Pj4+Pj4+IEl0J3MgYSBuZWF0IGxpdHRsZSBwcm9ncmFtLCB0aG91Z2gKPj4+Pj4+Pj4+Pj4+
Pj4+IGp1c3QgaW4gY2FzZSBJIG1pc3NlZCBhbnksIGdvCj4+Pj4+Pj4+Pj4+Pj4+PiB0aHJvdWdo
Cj4+Pj4+Pj4+Pj4+Pj4+PiBhbmQgdXNlIERyYWdvbkZNIHdpdGggYSB0ZXJtaW5hbAo+Pj4+Pj4+
Pj4+Pj4+Pj4gZW11bGF0b3IgYW5kIHNlZSB3aGF0IHlvdSBjYW4gY29tZQo+Pj4+Pj4+Pj4+Pj4+
Pj4gdXAKPj4+Pj4+Pj4+Pj4+Pj4+IHdpdGggZm9yIHNob3J0Y3V0cz8gSSdtIG9uIGEgbGFwdG9w
Cj4+Pj4+Pj4+Pj4+Pj4+PiBjdXJyZW50bHkgc28gdGhhdCBraW5kIG9mIGhpbmRlcnMKPj4+Pj4+
Pj4+Pj4+Pj4+IHdoYXQgSSBjYW4gZG8gc2hvcnRjdXRzIHdpc2UgaG93ZXZlcgo+Pj4+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+IE9uIEZyaSwgQXByIDA4LCAyMDIyIGF0IDEwOjAzOjI3UE0K
Pj4+Pj4+Pj4+Pj4+Pj4+ICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbAo+Pj4+Pj4+Pj4+
Pj4+Pj4gZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4+Pj4+Pj4+PiBIb3dkeSwKPj4+Pj4+Pj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+IFdlbGwsIEYxMjMgd2FzIG1vc3RseSBUVFkgb25seS4K
Pj4+Pj4+Pj4+Pj4+Pj4+PiBTbyB0aGUgYmluZGluZ3MgYXJlIHNldCB3aXRoCj4+Pj4+Pj4+Pj4+
Pj4+Pj4gdGhhdCBpbiBtaW5kIDopLiBUaGUgcHJvamVjdAo+Pj4+Pj4+Pj4+Pj4+Pj4+IHdhbnRl
ZCB0byBtb21pYyBHVUkgc2hvcnRjdXRzCj4+Pj4+Pj4+Pj4+Pj4+Pj4gZm9yIG1vc3QgcGFydHMu
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gVGhlIGNvbGxpZGluZyBzaG9ydGN1dHMgY2FuIGJlCj4+Pj4+Pj4+
Pj4+Pj4+Pj4gY2hhbmdlZCB2ZXJ5IGVhc3kgaW4gc2V0dGluZ3MKPj4+Pj4+Pj4+Pj4+Pj4+PiBm
aWxlLgo+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gSWYgeW91IGhhbmQgbWUgYSBs
aXN0IHdpdGgKPj4+Pj4+Pj4+Pj4+Pj4+PiBzaG9ydGN1dHMgeW91IHdhbnQgdG8gaGF2ZQo+Pj4+
Pj4+Pj4+Pj4+Pj4+IGNoYW5nZWQsIGkgY2hhbmdlIHRoZW0gZm9yIHlvdQo+Pj4+Pj4+Pj4+Pj4+
Pj4+IHJpZ2h0IGluIG1hc3Rlci4KPj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+IEFz
IEYxMjMgaXMgbm8gbW9yZSwgVFRZIGNvbXBhdC4KPj4+Pj4+Pj4+Pj4+Pj4+PiBkb2VzIG5vdCBt
YXR0ZXIgdGhhdCBtdWNoCj4+Pj4+Pj4+Pj4+Pj4+Pj4gYW55bW9yZSB0byBtZSBhbmQgd2UgY2Fu
IGltcHJvdmUKPj4+Pj4+Pj4+Pj4+Pj4+PiBpdCBpbiB0ZXJtaW5hbCBlbXVsYXRvcnMgKG1vc3QK
Pj4+Pj4+Pj4+Pj4+Pj4+PiBvZiB0aGVtIGhhdmUgbW9yZSBjYXBhYmlsaXRpZXMKPj4+Pj4+Pj4+
Pj4+Pj4+PiB0aGFuIFRUWSBpbiBhbnkgd2F5LCBmb3IgZXhhbXBsZQo+Pj4+Pj4+Pj4+Pj4+Pj4+
IGtvbnNvbGUgKCB0aGUgS0RFIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4gZW11bGF0b3IgaGFz
IHNwZWNpYWwgZXNjYXBlCj4+Pj4+Pj4+Pj4+Pj4+Pj4gc2VxdWVuY2VzIGZvciBzaGlmdCBhcnJv
dykKPj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+IENoZWVycyBjaHJ5cwo+Pj4+Pj4+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA4LjA0LjIwMjIgdW0gMjE6NTMKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4gc2NocmllYiBMaW51eCBmb3IgYmxpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gZ2Vu
ZXJhbCBkaXNjdXNzaW9uCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29t
PjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4g77u/VW5mb3J0dW5hdGVseSwg
RHJhZ29uRk0KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gZG9lc24ndCB3b3JrIHdlbGwgb3V0IG9mIHRoZQo+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBib3ggd2l0aCBhIHRlcm1pbmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGVt
dWxhdG9yLCBtb3N0bHkgZG93biB0bwo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb25mbGljdHMgd2l0aCBr
ZXlzIGxpa2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gRjEwLiBZZXMgSSBjYW4gcmVkZWZpbmUKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4gdGhlbSwgYnV0IHRoYXQncyBraW5kIG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNv
bWV0aGluZyBJbSBzbHdseSBzbG93bHkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gcG9raW5nIGF0LiBJJ20g
dW5hYmxlIHRvIGdldAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBNYXRlLXRlcm1pbmFsIHRvIHJlY29nbml6
ZSBhCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN0cmwrYWx0IHBhdGVybiBob3VnaAo+Pj4+Pj4+Pj4+Pj4+
Pj4+PiB3aGVyZWFzIGEgVFRZIHdvcmtzIGZpbmUgc28sCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHVuc3Vy
ZSBpZiB5b3UgbmVlZCB0byB0ZXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IERyYWdvbmZtIG9uIHRlcm1p
bmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGVtdWxhdG9ycyB3aXRoIGEgZGVza3RvcD8KPj4+Pj4+Pj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gS2luZCBvZiBhIHNoYW1lIHNpbmNlIEkgbGlrZQo+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBob3cgZWFzeSBEcmFnb24gaXMgdG8gdXNlIHZzCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IHNvbWV0aGluZyBsaWtlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE1DIG9yIFJhbmdlciBvciBO
Tk4gKG15Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGN1cnJlbnQgZmF2b3JpdGUgb25lIHRoYXQKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4gZG9lc24ndCBoYXZlIGtleWJvYXJkCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGNvbmZs
aWN0cykgdGhvdWdoCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBPbiBGcmks
IEFwciAwOCwgMjAyMiBhdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gMDk6MzY6MjhQTSArMDIwMCwgTGlu
dXgKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGZvciBibGluZCBnZW5lcmFsCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gSG93ZHksCj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gV2VsbCB0aGVyZSBpcyBhIGNvbnRleHQKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IG1lbnXCoCAoIGRyYWdvbkZNIGNhbGxzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBp
dCBEZXRhaWxzLCBiZWNhdXNlIGl0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbHNvIHNob3dzIGZpbGUK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHByb3BlcnRpZXMgbGlrZSBzaXplLAo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gbWltZSBhbmQgYSBsaXN0IG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhdmFpbGFibGUgYWN0aW9u
cykgd2l0aAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYWxsIGF2YWlsYWJsZSBvcHRpb25zIGJ5Cj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBwcmVzc2luZyBGMTAKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFNvbWUgYWN0aW9u
cyBhcmUgb25seQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYXZhaWxhYmxlIGZvciBnaXZlbiBtaW1lCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiB0eXBlcyBsaWtlIGNvbXByZXNzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBj
dXJyZW50IG9ubHkgZm9yIHppcCBhbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRhciwgb3RoZXJzIGNv
dWxkIGJlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhZGRhZCB2ZXJ5IGVhc3kuIEJ5Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBkZWZhdWx0IGRyYWdvbmZtIGRvZXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG5vdCB1c2Ug
YXRvb2wgYnV0IHVuemlwCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb21tYW5kIGZvciB6aXAgZmlsZXMK
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGFuZCB0YXIgb2YgY291cnNlIGZvcgo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gdGFyIHRob3NlIG5lZWQgdG8gYmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGluc3RhbGxlZCBvciBj
b25mdXJlZCB0bwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdXNlIHNvbWV0aGluZyBlbHNlLsKgIChJCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBjYW4gZ2l2ZSB5b3UgYSBtb3JlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBk
ZXRhaWxlZCBpbmZvcm1hdGlvbiBob3cKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRvIGNvbmZpZ3VyZSB0
aG9zZSBzdHVmZgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaWYgeW91IGFyZSBpbnRlcmVzdGVkCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBpbikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBE
cmFnb25GTSByZWFkcyB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEVzY2FwZSBzZXF1ZW5jZXMgZnJv
bQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gc3RkaW4gdG8gZGV0ZWN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBz
aG9ydGN1dHMgKGxpa2UgYWxtb3N0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhbnkgb3RoZXIgQ0xJCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcHBsaWNhdGlvbikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFNvbWUgaW1w
b3J0YW50IGJhc2ljCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0cmFuc2xhdGlvbiBoZWxwICh3ZQo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gc2hvdWxkIGFkZCB0aGUgc2hvcnRjdXRzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBhcyBjb21tZW50cyB0byB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNldHRpbmdzIGZpbGUgbG9s
ICkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IF4gPSBDVFJMCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBbID0gQWx0
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBVcHBlcmNhc2UgbGV0dGVyID0gc2hpZnQgKyBsZXR0ZXIKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IGxvd2VyY2FzZSBsZXR0ZXIgPSBqdXN0IHRoZSBsZXR0ZXIKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IEFuIG90aGVyIGV4YW1wbGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBeW3UgdHJh
bnNsYXRlcyBhcyBjdHJsICsgYWx0ICsgdQo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IFRoZXJlIGFyZSBzb21lIHNwZWNpYWxzIGxpa2UgYXJyb3cga2V5cyBvciBlc2NhcGUu
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBFc2NhcGUgaXMgdHJhbnNsYXRlZCBieSBeWwo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IChieSB0aGUgd2F5IG1hbnkKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+IHNob3J0Y3V0cyBhcmUgc2ltaWxhciB0bwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gb3RoZXIg
Z3JhcGhpY2FsIGZpbGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IG1hbmFnZXJzIEJVVCBzaGlmdCArCj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcnJvdyBmb3IgbWFyayBmaWxlcyBpcwo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4gZGlmZmVyZW50IGFzIGkgY291bGQgbm90Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmaWd1cmUgaG93
IHRvIHJlYWQgdGhpcwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZnJvbSBhbiBlc2NhcGUgc2VxdWVuY2Us
Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBiZWNhdXNlIHRoZXJlIGlzIG5vCj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiB1cHBlcmNhc2UgYXJyb3cgKnNtaWxlKikKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBEZXZlbG9wbWVudCB3YXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHNwb25zb3JlZCBieSBG
MTIzCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBwcm9qZWN0LiBUb2RheSBrbm93biBhcwo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4gc3Rvcm11eC4gU2FkbHkgaSBkaWQgbm90Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3aXJl
IGEgbG90IG9mCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkb2N1bWVudGF0aW9uIGJ1dCB5b3UKPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IGNhbiBhc2sgbWUgZXZlcnl0aGluZwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4geW91
IHdhbnQgdG8ga25vdyA6KS4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBD
aGVlcnMgY2hyeXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEFtIDA4
LjA0LjIwMjIgdW0KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gMTg6NDEgc2NocmllYgo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBMaW51eCBmb3IgYmxpbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gZ2VuZXJhbAo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBkaXNjdXNzaW9uCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IDxibGlu
dXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiDvu79TbyBJIGdhdmUgaXQg
YSBzaG90Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gYW5kIGl0IGZlZWxzIGxvZ2ljYWwKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBhbmQgd2VsbCBsYWlkIG91dCwKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBmb3IgdGhl
IG1vc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBwYXJ0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+Pj4+Pj4+Pj4+PiBCVXQgSSdtIHN0cnVnZ2xpbmcKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBvbiBh
IGZldyB0aGluZ3MuIEkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBoYXZlIGl0IGdvaW5nIGFuZAo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IHdhbnQgdG8gdW56aXAgYW4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcmNo
aXZlIGZyb20gd2l0aGluCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaXQuIEluIE5OTiBJIGNhbgo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IGp1c3QgZG8gdGhhdCBhbmQKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB3b3Jr
IHdpdGggYXRvb2wuIEkKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjYW4ndCBzZWVtIHRvIGZpbmQKPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aGUga2V5cyB0byBzdGFydAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGV4
dHJhY3RpbmcgYW4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhcmNoaXZlIG9yIGhvdwo+Pj4+Pj4+Pj4+
Pj4+Pj4+Pj4+IERyYWdvbmZtIGhhbmRsZXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aGF0IGF0IGFs
bCwgSXZlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gb25seSBmb3VuZCB1bmV4dHJhY3QKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiB3aXRoIF4oVSBpbiB0aGUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBjb25maWcsIHdo
aWNoIEkndmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBubyBjbHVlIHdoYXQgaXQKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiB0cmFuc2xhdGVzIHRvIGluCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGVybXMgb2YgYWN0
dWFsIGtleXMKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBhc2lkZSBmcm9tIGN0cmwgYW5kIFUuIEl0J3Mg
dGhlICggSSdtIHN0dW1wZWQgb24KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IFNlZSBteSBtYWluIGdyaXBlCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gd2l0aCBOTk4gaXMgaWYg
SSB1c2UKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBpdCBpbiBhIHRlcm1pbmFsIEkKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+PiBoYXZlIHRvIGhpdCBPLAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHczbSBhbmQgYyB0byBv
cGVuIGFuCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaHRtbCBkb2MgaW4gdzNtIGVsc2UKPj4+Pj4+Pj4+
Pj4+Pj4+Pj4+PiBpdCBsb2FkcyB1cCBpbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEZpcmVmb3guIE5v
dwo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGdyYW50ZWQgSSd2ZSBub3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiB0cmllZCBpdCBvbiBhIHB1cmUKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBUVFkgYnV0Li4ub24gYQo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IHRlcm1pbmFsLCB4ZGctb3Blbgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+
IG92ZXJyaWRlcyBicm93c2VyIGJlaW5nIHNldCBhcyBhbiBlbnZpcm9ubWVudCB2YXJpYWJsZQo+
Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+Pj4+
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+
Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4+IC0tIAo+Pj4+Pj4+Pj4+PiBHb29kIHBlb3BsZSBk
byBub3QgbmVlZCBsYXdzIHRvIHRlbGwgdGhlbSB0byBhY3QKPj4+Pj4+Pj4+Pj4gcmVzcG9uc2li
bHksIHdoaWxlIGJhZCBwZW9wbGUgd2lsbCBmaW5kIGEgd2F5IGFyb3VuZAo+Pj4+Pj4+Pj4+PiB0
aGUgbGF3cy4KPj4+Pj4+Pj4+Pj4gLSBQbGF0byAoNDI3LTM0NyBCLkMuKQo+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+
Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

