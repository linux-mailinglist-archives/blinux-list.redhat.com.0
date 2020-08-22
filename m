Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id C5C3C24E957
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 21:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598124076;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=u1Qc6Mn7sa7F24APd78qwT9NfMz7A9eUcnpTz5b0YIM=;
	b=Z/utoI1EntorCbk15Gl/vDLbruiRMWqillF2Jdl6+AsgYDka8978wOfznFKG8KIydTwfyC
	0WH50p/xc3t2Tih20D2O2X9yoEMXScZKnS2ksXfnk8tOD4Otr8UbJmkYfPHUT6kfkQAOle
	93fKuS20+koYe/kKODHBfp1gOH8MCCk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-dgiVGyH0Mx234KV5K8JEvg-1; Sat, 22 Aug 2020 15:21:12 -0400
X-MC-Unique: dgiVGyH0Mx234KV5K8JEvg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 972E410054FF;
	Sat, 22 Aug 2020 19:21:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C0D717BD52;
	Sat, 22 Aug 2020 19:21:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E3ED685CD;
	Sat, 22 Aug 2020 19:20:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07MJKeSE000661 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Aug 2020 15:20:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CFACD202279A; Sat, 22 Aug 2020 19:20:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9E742022798
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:20:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E50E1101A540
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:20:37 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-103-2MLpB2kFMKuWUY9Ti67CCQ-1; Sat, 22 Aug 2020 15:20:34 -0400
X-MC-Unique: 2MLpB2kFMKuWUY9Ti67CCQ-1
X-SimpleLogin-Client-IP: 172.17.0.4
Received: from [172.17.0.4] (unknown [172.17.0.4])
	by mx1.simplelogin.co (Postfix) with ESMTP id 9FE233F1BD
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:20:33 +0000 (UTC)
Date: Sat, 22 Aug 2020 21:20:32 +0200 (CEST)
Message-ID: <MFMbMot--3-2@tutanota.com>
In-Reply-To: <d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
Subject: Re: Accessible Distros for a beginner?
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZXZlcnlvbmUsClRoYW5rIHlvdSBzbyBtdWNoIGZvciB0aGUgZGl2ZXJzZSBhbmQgaW5mb3Jt
YXRpdmUgcmVwbGllcy4gSSByZWFsbHkgYXBwcmVjaWF0ZSBhbGwgdGhlIGlucHV0LiBJIHN0aWxs
IGhhdmUgdG8gcmVhZCB0aHJvdWdoIGEgZmV3IG9mIHRoZSBsaW5rcyB0aGF0IHNvbWUgb2YgeW91
IHNlbnQgYnV0IHRoZXJlIGFyZSBzb21lIGludGVyZXN0aW5nIHBvc3NpYmlsaXRpZXMuClNvIGZh
ciwgYmFzZWQgb24gd2hhdCBJJ20gcmVhZGluZywgSSdtIHRoaW5raW5nIG1heWJlIHRvIHN0YXJ0
IHdpdGggZWl0aGVyIFN0b3JtdXggb24gdGhlIHJhc3BiZXJyeSBQaSwgb3IgU2xpbnQgb24gYSBs
YXB0b3AuIERlYmlhbiBjb3VsZCBiZSBhIHBvc3NpYmlsaXR5LCBidXQgYXMgYSBiZWdpbm5lciBj
b21pbmcgZnJvbSBXaW5kb3dzLCBJIGRvbid0IGtub3cgaG93IHRvIGNvbXBpbGUgc291cmNlIGZp
bGVzIHlldCBsb2wuIEkgbGlrZSB0aGF0IERlYmlhbiBzZWVtcyB0byBoYXZlIGFuIGFjY2Vzc2li
aWxpdHkgaW5zdGFsbGF0aW9uLiBJdCBzZWVtcyB0byBiZSBhIHZlcnkgcG9wdWxhciBEaXN0cm8g
c28gaXQgcHJvYmFibHkgaGFzIGEgdmVyeSBhY3RpdmUgc3VwcG9ydCBjb21tdW5pdHkgYW5kIGlm
IEkgd2VyZSB0byB3YWxrIGludG8gYSBsb2NhbCBMaW51eCBvcmdhbml6YXRpb24gSSB3b3VsZCBs
aWtlbHkgZ2V0IGEgbG90IG9mIG1haW5zdHJlYW0gaGVscCB3aXRoIGl0IHdoZW5ldmVyIEkgcnVu
IGludG8gYW4gaXNzdWUuIEJ1dCBiZWluZyBhIGJlZ2lubmVyIGNvbWluZyBmcm9tIGEgV2luZG93
cyBncmFwaGljYWwgZGVza3RvcCwgSSBkb24ndCBrbm93IGlmIERlYmlhbiB3b3VsZCBiZSBhIGdv
b2QgcGxhY2UgZm9yIG1lIHRvIHN0YXJ0IGlmIEkgd291bGQgbmVlZCB0byBhbHJlYWR5IGtub3cg
aG93IHRvIGNvbXBpbGUgc291cmNlIGZpbGVzLiBJIHRvb2sgYSBsb29rIGF0IHRoZSBEZWJpYW4g
aW5zdGFsbGF0aW9uIG1hbnVhbHMgYmVmb3JlIEkgcmVhY2hlZCBvdXQgdG8gdGhpcyBsaXN0LCBh
bmQgYXMgYSBiZWdpbm5lciwgSSB3YXMgdG90YWxseSBjb25mdXNlZCBieSB0aGUgaW5zdGFsbGF0
aW9uIHByb2Nlc3MuIEl0cyBwcm9iYWJseSBzaW1wbGUsIGJ1dCB0byBtZSBpdCBzZWVtZWQgY29t
cGxpY2F0ZWQsIGJ1dCB0aGF0cyBwcm9iYWJseSBiZWNhdXNlIEknbSBzbyBuZXcgdG8gdGhpcy7C
oCBJJ20gZGVmaW5pdGVseSBvcGVuIHRvIHRoZSBwb3NzaWJpbGl0eSBpZiBJIGNvdWxkIGZpZ3Vy
ZSBvdXQgaG93IHRvIG1ha2UgYW4gaW5zdGFsbGF0aW9uIG9mIGl0LgpJIGRvbid0IGtub3cgaWYg
SSB3b3VsZCBhbHNvIG5lZWQgdG8gY29tcGlsZSBzb3VyY2UgZmlsZXMgZm9yIFNsaW50IHdoZW4g
SSdtIGdldHRpbmcgc3RhcnRlZCB3aXRoIHRoZSBPUz8gQnV0IGlmIFNsaW50IHN0YXJ0cyBzcGVh
a2luZyBvdXQgb2YgdGhlIGJveCBtb3JlIG9yIGxlc3MsIG1heWJlIEkgd291bGQgc3RhcnQgd2l0
aCB0aGF0LiBJIGxpa2UgaG93IG1hbnkgYWNjZXNzaWJpbGl0eSBmZWF0dXJlcyBTbGludCBoYXMu
IEFuZCBpZiBJIHdvdWxkbid0IG5lZWQgdG8gY29tcGlsZSBhIGxvdCBvZiBzb3VyY2UgZmlsZXMs
IG1heWJlIFNsaW50IHdvdWxkIGJlIGEgZ29vZCBjaG9pY2UuCkt5bGUsIHlvdSBtZW50aW9uZWQg
dGhlIFJhc3BiZXJyeSBQaSA0IHdpdGggU3Rvcm11eC4gSSdtIHZlcnkgaW50ZXJlc3RlZCBpbiB0
aGlzLgpNYXliZSB0aGUgUmFzcGJlcnJ5IFBpIG1pZ2h0IGJlIGEgZ29vZCBiZWdpbm5lcnMgcGxh
dGZvcm0gYmVjYXVzZSBpdHMgYW4gYWZmb3JkYWJsZSBzdHJlYW1saW5lIGNvbXB1dGluZyBzeXN0
ZW0gdGhhdCBtYXliZSBJIGNvdWxkIHN0YXJ0IHdpdGgsIHRvIHJlYWxseSBnZXQgYSBmZWVsIGZv
ciBMaW51eCBhbmQgdGhlbiBsYXRlciBpZiBJIHdhbnQgdG8sIEkgY291bGQgaW52ZXN0IGluIGEg
aGFyZHdhcmUgY29tcGF0aWJsZSBsYXB0b3AgdG8gcnVuIFNsaW50LiBPciBtYXliZSBEZWJpYW4g
b25jZSBJIHVuZGVyc3RhbmQgaG93IHRvIGNvbXBpbGUgc291cmNlIGZpbGVzLiBCdXQgbWF5YmUg
Zm9yIGEgYmVnaW5uZXIgdGhhdCByZWFsbHkgZG9lc24ndCBrbm93IHdoYXQgSSdtIGRvaW5nIGxv
bCwgbWF5YmUgU3Rvcm11eCB3b3VsZCBiZSBhIG5pY2UgbGlnaHR3ZWlnaHQgRGlzdHJvIGZvciBt
ZSB0byBnZXQgaW50cm9kdWNlZCB0byB0aGUgYmFzaWNzLiBUaGF0IHdheSwgaWYgSSBoYXZlIGEg
ZGlmZmljdWx0IHRpbWUgZmlndXJpbmcgc29tZXRoaW5nIG91dCwgb3IgZW5kIHVwIHNvbWVob3cg
Y29tcGxldGVseSBtZXNzaW5nIHVwIHRoZSBzeXN0ZW0gYXMgYSBub3ZpY2UgbG9sLCBpdHMganVz
dCBhIGxpdHR0bGUgY2FyZCB0aGF0IEkgY291bGQgcmVpbnN0YWxsIHRoZSBPUyBhbmQgZXhwbG9y
ZSB0aGluZ3MuCkkgaGF2ZSBuZXZlciB1c2VkIGEgUmFzcGJlcnJ5IFBpIGJlZm9yZSwgc28gcGxl
YXNlIGJlYXIgd2l0aCBtZSBpZiB0aGVzZSBhcmUgc29tZSB2ZXJ5IG9idmlvdXMgYmFzaWMgcXVl
c3Rpb25zLiBCdXQgd291bGQgaXQgYmUgcG9zc2libGUgdG8gY29ubmVjdCB0aGUgUGkgdG8gYSBi
cmFpbGxlIGRpc3BsYXk/CkkgYW0gZmluZSB3aXRoIHNwZWVjaCwgYnV0IGl0IHdvdWxkIGJlIG5p
Y2UgdG8gYmUgYWJsZSB0byBjb25uZWN0IGEgYnJhaWxsZSBkaXNwbGF5IGlmIEkgd2FudCB0by4K
QWxzbywgU3Rvcm11eCBzYXlzIGl0IGNvbWVzIHdpdGggTUFURSBhcyBhIGdyYXBoaWNhbCBkZXNr
dG9wIHdoaWNoIEkgdGhpbmsgaXMgZ3JlYXQsIHNlZWluZyBhcyBJIGFtIGNvbWluZyBmcm9tIHRo
ZSBXaW5kb3dzIGVudmlyb25tZW50LiBJIGFtIGp1c3Qgd29uZGVyaW5nIGlmIFN0b3JtdXggd2ls
bCBydW4gdGhpbmdzIGxpa2UgRmlyZWZveCBmb3IgYSBicm93c2VyPwpJIGFzayB0aGlzIGJlY2F1
c2UgSSBkb24ndCB3YW50IHRvIHVzZSBDaHJvbWl1bSBvciBDaHJvbWUgb3IgYW55dGhpbmcgcmVt
b3RlbHkgZ29vZ2xlIHJlbGF0ZWQuIEFsdGhvdWdoIEkga25vdyBDaHJvbWl1bSBpcyBvcGVuIHNv
dXJjZSwgSSBzdGlsbCBtdWNoIHByZWZlciBGaXJlZm94IG9yIGEgRmlyZWZveCBmb3JrLgpBbHNv
LCBjYW4gSSBydW4gTGlicmVPZmZpY2Ugb24gaXQ/CklmIGl0IGNhbid0IHJ1biBGaXJlZm94IGFu
ZCBMaWJyZU9mZmljZSB0aGVuIEkgbWlnaHQgZGVjaWRlIHRvIGdvIGZvciBTbGludCBvciBEZWJp
YW4gb24gYSBsYXB0b3AuCkJ1dCB0aGF0IHdvdWxkIGJlIG5pY2UgaWYgaXQgd291bGQgcnVuIHRo
b3NlIHByb2dyYW1zIGFzIGl0IHNlZW1zIGxpa2UgYW4gaW50ZXJlc3Rpbmcgb3B0aW9uIGZvciBh
IGJlZ2lubmVyIHdobyBpcyByZWFsbHkgdW5mYW1pbGlhciB3aXRoIExpbnV4IHNldHVwcy4KU2F0
aHlhbiwgdGhhbmtzIGZvciB0aGUgQWNjZXNzaWJsZSBDb2NvbnV0IHJlY29tbWVuZGF0aW9uLiBJ
J3ZlIHJlYWQgYWJvdXQgaXQgc29tZXdoZXJlIGJ1dCBkb24ndCBrbm93IG11Y2ggYWJvdXQgaXQu
IEknbGwgZGVmaW5pdGVseSBsb29rIGl0IHVwIGFuZCByZWFkIG1vcmUgYWJvdXQgaXQgdG8gc2Vl
IGlmIGl0cyBzb21ldGhpbmcgdGhhdCBJIG1pZ2h0IGxpa2UuClRoYW5rcyBzbyBtdWNoIHRvIGV2
ZXJ5b25lIHdobyBoYXMgcmVwbGllZCBhbmQgc2hhcmVkIHRoZWlyIHN1Z2dlc3Rpb25zIHdpdGgg
bWUuClNMCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

