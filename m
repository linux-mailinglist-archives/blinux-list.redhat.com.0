Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D134453731
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 17:19:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637079585;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pWENLx988L3vgEwYPWsK7+1rZNMKmXDLSca4FDUJ3pQ=;
	b=QsNsbieKK5LkUppl/En27HcT+6g26k28ifRJSF78Aca0/oc2E+9Tm3MBptaQfbPKaNro5k
	8TfI6YR4yoHoFPwM81VE34yCVjSlt0Y6q/Fqic73cabESoEPO/SZjQi/TVTFUX3KuClYvo
	Oheo1W5xUtKmr0peoAcYvKdzXWahSVk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-551-GmbG34--OTeRCTPnukKV8A-1; Tue, 16 Nov 2021 11:19:39 -0500
X-MC-Unique: GmbG34--OTeRCTPnukKV8A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9B52101AFA7;
	Tue, 16 Nov 2021 16:19:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DA8A10246F4;
	Tue, 16 Nov 2021 16:19:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2BADA1819AC1;
	Tue, 16 Nov 2021 16:19:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGGJSJ0017561 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 11:19:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AC3062166B2D; Tue, 16 Nov 2021 16:19:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6E252166B26
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 16:19:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6EEA811E78
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 16:19:25 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-521-1eOfSP1NNfiKF93M-UZK2g-1;
	Tue, 16 Nov 2021 11:19:24 -0500
X-MC-Unique: 1eOfSP1NNfiKF93M-UZK2g-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1ECBBA374E
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 15:18:46 +0100 (CET)
Message-ID: <49814e98-61de-0334-9342-3b6443b63406@slint.fr>
Date: Tue, 16 Nov 2021 18:19:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any good accessible OCR for linux?
To: blinux-list@redhat.com
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
	<09164111-9929-1755-6e5a-88cf448f663b@slint.fr>
	<1ab13c2c-36e7-ba0d-7f57-b68e5f3b36d3@gmail.com>
	<CAO2sX30DevqjQHLE79JO6YBNisS6=VuG0sq9gH7Jycp48Jk8pw@mail.gmail.com>
In-Reply-To: <CAO2sX30DevqjQHLE79JO6YBNisS6=VuG0sq9gH7Jycp48Jk8pw@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AGGJSJ0017561
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgp0aGlzIGlzIGNvcnJlY3QuIEluIFNsaW50IHRoZSBjb21tYW5kIHdvdWxkIGJlIGZvciBp
bnN0YW5jZToKc2xhcHQtZ2V0IC1pICBhc3BlbGwtYXIKCkNoZWVycywKRGlkaWVyCgpMZSAxNi8x
MS8yMDIxIMOgIDE2OjUyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4gYXB0LWdldCBpbnN0YWxsIGZvbGxvd2VkIGJ5IHRoZSBuYW1lcyBvZiBvbmUgb3Ig
bW9yZSBwYWNrYWdlcyBpcyB0aGUKPiBzdGFuZGFyZCB3YXkgb2YgaW5zdGFsbGluZyBwcmUtYnVp
bHQgcGFja2FnZXMgb24gRGViaWFuIGFuZCBpdCdzCj4gZGVyaXZhdGl2ZXMuIFRob3VnaCwgZm9y
IGl0IHRvIGFjdHVhbGx5IHdvcmssIGl0IG5lZWRzIHRvIGVpdGhlciBiZQo+IHByZWZpeGVkIHdp
dGggdGhlIHN1ZG8gY29tbWFuZCBvciBiZSBydW4gaW4gYSByb290IHNoZWxsLgo+IAo+IFNsaW50
IGlzIGJhc2VkIG9uIFNsYWNrd2FyZSwgd2hpY2ggdXNlcyBhIGRpZmZlcmVudCBwYWNrYWdlIG1h
bmFnZW1lbnQKPiBzeXN0ZW0gZnJvbSBEZWJpYW4gYW5kIGl0J3MgbWFueSBkZXJpdmF0aXZlcywg
c28gSSBzdXNwZWN0IGFwdC1nZXQKPiB3b3VsZCBqdXN0IGdldCB5b3UgYSBjb21tYW5kIG5vdCBm
b3VuZCBlcnJvci4gSSdtIHJlYWxseSBvbmx5IGZhbWlsaWFyCj4gd2l0aCBEZWJpYW4gYW5kIGl0
cyBkZXJpdmF0aXZlcywgc28gSSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUgZXF1aXZhbGVudAo+IGNv
bW1hbmQgb24gZWl0aGVyIFNsaW50IG9yIHZhbmlsbGEgU2xhY2t3YXJlIHdvdWxkIGJlLiBBcyBm
b3Igd2h5IGEKPiBwYWNrYWdlIGJ1aWx0IGZvciBzbGludCB3b3VsZCBiZSBtYWtpbmcgc3VnZ2Vz
dGlvbnMgdGhhdCB3b3VsZCBvbmx5IGJlCj4gdXNlZnVsIHRvIHNvbWVvbmUgcnVubmluZyBhIERl
Ymlhbi1iYXNlZCBkaXN0cm8sIEkgc3VzcGVjdCBpdCdzIGEgY2FzZQo+IG9mIERlYmlhbiBhbmQg
aXQncyBkZXJpdmF0aXZlcyBhY2NvdW50aW5nIGZvciBhIGxhcmdlIHBvcnRpb24gb2YgTGludXgK
PiB1c2Vycyhwcm9iYWJseSBhIHBsdXJhbGl0eSwgcGVyaGFwcyBldmVuIG1ham9yaXR5IGlmIHlv
dSBncm91cCBhbGwKPiBkaXN0cm9zIGludG8gbWFqb3IgZmFtaWxpZXMpLCB0aGUgZGV2ZWxvcGVy
IHRhaWxvcmluZyB0aGUgZXJyb3IKPiBtZXNzYWdlIHRvIHRoZSBsYXJnZXN0IGdyb3VwIHBvc3Np
YmxlLCBhbmQgdGhlIHNsaW50IG1haW50YWluZXJzKHdobyBJCj4gdGhpbmsgbWlnaHQgYWN0dWFs
bHkgYmUgYSB0ZWFtIG9mIG9uZSkgbm90IGhhdmluZyB0aGUgdGltZSBvcgo+IHJlc291cmNlcyB0
byBnbyB0aHJvdWdoIGV2ZXJ5IHBhY2thZ2UgYW5kIHJlbW92ZSBlcnJvciBhbmQgaGVscAo+IG1l
c3NhZ2VzIG9ubHkgcmVsZXZhbnQgdG8gb3RoZXIgZGlzdHJvcy4KPiAKPiBPbiAxMS8xNi8yMSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+IFRoYW5rcyBhIG1pbGxpb24gRGlkaWVyLAo+Pgo+PiBXb3VsZCBpc3N1aW5n
IHRoaXMgY29tbWFuZCBpbnN0YWxsIHRoaXMgcGFja2FnZSBvbiBteSBkZXNrdG9wPyBMYXN0Cj4+
IG5pZ2h0IHdoZW4gSSB0cmllZCB0byBydW4gTGlvcyBJdCBnYXZlIG1lIGEgbG9uZyBtZXNzYWdl
IGJhc2ljYWxseQo+PiB0ZWxsaW5nIG1lIHRoYXQgSSBoYXZlIHRvIGluc3RhbGwgZGljdGlvbmFy
aWVzIGZvciBBcmFiaWMgYW5kIG90aGVyCj4+IGxhbmd1YWdlcy4KPj4KPj4gVGhlIGNvbW1hbmQg
aXQgc3VnZ2VzdGVkIHdhcyBzb21ldGhpbmcgbGlrZSB0aGlzOiAiYXB0LWdldCBpbnN0YWxsIC4u
Li4iCj4+Cj4+IENoZWVycywKPj4KPj4gSWJyYWhpbQo+Pgo+Pgo+PiBPbiAxMS8xNi8yMSA3OjE2
IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGkgSWJy
YWhpbSwKPj4+Cj4+PiB0aGlzIGNvbW1hbmQ6Cj4+PiBtb3N0IC92YXIvbG9nL3BhY2thZ2VzL3Rl
c3NlcmFjdC1kYXRhLTQuMC4wLXg4Nl82NC0yc2xpbnQKPj4+IHNob3dzIHRoYXQgSSBoYXZlIHBh
Y2thZ2VkIHRyYWluZWQgZGF0YSBmb3IgQXJhYmljIGFuZCBhbGwgTGF0aW4KPj4+IHNjcmlwdHMg
YW1vbmcgb3RoZXJzIGJ1dCBub3QgSGVicmV3IHNvIGZhci4gSWYgeW91IHdhbnQgaXQgSSBjYW4g
YWRkIGl0Lgo+Pj4KPj4+IENoZWVycywKPj4+IERpZGllcgo+Pj4KPj4+IExlIDE2LzExLzIwMjEg
w6AgMDM6NTMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoK
Pj4+PiBPa2F5IGZyaWVuZHMsCj4+Pj4KPj4+PiBhZnRlciB0aHJlZSB3ZWVrcyBvZiB1c2luZyBT
bGludCwgSSBhbSBub3cgZmluZGluZyBteXNlbGYgdXNpbmcgbGludXgKPj4+PiBtb3JlIGFuZCBt
b3JlLsKgIEkgcHJhY3RpY2FsbHkgY29uZmlndXJlZCBhbGwgb2YgbXkgZW1haWwgYm94ZXMgdG8K
Pj4+PiB3b3JrIG9uIGxpbnV4LiBJIGFsc28gYWRkZWQgbXkgZHJvcGJveCB0byBsaW51eCBhbmQg
c2V0dXAgbXkgd2hhdHNhcHAKPj4+PiB3ZWIuCj4+Pj4KPj4+PiBOb3cgSSBuZWVkIGEgZ29vZCBh
Y2Nlc3NpYmxlIG9jciBwYWNrYWdlLCBwcmVmZXJhYmx5IG11bHRpLWxpbmd1YWwKPj4+PiB3aGlj
aCBjYW4gZG8gQXJhYmljLCBIZWJyZXcgYW5kIEZyZW5jaCBiZXNpZGVzIEVuZ2xpc2guIEFtIEkg
YmVpbmcKPj4+PiB0b28gZGVtYW5kaW5nPyBEb2VzIHN1Y2ggYSBMbGludXggcGFja2FnZSBleGlz
dD8KPj4+Pgo+Pj4+IEkgaGF2ZSBhIHRlbiB5ZWFycyBvbGQgRXBzb24gc2Nhbm5lciB3aGljaCBJ
IHJlYWxseSBsaWtlLgo+Pj4+IFVuZm9ydHVuYXRlbHksIHdpbmRvd3MgdGVuIG5vIGxvbmdlciBz
dXBwb3J0cyB0aGlzIHNjYW5uZXIuIEkgaG9wZSBpdAo+Pj4+IHdvdWxkIHJ1biBmaW5lIHdpdGgg
TGludXguwqAgSSBjb3VsZCBub3QgdHJ5IGl0IGJlY2F1c2UgSSBoYXZlIG5vIE9DUgo+Pj4+IHBh
Y2thZ2UgcnVubmluZyBvbiBteSBMaW51eCBEZXNrdG9wLgo+Pj4+Cj4+Pj4gSWYgeW91IGd1eXMg
aGF2ZSBhbnkgc3VnZ2VzdGlvbnMsIHBsZWFzZSBoZWxwLgo+Pj4+Cj4+Pj4KPj4+PiBDaGVlcnMs
Cj4+Pj4KPj4+PiBJYnJhaGltCj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

